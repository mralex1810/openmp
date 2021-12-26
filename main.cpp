#include <iostream>
#include <omp.h>
#include <cassert>
#include <fstream>
#include <vector>
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
size_t length;

using GrayPixel = uint8_t;
using RgbPixel = tuple<uint8_t, uint8_t, uint8_t>;

template<typename T>
int8_t to_char(T value) {
    return value > 255 ? 255 : value < 0 ? 0 : value;
}


uint8_t get_min(size_t i) {
    if (TYPE == Type::Gray)
        return buffer[PIC_START + i];
    return min(min((uint8_t) buffer[PIC_START + i], (uint8_t) buffer[PIC_START + 3 * i + 1]), (uint8_t) buffer[PIC_START + 3 * i + 2]);
}

uint8_t get_max(size_t i) {
    if (TYPE == Type::Gray)
        return buffer[PIC_START + i];
    return max(max((uint8_t) buffer[PIC_START + i], (uint8_t) buffer[PIC_START + 3 * i + 1]), (uint8_t) buffer[PIC_START + 3 * i + 2]);
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
        buffer[PIC_START + i] = to_char(((uint8_t)buffer[PIC_START + i] - min) * delta);
    else {
        buffer[PIC_START + 3 * i]     = to_char(    ((uint8_t)buffer[PIC_START + 3 * i] - min) * delta);
        buffer[PIC_START + 3 * i + 1] = to_char(((uint8_t)buffer[PIC_START + 3 * i + 1] - min) * delta);
        buffer[PIC_START + 3 * i + 2] = to_char(((uint8_t)buffer[PIC_START + 3 * i + 2] - min) * delta);

    }
}



template<typename T>
void do_all() {
    uint8_t min_diap = 255;
    uint8_t max_diap = 0;
#pragma omp parallel
    {
        uint8_t private_min = 255;
        uint8_t private_max = 0;
#pragma omp for nowait
        for (size_t i = 0; i < height; ++i) {
            for (size_t j = 0; j < width; j++) {
                private_min = min(private_min, get_min(i * width + j));
                private_max = max(private_max, get_max(i * width + j));
            }
        }
#pragma omp critical
        {
            min_diap = min(min_diap, private_min);
            max_diap = max(max_diap, private_max);
        }
    }
    int delta = max_diap - min_diap;
    if (max_diap - min_diap == 0) {
        return;
    }
    float c = 255.0 / delta;
#pragma omp parallel for nowait
    for (size_t i = 0; i < height; ++i) {
        for (size_t j = 0; j < width; j++) {
            stretch(i * width + j, c, min_diap);
        }
    }
}

int main(int argc, char *argv[]) {
    assert(argc == 5);
    threads = stoi(string(argv[1]));
#ifdef _OPENMP
    omp_set_num_threads(threads);
#endif

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
    while (buffer[it] != ' ') {
        width_s += buffer[it++];
    }
    while (buffer[it] != '\n') {
        height_s += buffer[it++];
    }
    cout << width_s << " " << height_s << endl;
    width = stoi(width_s);
    height = stoi(height_s);
    PIC_START = it + 5;
    if (buffer[1] == 53) {
        TYPE = Type::Gray;
        do_all<GrayPixel>();
    } else if (buffer[1] == 54) {
        TYPE = Type::RGB;
        do_all<RgbPixel>();
    } else {
        exit(-1);
    }
    // TODO ignore coef

    cout << endl << (clock() - time) * 1000 / CLOCKS_PER_SEC << endl;

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
