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
define i32 @main()
{
L0:
    br label %L1
L1:
    %r6 = call i32 @getint()
    %r7 = call i32 @getint()
    br label %L2
L2:
    br label %L4
L3:
    call void @putint(i32 %r20)
    ret i32 0
L4:
    %r13 = icmp sgt i32 %r7,0
    br i1 %r13, label %L8, label %L7
L5:
    %r15 = phi i32 [%r14,%L6],[%r7,%L8]
    %r16 = phi i32 [%r15,%L6],[%r6,%L8]
    %r14 = srem i32 %r16,%r15
    br label %L6
L6:
    %r18 = icmp sgt i32 %r14,0
    br i1 %r18, label %L5, label %L7
L7:
    %r20 = phi i32 [%r6,%L4],[%r15,%L6]
    br label %L3
L8:
    br label %L5
}
define i32 @fun(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r8 = icmp sgt i32 %r1,0
    br i1 %r8, label %L6, label %L5
L3:
    %r26 = phi i32 [%r13,%L4],[%r1,%L6]
    %r24 = phi i32 [%r26,%L4],[%r0,%L6]
    %r13 = srem i32 %r24,%r26
    br label %L4
L4:
    %r18 = icmp sgt i32 %r13,0
    br i1 %r18, label %L3, label %L5
L5:
    %r25 = phi i32 [%r0,%L1],[%r26,%L4]
    ret i32 %r25
L6:
    br label %L3
}
