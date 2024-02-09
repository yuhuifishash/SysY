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
@a0 = global [3x i32] zeroinitializer
@b0 = global [4 x i32] [i32 0,i32 1,i32 0,i32 0]
@c0 = global [7 x i32] [i32 2,i32 8,i32 6,i32 3,i32 9,i32 1,i32 5]
@d0 = global [11x i32] zeroinitializer
@e0 = global [2 x i32] [i32 22,i32 33]
@f0 = global [6x i32] zeroinitializer
@g0 = global [9 x i32] [i32 85,i32 0,i32 1,i32 29,i32 0,i32 0,i32 0,i32 0,i32 0]
@a = global [5x [3x i32]] zeroinitializer
@b = global [5x [3x i32]] zeroinitializer
@c = global [5 x [3 x i32]] [[3 x i32] [i32 1,i32 2,i32 3],[3 x i32] [i32 4,i32 5,i32 6],[3 x i32] [i32 7,i32 8,i32 9],[3 x i32] [i32 10,i32 11,i32 12],[3 x i32] [i32 13,i32 14,i32 15]]
@d = global [5 x [3 x i32]] [[3 x i32] [i32 1,i32 2,i32 3],[3 x i32] [i32 4,i32 5,i32 6],[3 x i32] [i32 7,i32 8,i32 9],[3 x i32] [i32 10,i32 11,i32 12],[3 x i32] [i32 13,i32 14,i32 15]]
@e = global [5 x [3 x i32]] [[3 x i32] [i32 1,i32 2,i32 3],[3 x i32] [i32 4,i32 5,i32 6],[3 x i32] [i32 7,i32 8,i32 9],[3 x i32] [i32 10,i32 11,i32 12],[3 x i32] [i32 13,i32 14,i32 15]]
@f = global [5x i32] zeroinitializer
@g = global [5 x [3 x i32]] [[3 x i32] [i32 1,i32 2,i32 3],[3 x i32] [i32 4,i32 0,i32 0],[3 x i32] [i32 7,i32 0,i32 0],[3 x i32] [i32 10,i32 11,i32 12],[3 x i32] [i32 0,i32 0,i32 0]]
@h = global [3x i32] zeroinitializer
@i = global [2 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 1,i32 2,i32 3,i32 4],[4 x i32] [i32 5,i32 0,i32 0,i32 0],[4 x i32] [i32 0,i32 0,i32 0,i32 0]],[3 x [4 x i32]] [[4 x i32] [i32 0,i32 0,i32 0,i32 0],[4 x i32] [i32 0,i32 0,i32 0,i32 0],[4 x i32] [i32 0,i32 0,i32 0,i32 0]]]
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = add i32 5,0
    ret i32 %r0
}
