#ifndef PHYSICAL_REGISTER_INFO
#define PHYSICAL_REGISTER_INFO
// An abstract class here

// Giving virtual methods, providing Register types, numbers (? maybe it's not necessary) (? Spill descriptor index is relevant to arch)
// Every virtual registers has already been set its accessible_physical_registers in InsSelect stage, regarding type, width, forced allocation.

// Define an abstract conflict rule in this class for physical space for normal cases also the following special case
// union{s0,s1,struct{d0}}

// Not sure how conflict information, or interface about conflict will be organized and used by now

// Maybe the filename should be physical_conflict_rule.h (? not sure)

#endif