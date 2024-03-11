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
@N = global i32 zeroinitializer
@newline = global i32 zeroinitializer
define i32 @factor(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r27 = phi i32 [1,%L1],[%r23,%L6]
    %r26 = phi i32 [0,%L1],[%r25,%L6]
    %r11 = add i32 %r0,1
    %r12 = icmp slt i32 %r27,%r11
    br i1 %r12, label %L3, label %L4
L3:  ;
    %r15 = srem i32 %r0,%r27
    %r17 = icmp eq i32 %r15,0
    br i1 %r17, label %L5, label %L6
L4:  ;
    ret i32 %r26
L5:  ;
    %r20 = add i32 %r26,%r27
    br label %L6
L6:  ;  latch0
    %r25 = phi i32 [%r26,%L3],[%r20,%L5]
    %r23 = add i32 %r27,1
    br label %L2
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 4, ptr @N
    store i32 10, ptr @newline
    %r10 = call i32 @factor(i32 1478)
    ret i32 %r10
}
