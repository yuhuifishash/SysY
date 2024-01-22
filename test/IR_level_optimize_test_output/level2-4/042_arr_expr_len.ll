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
@N = global i32 -1
@arr = global [6 x i32] [i32 1,i32 2,i32 33,i32 4,i32 5,i32 6]
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L6
L3:
    %r25 = phi i32 [%r16,%L4],[0,%L6]
    %r23 = phi i32 [%r13,%L4],[0,%L6]
    %r11 = getelementptr [6 x i32], ptr @arr, i32 0, i32 %r25
    %r12 = load i32, ptr %r11
    %r13 = add i32 %r23,%r12
    %r16 = add i32 %r25,1
    br label %L4
L4:
    %r19 = icmp slt i32 %r16,6
    br i1 %r19, label %L3, label %L5
L5:
    ret i32 %r13
L6:
    br label %L3
}
