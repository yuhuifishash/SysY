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
L0:  ;
    %r4 = alloca [10 x i32]
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r80 = phi i32 [0,%L1],[%r14,%L3]
    %r9 = icmp slt i32 %r80,10
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r11 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r80
    %r14 = add i32 %r80,1
    store i32 %r14, ptr %r11
    br label %L2
L4:  ;
    %r29 = call i32 @getint()
    br label %L5
L5:  ;
    %r78 = phi i32 [9,%L4],[%r77,%L11]
    %r76 = phi i32 [0,%L4],[%r75,%L11]
    %r74 = phi i32 [4,%L4],[%r51,%L11]
    %r40 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r74
    %r41 = load i32, ptr %r40
    %r43 = icmp ne i32 %r41,%r29
    br i1 %r43, label %L8, label %L7
L6:  ;
    %r49 = add i32 %r78,%r76
    %r51 = sdiv i32 %r49,2
    %r54 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r51
    %r55 = load i32, ptr %r54
    %r56 = icmp slt i32 %r29,%r55
    br i1 %r56, label %L9, label %L10
L7:  ;
    %r66 = load i32, ptr %r40
    %r67 = icmp eq i32 %r29,%r66
    br i1 %r67, label %L12, label %L13
L8:  ;
    %r46 = icmp slt i32 %r76,%r78
    br i1 %r46, label %L6, label %L7
L9:  ;
    %r59 = sub i32 %r51,1
    br label %L11
L10:  ;
    %r62 = add i32 %r51,1
    br label %L11
L11:  ;
    %r77 = phi i32 [%r59,%L9],[%r78,%L10]
    %r75 = phi i32 [%r76,%L9],[%r62,%L10]
    br label %L5
L12:  ;
    call void @putint(i32 %r29)
    br label %L14
L13:  ;
    call void @putint(i32 0)
    br label %L14
L14:  ;
    call void @putch(i32 10)
    ret i32 0
}
