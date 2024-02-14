declare i32 @getint()
declare i32 @getch()
declare float @getfloat()
declare i32 @getarray(ptr)
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putfloat(float)
declare void @putarray(i32,ptr)
declare void @putfarray(i32,ptr)
declare void @putf(ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@s = global i32 0
define i32 @get_ans_se(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r1,%r2
    br i1 %r10, label %L2, label %L3
L2:
    br label %L3
L3:
    %r22 = phi i32 [0,%L1],[1,%L2]
    %r14 = mul i32 %r0,2
    %r17 = add i32 %r14,%r22
    %r18 = load i32, ptr @s
    %r20 = add i32 %r18,%r17
    store i32 %r20, ptr @s
    ret i32 %r17
}
define i32 @get_ans(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r1,%r2
    br i1 %r10, label %L2, label %L3
L2:
    br label %L3
L3:
    %r19 = phi i32 [0,%L1],[1,%L2]
    %r14 = mul i32 %r0,2
    %r17 = add i32 %r14,%r19
    ret i32 %r17
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r26 = call i32 @get_ans(i32 0,i32 -2147483648,i32 -2147483648)
    %r32 = call i32 @get_ans(i32 %r26,i32 -2147483647,i32 -2147483647)
    %r39 = call i32 @get_ans(i32 %r32,i32 -2147483648,i32 -2147483648)
    %r45 = call i32 @get_ans(i32 %r39,i32 -2147483648,i32 2147483647)
    %r53 = call i32 @get_ans(i32 %r45,i32 -1073741824,i32 -1073741823)
    %r60 = call i32 @get_ans(i32 %r53,i32 -2147483648,i32 -2147483648)
    %r66 = call i32 @get_ans(i32 %r60,i32 -2147483648,i32 2147483647)
    %r70 = call i32 @get_ans(i32 0,i32 -2147483647,i32 2147483647)
    %r74 = call i32 @get_ans(i32 %r70,i32 -2147483647,i32 2147483646)
    %r78 = call i32 @get_ans(i32 %r74,i32 2147483647,i32 2147483646)
    %r86 = call i32 @get_ans(i32 %r78,i32 -1073741824,i32 -1073741824)
    %r90 = call i32 @get_ans_se(i32 0,i32 -2147483648,i32 -2147483648)
    %r96 = call i32 @get_ans_se(i32 %r90,i32 -2147483647,i32 -2147483647)
    %r103 = call i32 @get_ans_se(i32 %r96,i32 -2147483648,i32 -2147483648)
    %r109 = call i32 @get_ans_se(i32 %r103,i32 -2147483648,i32 2147483647)
    %r117 = call i32 @get_ans_se(i32 %r109,i32 -1073741824,i32 -1073741823)
    %r124 = call i32 @get_ans_se(i32 %r117,i32 -2147483648,i32 -2147483648)
    %r130 = call i32 @get_ans_se(i32 %r124,i32 -2147483648,i32 2147483647)
    %r134 = call i32 @get_ans_se(i32 0,i32 -2147483647,i32 2147483647)
    %r138 = call i32 @get_ans_se(i32 %r134,i32 -2147483647,i32 2147483646)
    %r142 = call i32 @get_ans_se(i32 %r138,i32 2147483647,i32 2147483646)
    %r150 = call i32 @get_ans_se(i32 %r142,i32 -1073741824,i32 -1073741824)
    %r153 = add i32 %r66,%r86
    %r155 = add i32 %r153,%r130
    %r157 = add i32 %r155,%r150
    ret i32 %r157
}
