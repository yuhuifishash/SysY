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
    br label %L20
L3:
    %r116 = phi i32 [%r14,%L4],[0,%L20]
    %r14 = add i32 %r116,1
    %r16 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r116
    store i32 %r14, ptr %r16
    br label %L4
L4:
    %r22 = icmp slt i32 %r14,10
    br i1 %r22, label %L3, label %L5
L5:
    %r36 = call i32 @getint()
    %r47 = getelementptr [10 x i32], ptr %r4, i32 0, i32 4
    %r48 = load i32, ptr %r47
    %r50 = icmp ne i32 %r48,%r36
    br i1 %r50, label %L10, label %L9
L7:
    %r113 = phi i32 [9,%L21],[%r112,%L15]
    %r110 = phi i32 [0,%L21],[%r109,%L15]
    %r63 = add i32 %r113,%r110
    %r65 = sdiv i32 %r63,2
    %r68 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r65
    %r69 = load i32, ptr %r68
    %r70 = icmp slt i32 %r36,%r69
    br i1 %r70, label %L12, label %L13
L8:
    %r80 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r65
    %r81 = load i32, ptr %r80
    %r83 = icmp ne i32 %r81,%r36
    br i1 %r83, label %L15, label %L9
L9:
    %r108 = phi i32 [4,%L5],[%r65,%L8],[%r65,%L15]
    %r96 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r108
    %r97 = load i32, ptr %r96
    %r98 = icmp eq i32 %r36,%r97
    br i1 %r98, label %L17, label %L18
L10:
    br label %L21
L12:
    %r75 = sub i32 %r65,1
    br label %L14
L13:
    %r78 = add i32 %r65,1
    br label %L14
L14:
    %r112 = phi i32 [%r75,%L12],[%r113,%L13]
    %r109 = phi i32 [%r110,%L12],[%r78,%L13]
    br label %L8
L15:
    %r88 = icmp slt i32 %r109,%r112
    br i1 %r88, label %L7, label %L9
L17:
    call void @putint(i32 %r36)
    br label %L19
L18:
    call void @putint(i32 0)
    br label %L19
L19:
    call void @putch(i32 10)
    ret i32 0
L20:
    br label %L3
L21:
    br label %L7
}
