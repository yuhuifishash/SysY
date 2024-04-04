#ifndef FUNCTION_BASICINFO_H
#define FUNCTION_BASICINFO_H

class FunctionBasicInfo
{
public:
    //this indicates that the function call will not use or change 
    //global var or memory that will be used by other function
    bool is_independent = false;

    //this indicates that the function call will not change 
    //global var or memory that will be used by other function
    bool is_no_side_effect = false; 


    bool is_direct_recursive = false;
    int inst_number = 0;
    int bb_number = 0;
};

#endif