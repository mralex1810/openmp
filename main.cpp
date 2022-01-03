#include <iostream>
#include <omp.h>
#include <fstream>
#include <vector>
#include <tuple>

#define assert_message(expr, message) if (!(expr)) {cerr << message << endl; exit(0);}

using namespace std;

enum class Type {
    Gray, RGB
};
Type TYPE;
int PIC_START;
uint8_t *buffer;
int threads;
float miss_coef;
int width;
int height;
size_t square;
int length;

uint8_t to_char(float value) {
    return value > 255.0f ? 255.0f : (value < 0.0f ? 0.0f : value);
}

int main(int argc, char *argv[]) {
    assert_message(argc == 5, "Please, use arguments:  <input file> <output file> <coefficent>");
    threads = stoi(string(argv[1]));
#ifdef _OPENMP
    if (threads != 0)
        omp_set_num_threads(threads);
#endif
    miss_coef = stof(string(argv[4]));
    try {
        ifstream in;
        in.exceptions(ifstream::failbit);
        in.open(argv[2], ifstream::binary);
        in.seekg(0, in.end);
        length = in.tellg();
        in.seekg(0, in.beg);
        buffer = new uint8_t [length];
        in.read((char*) buffer, length);
        in.close();
    } catch (const ifstream::failure& e) {
        cerr << "Exception opening/reading file: " << e.what() <<  endl;
    }

    assert_message(buffer[0] == 'P', "First symbol must be \"P\"");

    double time;
#ifdef _OPENMP
    time = omp_get_wtime();
#endif
#ifndef _OPENMP
    time = clock();
#endif
    int it = 3;
    string width_s;
    string height_s;
    while (buffer[it] != ' ') {
        width_s += buffer[it++];
    }
    while (buffer[it] != '\n') {
        height_s += buffer[it++];
    }
    width = stoi(width_s);
    height = stoi(height_s);
    square = width * height;
    assert_message(square != 0, "It's void picture");
    PIC_START = it + 5;
    if (buffer[1] == 53) {
        TYPE = Type::Gray;
        size_t count[256];
        size_t private_count[256];
        for (int i = 0; i < 256; i++) {
            count[i] = 0;
            private_count[i] = 0;
        }
        long long i;
#pragma omp parallel default(none) private(i) shared(count, buffer) firstprivate(PIC_START, square, private_count)
        {
#pragma omp for nowait schedule(static)
            for (i = 0; i < square; i++) {
                private_count[buffer[PIC_START + i]]++;
            }

#pragma omp critical
            for (int j = 0; j < 256; j++) {
                count[j] += private_count[j];
            }
        };

        size_t need_k = square * miss_coef + 1;
        uint8_t min;
        uint8_t max;
#pragma omp parallel sections shared(min, max) firstprivate(need_k, count) default(none)
            {
#pragma omp section
                {
                    size_t k = 0;
                    for (int j = 0; j < 256; j++) {
                        if (k <= need_k && k + count[j] > need_k) {
                            break;
                        } else {
                            k += count[j];
                            min = j;

                        }
                    }
                }
#pragma omp section
                {
                    size_t k = 0;
                    for (int j = 255; j >= 0; j--) {
                        if (k <= need_k && k + count[j] > need_k) {
                            break;
                        } else {
                            k += count[j];
                            max = j;
                        }
                    }
                }
            }
        const uint8_t min_diap = min;
        const uint8_t max_diap = max;

        const int delta = max_diap - min_diap;
        if (delta == 0) {
            goto label;
        }

        const float c = 255.0f / delta;
#pragma omp parallel for firstprivate(width, c, min_diap, height, PIC_START, square) shared(buffer) private(i) default(none) schedule(static)
        for (i = 0; i < square; ++i) {
            size_t p = PIC_START + i;
            buffer[p] = to_char((buffer[p] - min_diap) * c);
        }
    } else if (buffer[1] == 54) {
        TYPE = Type::RGB;
        size_t count_r[256];
        size_t count_g[256];
        size_t count_b[256];
        size_t private_count_r[256];
        size_t private_count_g[256];
        size_t private_count_b[256];
        for (int i = 0; i < 256; i++) {
            count_r[i] = 0;
            count_g[i] = 0;
            count_b[i] = 0;
            private_count_r[i] = 0;
            private_count_g[i] = 0;
            private_count_b[i] = 0;
        }
        long long i;
#pragma omp parallel default(none) shared(count_r, count_g, count_b, buffer) firstprivate(PIC_START, square, private_count_r, private_count_g, private_count_b) private(i)
        {
#pragma omp for nowait schedule(static)
            for (i = 0; i < square; i++) {
                size_t p = PIC_START + 3 * i;
                private_count_r[buffer[p++]]++;
                private_count_g[buffer[p++]]++;
                private_count_b[buffer[p]]++;
            }

#pragma omp critical
                for (int j = 0; j < 256; j++) {
                    count_r[j] += private_count_r[j];
                    count_g[j] += private_count_g[j];
                    count_b[j] += private_count_b[j];
                }
        }
        size_t need_k = square * miss_coef + 1;
        uint8_t min_r, min_g, min_b, max_r, max_g, max_b;
#pragma omp parallel sections shared(min_r, min_g, min_b, max_r, max_g,  max_b) firstprivate(need_k, count_r, count_g, count_b) default(none)
        {
            //red
#pragma omp section
            {
                size_t k = 0;
                for (int j = 0; j < 256; j++) {
                    if (k <= need_k && k + count_r[j] > need_k) {
                        break;
                    } else {
                        k += count_r[j];
                        min_r = j;
                    }
                }
            }
#pragma omp section
            {
                size_t k = 0;
                for (int j = 255; j >= 0; j--) {
                    if (k <= need_k && k + count_r[j] > need_k) {
                        break;
                    } else {
                        k += count_r[j];
                        max_r = j;
                    }
                }
            }
            //green
#pragma omp section
            {
                size_t k = 0;
                for (int j = 0; j < 256; j++) {
                    if (k <= need_k && k + count_g[j] > need_k) {
                        break;
                    } else {
                        k += count_g[j];
                        min_g = j;

                    }
                }
            }
#pragma omp section
            {
                size_t k = 0;
                for (int j = 255; j >= 0; j--) {
                    if (k <= need_k && k + count_g[j] > need_k) {
                        break;
                    } else {
                        k += count_g[j];
                        max_g = j;
                    }
                }
            }
            //blue
#pragma omp section
            {
                size_t k = 0;
                for (int j = 0; j < 256; j++) {
                    if (k <= need_k && k + count_b[j] > need_k) {
                        break;
                    } else {
                        k += count_b[j];
                        min_b = j;

                    }
                }
            }
#pragma omp section
            {
                size_t k = 0;
                for (int j = 255; j >= 0; j--) {
                    if (k <= need_k && k + count_b[j] > need_k) {
                        break;
                    } else {
                        k += count_b[j];
                        max_b = j;
                    }
                }
            }
        }
        const uint8_t min_diap = min(min_r, min(min_g, min_b));
        const uint8_t max_diap = max(max_r, max(max_g, max_b));
        const int delta = max_diap - min_diap;
        if (delta == 0) {
            goto label;
        }

        const float c = 255.0f / (float) delta;
#pragma omp parallel for firstprivate(width, c, min_diap, height, PIC_START, square) shared(buffer) private(i) default(none) schedule(static)
        for (i = 0; i < square; ++i) {
            size_t p = PIC_START + 3 * i;
            buffer[p] = to_char((buffer[p] - min_diap) * c);
            buffer[p + 1] = to_char((buffer[p + 1] - min_diap) * c);
            buffer[p + 2] = to_char((buffer[p + 2] - min_diap) * c);
        }
    } else {
        cerr << "It isn't \"P5\" or \"P6\"" << endl;
        exit(-1);
    }
    // TODO ignore coef


    label:
#ifndef TEST
    #ifdef _OPENMP
        printf("Time (%i thread(s)): %g ms\n", threads, (omp_get_wtime() - time) * 1000);
    #endif
    #ifndef _OPENMP
        printf("Time (%i thread(s)): %g ms\n", threads, (clock() - time) * 1000 / CLOCKS_PER_SEC);
    #endif
#endif
#ifdef TEST
    #ifdef _OPENMP
        printf("%g", (omp_get_wtime() - time) * 1000);
    #endif
    #ifndef _OPENMP
        printf("%g", (clock() - time) * 1000 / CLOCKS_PER_SEC);
    #endif
#endif
#ifndef TEST
        try {
            ofstream out(argv[3], ofstream::binary);
            out.exceptions(ofstream::failbit);
            out << 'P' << (TYPE == Type::Gray ? '5' : '6') << '\n';
            out << width_s << ' ' << height_s << '\n';
            out << "255\n";
            for (int i = 0; i < height * width; ++i) {
                if (Type::Gray == TYPE) {
                    out << buffer[PIC_START + i];
                } else {
                    out << buffer[PIC_START + 3 * i] << buffer[PIC_START + 3 * i + 1] << buffer[PIC_START + 3 * i + 2];
                }
            }
            out.close();
        } catch (const ofstream::failure& e) {
            cerr << "Exception for output file: " << e.what() <<  endl;
        }
#endif


    return 0;
}
