#include <iostream>
#include <omp.h>
#include <cassert>
#include <fstream>
#include <vector>
#include <cmath>
#include <tuple>

using namespace std;

enum class Type {
    Gray, RGB
};
Type TYPE;
int PIC_START;
char *buffer;
int threads;
float miss_coef;
int width;
int height;
size_t square;
int length;

using GrayPixel = uint8_t;
using RgbPixel = tuple<uint8_t, uint8_t, uint8_t>;

template<typename T>
int8_t to_char(T value) {
    return value > 255 ? 255 : value < 0 ? 0 : value;
}


uint8_t get_min(size_t i) {
    if (TYPE == Type::Gray)
        return buffer[PIC_START + i];
    return min(min((uint8_t) buffer[PIC_START + 3 * i], (uint8_t) buffer[PIC_START + 3 * i + 1]),
               (uint8_t) buffer[PIC_START + 3 * i + 2]);
}

uint8_t get_max(size_t i) {
    if (TYPE == Type::Gray)
        return buffer[PIC_START + i];
    return max(max((uint8_t) buffer[PIC_START + 3 * i], (uint8_t) buffer[PIC_START + 3 * i + 1]),
               (uint8_t) buffer[PIC_START + 3 * i + 2]);
}

template<typename T>
T get_pixel(size_t i);

template<>
GrayPixel get_pixel(size_t i) {
    return buffer[PIC_START + i];
}

template<>
RgbPixel get_pixel(size_t i) {
    return make_tuple((uint8_t) buffer[PIC_START + 3 * i],
                      (uint8_t) buffer[PIC_START + 3 * i + 1],
                      (uint8_t) buffer[PIC_START + 3 * i + 2]);
}

void stretch(size_t i, float delta, uint8_t min) {
    if (TYPE == Type::Gray)
        buffer[PIC_START + i] = to_char(((uint8_t) buffer[PIC_START + i] - min) * delta);
    else {
        buffer[PIC_START + 3 * i] = to_char(((uint8_t) buffer[PIC_START + 3 * i] - min) * delta);
        buffer[PIC_START + 3 * i + 1] = to_char(((uint8_t) buffer[PIC_START + 3 * i + 1] - min) * delta);
        buffer[PIC_START + 3 * i + 2] = to_char(((uint8_t) buffer[PIC_START + 3 * i + 2] - min) * delta);

    }
}


template<typename T>
void do_all(clock_t time) {

    size_t count_min[256];
    size_t count_max[256];
    for (int i = 0; i < 256; i++) {
        count_min[i] = 0;
        count_max[i] = 0;
    }
//    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;
#pragma omp parallel num_threads(threads) default(none) shared(count_min, count_max, buffer) firstprivate(height, width)
    {
        size_t private_count_min[256];
        size_t private_count_max[256];
        for (int i = 0; i < 256; i++) {
            private_count_min[i] = 0;
            private_count_max[i] = 0;
        }
#pragma omp for
        for (size_t i = 0; i < height; ++i) {
            for (int j = 0; j < width; ++j) {
                private_count_min[get_min(i * width + j)]++;
                private_count_max[get_max(i * width + j)]++;
            }
        }
#pragma omp critical
        {
            for (int i = 0; i < 256; i++) {
                count_min[i] += private_count_min[i];
                count_max[i] += private_count_max[i];
            }
        };
    }
    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;

    size_t need_k = width * height * miss_coef;
    uint8_t min = 0;
    uint8_t max = 255;
#pragma omp parallel sections num_threads(threads) lastprivate(min, max) firstprivate(need_k, count_max, count_min) default(none)
    {
#pragma omp section
        {
            size_t k = 0;
            for (int i = 0; i < 256; i++) {
                k += count_min[i];
                if (k > need_k) {
                    min = i;
                    break;
                }
            }
        }
#pragma omp section
        {
            size_t k = 0;
            for (int i = 255; i >= 0; i--) {
                k += count_max[i];
                if (k > need_k) {
                    max = i;
                    break;
                }
            }
        }
    }
    const uint8_t min_diap = min;
    const uint8_t max_diap = max;

//    cout << need_k << ' ' << (int) min_diap << " " << (int) max_diap << endl;
    const int delta = max_diap - min_diap;
    if (delta == 0) {
        return;
    }
//    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;

    const float c = 255.0f / delta;
#pragma omp parallel for num_threads(threads) firstprivate(width, c, min_diap, height) shared(buffer) default(none)
    for (size_t i = 0; i < height; ++i) {
        for (size_t j = 0; j < width; j++) {
            stretch(width * i + j, c, min_diap);
        }
    }
//    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;
}

