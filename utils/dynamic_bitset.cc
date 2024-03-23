#include "dynamic_bitset.h"

int DynamicBitset::count(){
	return 0;
}

void DynamicBitset::setbit(int,bool){
	
}

bool DynamicBitset::getbit(int){
    return false;
}

DynamicBitset DynamicBitset::operator&(DynamicBitset){
	return DynamicBitset(1);
}
// assert(this->bit_width == other.bit_width)
DynamicBitset DynamicBitset::operator|(DynamicBitset){
	return DynamicBitset(1);
}

DynamicBitset DynamicBitset::operator^(DynamicBitset){
	return DynamicBitset(1);
}

DynamicBitset DynamicBitset::operator-(DynamicBitset){
	return DynamicBitset(1);
}

DynamicBitset DynamicBitset::operator=(DynamicBitset){// Deep Copy
	return DynamicBitset(1);
}

bool DynamicBitset::operator==(DynamicBitset){// Deep Compare
	return 0;
}

bool DynamicBitset::operator!=(DynamicBitset){// return !(*this == other)
	return 0;
}

