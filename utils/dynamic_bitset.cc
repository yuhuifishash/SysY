#include "../include/dynamic_bitset.h"
#include <assert.h>
#include <iostream>

int DynamicBitset::count() {
    assert(bit_width);
    int result = 0;
    for (int i = 0; i < bit_array_length; i++) {
        result += __builtin_popcount(bits[i]);
    }
    return result;
}

void DynamicBitset::setbit(int pos, bool value) {
    assert(pos < bit_width);
    int array_idx = pos / sizeof(long);
    int bit_idx = pos % sizeof(long);
    if (value) {
        bits[array_idx] |= (1 << bit_idx);
    } else {
        bits[array_idx] &= ~(1 << bit_idx);
    }
}

bool DynamicBitset::getbit(int pos) {
    assert(pos < bit_width);
    int array_idx = pos / sizeof(long);
    int bit_idx = pos % sizeof(long);
    return (bits[array_idx] >> bit_idx) & 1;
}

DynamicBitset DynamicBitset::operator&(DynamicBitset other) {
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    DynamicBitset result(bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        result.bits[i] = this->bits[i] & other.bits[i];
    }
    return result;
}

DynamicBitset DynamicBitset::operator|(DynamicBitset other) {
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    DynamicBitset result(bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        result.bits[i] = this->bits[i] | other.bits[i];
    }
    return result;
}

DynamicBitset DynamicBitset::operator^(DynamicBitset other) {
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    DynamicBitset result(bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        result.bits[i] = this->bits[i] ^ other.bits[i];
    }
    return result;
}

DynamicBitset DynamicBitset::operator-(DynamicBitset other) {
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    DynamicBitset result(bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        result.bits[i] = this->bits[i] & (this->bits[i] ^ other.bits[i]);
    }
    return result;
}

DynamicBitset DynamicBitset::operator=(DynamicBitset other) {    // Deep Copy
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    DynamicBitset result(bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        result.bits[i] = this->bits[i] = other.bits[i];
    }
    return result;
}

bool DynamicBitset::operator==(DynamicBitset other) {    // Deep Compare
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        if (this->bits[i] != other.bits[i]) {
            return false;
        }
    }
    return true;
}

bool DynamicBitset::operator!=(DynamicBitset other) {    // return !(*this == other)
    assert(bit_width && other.bit_width);
    assert(this->bit_width == other.bit_width);
    for (int i = 0; i < bit_array_length; i++) {
        if (this->bits[i] != other.bits[i]) {
            return true;
        }
    }
    return false;
}

DynamicBitset::DynamicBitset(const DynamicBitset &other) {
    this->bit_width = other.bit_width;
    this->bit_array_length = other.bit_array_length;
    this->bits = new long[bit_array_length];
    for (int i = 0; i < bit_array_length; i++) {
        this->bits[i] = other.bits[i];
    }
}