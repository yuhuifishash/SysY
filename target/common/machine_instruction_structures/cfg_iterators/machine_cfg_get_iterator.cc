#include "../machine_cfg.h"
#include "cfg_iterators.h"
MachineCFG::DFSIterator* MachineCFG::getDFSIterator(){
	return new DFSIterator(this);
}
MachineCFG::BFSIterator* MachineCFG::getBFSIterator(){
	return new BFSIterator(this);
}
MachineCFG::SeqScanIterator* MachineCFG::getSeqScanIterator(){
	return new SeqScanIterator(this);
}
MachineCFG::ReverseIterator* MachineCFG::getReverseIterator(Iterator* child){
	return new ReverseIterator(child);
}
