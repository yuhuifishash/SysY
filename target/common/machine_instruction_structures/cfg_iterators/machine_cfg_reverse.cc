#include "cfg_iterators.h"
void MachineCFG::ReverseIterator::open(){
	child->open();
    cache.clear();
    while(child->hasNext()){
        cache.push_back(child->next());
    }
    current_pos = cache.rbegin();
}
MachineCFG::MachineCFGNode* MachineCFG::ReverseIterator::next(){
	return *(current_pos++);
}
bool MachineCFG::ReverseIterator::hasNext(){
	return current_pos != cache.rend();
}
void MachineCFG::ReverseIterator::rewind(){
	close();
    open();
}
void MachineCFG::ReverseIterator::close(){
	child->close();
    cache.clear();
    current_pos = cache.rend();
}
