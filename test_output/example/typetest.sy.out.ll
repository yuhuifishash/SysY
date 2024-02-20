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
define i32 @f(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r7 = sub i32 %r1,1
    %r8 = call i32 @f(i32 %r0,i32 %r7)
    ret i32 %r8
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    br label %L2
L2:  ;
    %r30 = phi i32 [%r1,%L1],[%r30,%L5],[%r30,%L8],[%r15,%L13]
    %r29 = phi i32 [%r3,%L1],[%r29,%L5],[%r29,%L8],[%r28,%L13]
    %r6 = icmp sle i32 %r30,100
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r9 = icmp slt i32 %r30,3
    br i1 %r9, label %L5, label %L6
L4:  ;
    %r27 = add i32 %r30,%r29
    ret i32 %r27
L5:  ;
    br label %L2
L6:  ;
    %r12 = icmp sgt i32 %r30,100
    br i1 %r12, label %L8, label %L9
L8:  ;
    br label %L2
L9:  ;
    %r15 = add i32 %r30,1
    br label %L11
L11:  ;
    %r28 = phi i32 [%r29,%L9],[%r21,%L14],[%r21,%L15]
    %r18 = icmp sle i32 %r28,300
    br i1 %r18, label %L12, label %L13
L12:  ;
    %r21 = add i32 %r28,1
    %r24 = icmp slt i32 %r21,340
    br i1 %r24, label %L14, label %L15
L13:  ;
    br label %L2
L14:  ;
    br label %L11
L15:  ;
    br label %L11
}
