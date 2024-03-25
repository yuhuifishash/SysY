#include "cfg_iterators.h"
void MachineCFG::SeqScanIterator::open(){
	current = mcfg->block_map.begin();
}
MachineCFG::MachineCFGNode* MachineCFG::SeqScanIterator::next(){
	return (current++)->second;
}
bool MachineCFG::SeqScanIterator::hasNext(){
	return current != mcfg->block_map.end();
}
void MachineCFG::SeqScanIterator::rewind(){
	close();
	open();
}
void MachineCFG::SeqScanIterator::close(){
	current = mcfg->block_map.end();
}
