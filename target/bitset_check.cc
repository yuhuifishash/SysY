#include "dynamic_bitset.h"
#include <iostream>
#include <assert.h>
int BitsetCheck(){
    DynamicBitset set1(12);
    DynamicBitset set2(12);
    assert(set1.count() == 0);
    assert(set2.count() == 0);
    set1.setbit(4,true);
    assert(set1.getbit(4) == true);
    set2.setbit(11,true);
    std::cout<<":\n";
    assert(set2.getbit(11) == true);
    assert(set1.count() == 1);
    assert(set1.count() == set2.count());

    assert(set1 != set2);
    assert(!(set1 == set2));

    set2.setbit(4,true);
    DynamicBitset setOr = set1 | set2;
    DynamicBitset setXor = set1 ^ set2;
    DynamicBitset setAnd = set1 & set2;
    DynamicBitset setSub = set1 - set2;

    assert(setOr.getbit(4) == true);
    assert(setOr.getbit(11) == true);
    assert(setXor.getbit(4) == false);
    assert(setXor.getbit(11) == true);
    assert(setAnd.getbit(4) == true);
    assert(setAnd.getbit(11) == false);
    assert(setSub.getbit(4) == false);
    assert(setSub.getbit(11) == false);
    std::cout<<"::\n";

    assert(setOr.count() == 2);
    assert(setXor.count() == 1);
    assert(setAnd.count() == 1);
    assert(setSub.count() == 0);

    assert(setOr == set2);

    //test copy constructor
    // DynamicBitset set3(set1);
    return 0;
}