#ifndef CH3BITSET_H
#define CH3BITSET_H
class CH3Bitset{
private:
    int bit_width;
    int bit_array_length;
    long long* bits;
public:
    CH3Bitset(int bit_width):bit_width(bit_width),bit_array_length((bit_width+63)/64),bits(new long long[bit_array_length]){
        for(int i=0;i<bit_array_length;i++){
            bits[i] = 0;
        }
    }
    ~CH3Bitset(){delete[]bits;}

    int count();

    // bool& operator[](int);// assert(this->bit_width > int)
    void setbit(int,bool);
    bool getbit(int);

    CH3Bitset operator&(CH3Bitset);// assert(this->bit_width == other.bit_width)
    CH3Bitset operator|(CH3Bitset);
    CH3Bitset operator^(CH3Bitset);
    CH3Bitset operator-(CH3Bitset);

    // CH3Bitset operator&=(CH3Bitset);
    // CH3Bitset operator|=(CH3Bitset);
    // CH3Bitset operator^=(CH3Bitset);
    // CH3Bitset operator-=(CH3Bitset);

    CH3Bitset operator=(CH3Bitset);// Deep Copy
    
    bool operator==(CH3Bitset);// Deep Compare
    bool operator!=(CH3Bitset);// return !(*this == other)
};
#endif