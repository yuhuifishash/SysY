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
    %r4 = alloca [10 x i32]
    br label %L1
L1:
    br label %L19
L3:
    %r109 = phi i32 [0,%L19],[%r14,%L4]
    %r14 = add i32 %r109,1
    %r16 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r109
    store i32 %r14, ptr %r16
    br label %L4
L4:
    %r22 = icmp slt i32 %r14,10
    br i1 %r22, label %L3, label %L5
L5:
    %r36 = call i32 @getint()
    br label %L10
L7:
    %r111 = phi i32 [0,%L20],[%r77,%L14]
    %r106 = phi i32 [0,%L20],[%r105,%L14]
    %r103 = phi i32 [0,%L20],[%r102,%L14]
    %r67 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r111
    %r68 = load i32, ptr %r67
    %r70 = icmp eq i32 %r68,%r36
    br i1 %r70, label %L12, label %L13
L8:
    %r80 = icmp slt i32 %r77,10
    br i1 %r80, label %L14, label %L9
L9:
    %r107 = phi i32 [%r105,%L8],[%r105,%L14]
    %r104 = phi i32 [%r102,%L8],[%r102,%L14]
    %r93 = icmp eq i32 %r107,1
    br i1 %r93, label %L16, label %L17
L10:
    br label %L20
L12:
    br label %L13
L13:
    %r105 = phi i32 [%r106,%L7],[1,%L12]
    %r102 = phi i32 [%r103,%L7],[%r111,%L12]
    %r77 = add i32 %r111,1
    br label %L8
L14:
    %r85 = icmp eq i32 %r105,0
    br i1 %r85, label %L7, label %L9
L16:
    call void @putint(i32 %r104)
    br label %L18
L17:
    call void @putint(i32 0)
    br label %L18
L18:
    call void @putch(i32 10)
    ret i32 0
L19:
    br label %L3
L20:
    br label %L7
}
