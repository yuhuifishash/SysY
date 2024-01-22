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
@k = global i32 zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 3389, ptr @k
    %r1 = load i32, ptr @k
    %r3 = icmp slt i32 %r1,10000
    br i1 %r3, label %L2, label %L3
L2:
    %r6 = load i32, ptr @k
    %r8 = add i32 %r6,1
    store i32 %r8, ptr @k
    br label %L10
L3:
    %r45 = load i32, ptr @k
    ret i32 %r45
L5:
    %r47 = phi i32 [112,%L10],[%r49,%L6]
    %r18 = sub i32 %r47,88
    %r21 = icmp slt i32 %r18,1000
    br i1 %r21, label %L8, label %L9
L6:
    %r41 = icmp sgt i32 %r49,10
    br i1 %r41, label %L5, label %L7
L7:
    call void @putint(i32 %r49)
    br label %L3
L8:
    %r31 = sub i32 %r18,10
    %r38 = add i32 %r31,22
    br label %L9
L9:
    %r49 = phi i32 [%r18,%L5],[%r38,%L8]
    br label %L6
L10:
    br label %L5
}
