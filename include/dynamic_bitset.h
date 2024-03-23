#ifndef DynamicBitset_H
#define DynamicBitset_H
class DynamicBitset{
private:
    int bit_width;
    int bit_array_length;
    long long* bits;
public:
    DynamicBitset(int bit_width):bit_width(bit_width),bit_array_length((bit_width+63)/64),bits(new long long[bit_array_length]){
        for(int i=0;i<bit_array_length;i++){
            bits[i] = 0;
        }
    }
    ~DynamicBitset(){delete[]bits;}

    int count();

    // bool& operator[](int);// assert(this->bit_width > int)
    void setbit(int,bool);
    bool getbit(int);

    DynamicBitset operator&(DynamicBitset);// assert(this->bit_width == other.bit_width)
    DynamicBitset operator|(DynamicBitset);
    DynamicBitset operator^(DynamicBitset);
    DynamicBitset operator-(DynamicBitset);

    // DynamicBitset operator&=(DynamicBitset);
    // DynamicBitset operator|=(DynamicBitset);
    // DynamicBitset operator^=(DynamicBitset);
    // DynamicBitset operator-=(DynamicBitset);

    DynamicBitset operator=(DynamicBitset);// Deep Copy
    
    bool operator==(DynamicBitset);// Deep Compare
    bool operator!=(DynamicBitset);// return !(*this == other)
};
#endif