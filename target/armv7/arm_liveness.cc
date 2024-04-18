#include "arm.h"
std::set<Register*> ArmBinary::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmBinary::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmAddsubImm::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmAddsubImm::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmParallelAddsub::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmParallelAddsub::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmMulas::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmMulas::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmMove::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmMove::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmMovwt::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmMovwt::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmShift::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmShift::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmCmp::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmCmp::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmIt::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmIt::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmBranchLabel::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmBranchLabel::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmBranchReg::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmBranchReg::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmBranchLabelreg::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmBranchLabelreg::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmLoadStore::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmLoadStore::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmLoadStoreM::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmLoadStoreM::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> ArmPushpop::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> ArmPushpop::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVbin::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVbin::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVcmp::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVcmp::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVcvt::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVcvt::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVmov::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVmov::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVldst::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVldst::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVpushpop::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVpushpop::GetWriteReg() { return std::set<Register*>(); }

std::set<Register*> VFPVstm::GetReadReg() { return std::set<Register*>(); }
std::set<Register*> VFPVstm::GetWriteReg() { return std::set<Register*>(); }
