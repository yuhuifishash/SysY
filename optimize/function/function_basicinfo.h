#ifndef FUNCTION_BASICINFO_H
#define FUNCTION_BASICINFO_H

class FunctionBasicInfo
{
public:
    bool is_pure_function = false;
    bool is_recursive = false;
    int inst_number = 0;
    int bb_number = 0;
};

#endif