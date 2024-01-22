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
define void @move(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    call void @putint(i32 %r0)
    call void @putch(i32 32)
    call void @putint(i32 %r1)
    call void @putch(i32 44)
    call void @putch(i32 32)
    ret void
}
define void @hanoi(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r0,1
    br i1 %r10, label %L2, label %L3
L2:
    br label %L5
L3:
    %r17 = sub i32 %r0,1
    call void @hanoi(i32 %r17,i32 %r1,i32 %r3,i32 %r2)
    br label %L8
L4:
    ret void
L5:
    br label %L7
L6:
    br label %L4
L7:
    call void @putint(i32 %r1)
    call void @putch(i32 32)
    call void @putint(i32 %r3)
    call void @putch(i32 44)
    call void @putch(i32 32)
    br label %L6
L8:
    br label %L10
L9:
    call void @hanoi(i32 %r17,i32 %r2,i32 %r1,i32 %r3)
    br label %L4
L10:
    call void @putint(i32 %r1)
    call void @putch(i32 32)
    call void @putint(i32 %r3)
    call void @putch(i32 44)
    call void @putch(i32 32)
    br label %L9
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r4 = icmp sgt i32 %r1,0
    br i1 %r4, label %L6, label %L5
L3:
    %r21 = phi i32 [%r1,%L6],[%r14,%L4]
    %r7 = call i32 @getint()
    call void @hanoi(i32 %r7,i32 1,i32 2,i32 3)
    call void @putch(i32 10)
    %r14 = sub i32 %r21,1
    br label %L4
L4:
    %r17 = icmp sgt i32 %r14,0
    br i1 %r17, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