int main(int argc, char *argv[]) {
    assert(argc == 5);
    threads = stoi(string(argv[1]));
    assert(threads != 0);
    omp_set_num_threads(threads);
//#ifdef _OPENMP
//#endif

    miss_coef = stof(string(argv[4]));
    ifstream in(argv[2], ifstream::binary);
    in.seekg(0, in.end);
    length = in.tellg();
    in.seekg(0, in.beg);
    buffer = new char[length];
    in.read(buffer, length);
    assert(buffer[0] == 'P');

    clock_t time;
    time = clock();

    int it = 3;
    string width_s;
    string height_s;

    if (buffer[3] == '#') {
        while (buffer[it] != '\n') {
            it++;
        }
    }
    while (buffer[it] > '9' || buffer[it] < '0') {
        it++;
    }

    while (buffer[it] != ' ') {
        width_s += buffer[it++];
    }
    while (buffer[it] != '\n') {
        height_s += buffer[it++];
    }
//    cout << width_s << " " << height_s << endl;
    width = stoi(width_s);
    height = stoi(height_s);
    square = width * height;
    PIC_START = it + 5;
    if (buffer[1] == 53) {
        TYPE = Type::Gray;
        do_all<GrayPixel>(time);
    } else if (buffer[1] == 54) {
        TYPE = Type::RGB;
        size_t count_min[256];
        size_t count_max[256];
        size_t private_count_min[256];
        size_t private_count_max[256];
        for (int i = 0; i < 256; i++) {
            count_min[i] = 0;
            count_max[i] = 0;
            private_count_min[i] = 0;
            private_count_max[i] = 0;
        }
//    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;
#pragma omp parallel num_threads(threads) default(none) shared(count_min, count_max, buffer) firstprivate(PIC_START, square, private_count_max, private_count_min)
        {
#pragma omp for nowait
            for (int i = 0; i < square; i++) {
                uint8_t a = buffer[PIC_START + 3 * i];
                uint8_t b = buffer[PIC_START + 3 * i + 1];
                uint8_t c = buffer[PIC_START + 3 * i + 2];
                private_count_min[min(min(a, b), c)]++;
                private_count_max[max(max(a, b), c)]++;
            }

#pragma omp critical
                for (int i = 0; i < 256; i++) {
                    count_min[i] += private_count_min[i];
                    count_max[i] += private_count_max[i];
                }
        };
        cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;

        size_t need_k = width * height * miss_coef;
        uint8_t min;
        uint8_t max;
#pragma omp parallel sections num_threads(threads) shared(min, max) firstprivate(need_k, count_max, count_min) default(none)
        {
#pragma omp section
            {
                size_t k = 0;
                for (int i = 0; i < 256; i++) {
                    if (k <= need_k && k + count_min[i] > need_k) {
                        break;
                    } else {
                        k += count_min[i];
                        min = i;

                    }
                }
            }
#pragma omp section
            {
                size_t k = 0;
                for (int i = 255; i >= 0; i--) {
                    if (k <= need_k && k + count_max[i] > need_k) {
                        break;
                    } else {
                        k += count_max[i];
                        max = i;

                    }
                }
            }
        }
        const uint8_t min_diap = min;
        const uint8_t max_diap = max;

//        cout << need_k << ' ' << (int) min_diap << " " << (int) max_diap << endl;
        const int delta = max_diap - min_diap;
        if (delta == 0) {
            goto label;
        }
//    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;

        const float c = 255.0f / delta;
#pragma omp parallel for num_threads(threads) firstprivate(width, c, min_diap, height, PIC_START, square) shared(buffer) default(none)
        for (size_t i = 0; i < square; ++i) {
            size_t p = PIC_START + 3 * i;
                buffer[p] = to_char(((uint8_t) buffer[p] - min_diap) * c);
                buffer[p + 1] = to_char(((uint8_t) buffer[p + 1] - min_diap) * c);
                buffer[p + 2] = to_char(((uint8_t) buffer[p + 2] - min_diap) * c);
        }
//    cout << ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC << endl;
    } else {
        exit(-1);
    }
    // TODO ignore coef

    label:
    printf("Time (%i thread(s)): %g ms\n", threads, ((double) clock() - time) * 1000.0 / CLOCKS_PER_SEC);
    exit(0);
    ofstream out(argv[3]);
    out << 'P' << (TYPE == Type::Gray ? '5' : '6') << '\n';
    out << width_s << ' ' << height_s << '\n';
    out << "255\n";
    for (int i = 0; i < height * width; ++i) {
        if (Type::Gray == TYPE) {
            out << get_pixel<GrayPixel>(i);
        } else {
            RgbPixel pixel = get_pixel<RgbPixel>(i);
            out << get<0>(pixel) << get<1>(pixel) << get<2>(pixel);
        }
    }


    return 0;
}
