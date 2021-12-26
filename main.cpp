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
uint8_t to_char(T value) {
    return value > 255 ? 255 : value < 0 ? 0 : value;
}


template<typename T>
uint8_t get_min(const T it) {
    return it;
}

template<>
uint8_t get_min(const RgbPixel it) {
//    auto &[a1, a2, a3] = it;
    return min(min(get<0>(it), get<1>(it)), get<2>(it));
}

template<typename T>
uint8_t get_max(const T it) {
    return it;
}

template<>
uint8_t get_max(const RgbPixel it) {
    auto &[a1, a2, a3] = it;
    return max(max(get<0>(it), get<1>(it)), get<2>(it));

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

template<typename T>
void set_pixel(size_t i, T pixel);

template<>
void set_pixel(size_t i, GrayPixel pixel) {
    buffer[PIC_START + i] = pixel;
}

template<>
void set_pixel(size_t i, RgbPixel pixel) {
    tie(buffer[PIC_START + 3 * i], buffer[PIC_START + 3 * i + 1], buffer[PIC_START + 3 * i + 2]) = pixel;
}

template<typename T>
T stretch(T pixel, int delta, uint8_t min);

template<>
GrayPixel stretch(GrayPixel pixel, int delta, uint8_t min) {
    return to_char((pixel - min) * 255 / delta);
}

template<>
RgbPixel stretch(RgbPixel pixel, int delta, uint8_t min) {
    return make_tuple(to_char((get<0>(pixel) - min) * 255 / delta),
                      to_char((get<1>(pixel) - min) * 255 / delta),
                      to_char((get<2>(pixel) - min) * 255 / delta)
    );
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
                private_min = min(private_min, get_min<T>(get_pixel<T>(i * width + j)));
                private_max = max(private_max, get_max<T>(get_pixel<T>(i * width + j)));
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
#pragma omp parallel for
    for (size_t i = 0; i < height; ++i) {
        for (size_t j = 0; j < width; j++) {
            set_pixel(i * width + j, stretch(get_pixel<T>(i * width + j), delta, min_diap));
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
