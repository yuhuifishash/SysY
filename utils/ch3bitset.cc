#include "ch3bitset.h"
int CH3Bitset::count(){
	return 0;
}

void CH3Bitset::setbit(int,bool){
	
}

bool CH3Bitset::getbit(int){
    return false;
}

CH3Bitset CH3Bitset::operator&(CH3Bitset){
	return CH3Bitset(1);
}
// assert(this->bit_width == other.bit_width)
CH3Bitset CH3Bitset::operator|(CH3Bitset){
	return CH3Bitset(1);
}

CH3Bitset CH3Bitset::operator^(CH3Bitset){
	return CH3Bitset(1);
}

CH3Bitset CH3Bitset::operator-(CH3Bitset){
	return CH3Bitset(1);
}

CH3Bitset CH3Bitset::operator=(CH3Bitset){// Deep Copy
	return CH3Bitset(1);
}

bool CH3Bitset::operator==(CH3Bitset){// Deep Compare
	return 0;
}

bool CH3Bitset::operator!=(CH3Bitset){// return !(*this == other)
	return 0;
}

