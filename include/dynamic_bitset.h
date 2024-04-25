#ifndef DYNAMIC_BITSET_H
#define DYNAMIC_BITSET_H
#include <assert.h>
class DynamicBitset {
private:
    int bit_width;
    int bit_array_length;
    long *bits;

public:
    DynamicBitset() : bit_width(0), bit_array_length(0), bits(nullptr) {}
    void remake(int bit_width) {
        this->bit_width = bit_width;
        if (bits != nullptr) {
            delete[] bits;
        }
        bit_array_length = (bit_width + sizeof(long) - 1) / sizeof(long);
        bits = new long[bit_array_length];
        for (int i = 0; i < bit_array_length; i++) {
            bits[i] = 0;
        }
    }
    DynamicBitset(int bit_width)
        : bit_width(bit_width), bit_array_length((bit_width + sizeof(long) - 1) / sizeof(long)),
          bits(new long[bit_array_length]) {
        for (int i = 0; i < bit_array_length; i++) {
            bits[i] = 0;
        }
    }
    ~DynamicBitset() {
        if (bits != nullptr)
            delete[] bits;
    }

    int count();

    // bool& operator[](int);// assert(this->bit_width > int)
    void setbit(int, bool);
    bool getbit(int);

    DynamicBitset operator&(DynamicBitset);    // assert(this->bit_width == other.bit_width)
    DynamicBitset operator|(DynamicBitset);
    DynamicBitset operator^(DynamicBitset);
    DynamicBitset operator-(DynamicBitset);

    // DynamicBitset operator&=(DynamicBitset);
    // DynamicBitset operator|=(DynamicBitset);
    // DynamicBitset operator^=(DynamicBitset);
    // DynamicBitset operator-=(DynamicBitset);

    DynamicBitset operator=(DynamicBitset);    // Deep Copy

    bool operator==(DynamicBitset);    // Deep Compare
    bool operator!=(DynamicBitset);    // return !(*this == other)

    DynamicBitset(const DynamicBitset &);
};
#endif