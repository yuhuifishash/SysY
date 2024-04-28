#include "../../include/cfg.h"

// this pass will fully unroll the loop with constant iterations and small size(one BB and Insts <= 10)
// the iterations must <= 1024

// this pass will unroll other for-loop without constant iterations
/*
for(int i = l; i < u; i+=1){ BB }

for(int i = l; i + 4 < u; i+=4){ BB } BB,BB,......(<= 4times)
*/