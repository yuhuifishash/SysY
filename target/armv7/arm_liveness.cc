#include "arm.h"
std::vector<Register *> ArmBinary::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmBinary::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmAddsubImm::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmAddsubImm::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmParallelAddsub::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmParallelAddsub::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmMulas::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmMulas::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmMove::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmMove::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmMovwt::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmMovwt::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmShift::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmShift::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmCmp::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmCmp::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmIt::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmIt::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmBranchLabel::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmBranchLabel::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmBranchReg::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmBranchReg::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmBranchLabelreg::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmBranchLabelreg::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmLoadStore::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmLoadStore::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmLoadStoreM::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmLoadStoreM::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> ArmPushpop::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> ArmPushpop::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVbin::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVbin::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVcmp::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVcmp::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVcvt::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVcvt::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVmov::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVmov::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVldst::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVldst::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVpushpop::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVpushpop::GetWriteReg() { return std::vector<Register *>(); }

std::vector<Register *> VFPVstm::GetReadReg() { return std::vector<Register *>(); }
std::vector<Register *> VFPVstm::GetWriteReg() { return std::vector<Register *>(); }
