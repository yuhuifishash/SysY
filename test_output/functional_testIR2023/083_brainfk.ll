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
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [65536x i32] zeroinitializer
@program = global [32768x i32] zeroinitializer
@ptr = global i32 0
define void @read_program()
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = call i32 @getint()
    br label %L2
L2:  ;
    %r16 = phi i32 [0,%L1],[%r12,%L3]
    %r6 = icmp slt i32 %r16,%r3
    br i1 %r6, label %L3, label %L4
L3:  ;latch
    %r8 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r16
    %r9 = call i32 @getch()
    store i32 %r9, ptr %r8
    %r12 = add i32 %r16,1
    br label %L2
L4:  ;
    %r14 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r16
    store i32 0, ptr %r14
    ret void
}
define void @interpret(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r106 = phi i32 [0,%L1],[%r105,%L7]
    %r90 = phi i32 [0,%L1],[%r89,%L7]
    %r8 = getelementptr i32, ptr %r0, i32 %r90
    %r9 = load i32, ptr %r8
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r13 = load i32, ptr %r8
    %r16 = icmp eq i32 %r13,62
    br i1 %r16, label %L5, label %L6
L4:  ;
    ret void
L5:  ;
    %r17 = load i32, ptr @ptr
    %r19 = add i32 %r17,1
    store i32 %r19, ptr @ptr
    br label %L7
L6:  ;
    %r22 = icmp eq i32 %r13,60
    br i1 %r22, label %L8, label %L9
L7:  ;latch
    %r105 = phi i32 [%r106,%L5],[%r104,%L10]
    %r98 = phi i32 [%r90,%L5],[%r97,%L10]
    %r89 = add i32 %r98,1
    br label %L2
L8:  ;
    %r23 = load i32, ptr @ptr
    %r25 = sub i32 %r23,1
    store i32 %r25, ptr @ptr
    br label %L10
L9:  ;
    %r28 = icmp eq i32 %r13,43
    br i1 %r28, label %L11, label %L12
L10:  ;
    %r104 = phi i32 [%r106,%L8],[%r103,%L13]
    %r97 = phi i32 [%r90,%L8],[%r96,%L13]
    br label %L7
L11:  ;
    %r29 = load i32, ptr @ptr
    %r30 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r29
    %r33 = load i32, ptr %r30
    %r35 = add i32 %r33,1
    store i32 %r35, ptr %r30
    br label %L13
L12:  ;
    %r38 = icmp eq i32 %r13,45
    br i1 %r38, label %L14, label %L15
L13:  ;
    %r103 = phi i32 [%r106,%L11],[%r102,%L16]
    %r96 = phi i32 [%r90,%L11],[%r95,%L16]
    br label %L10
L14:  ;
    %r39 = load i32, ptr @ptr
    %r40 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r39
    %r43 = load i32, ptr %r40
    %r45 = sub i32 %r43,1
    store i32 %r45, ptr %r40
    br label %L16
L15:  ;
    %r48 = icmp eq i32 %r13,46
    br i1 %r48, label %L17, label %L18
L16:  ;
    %r102 = phi i32 [%r106,%L14],[%r101,%L19]
    %r95 = phi i32 [%r90,%L14],[%r94,%L19]
    br label %L13
L17:  ;
    %r49 = load i32, ptr @ptr
    %r50 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    call void @putch(i32 %r51)
    br label %L19
L18:  ;
    %r54 = icmp eq i32 %r13,44
    br i1 %r54, label %L20, label %L21
L19:  ;
    %r101 = phi i32 [%r106,%L17],[%r100,%L22]
    %r94 = phi i32 [%r90,%L17],[%r93,%L22]
    br label %L16
L20:  ;
    %r55 = load i32, ptr @ptr
    %r56 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r55
    %r57 = call i32 @getch()
    store i32 %r57, ptr %r56
    br label %L22
L21:  ;
    %r60 = icmp eq i32 %r13,93
    br i1 %r60, label %L25, label %L24
L22:  ;
    %r100 = phi i32 [%r106,%L20],[%r99,%L24]
    %r93 = phi i32 [%r90,%L20],[%r92,%L24]
    br label %L19
L23:  ;
    br label %L26
L24:  ;
    %r99 = phi i32 [%r106,%L21],[%r106,%L25],[%r108,%L28]
    %r92 = phi i32 [%r90,%L21],[%r90,%L25],[%r91,%L28]
    br label %L22
L25:  ;
    %r61 = load i32, ptr @ptr
    %r62 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = icmp ne i32 %r63,0
    br i1 %r64, label %L23, label %L24
L26:  ;
    %r108 = phi i32 [1,%L23],[%r107,%L31]
    %r91 = phi i32 [%r90,%L23],[%r71,%L31]
    %r68 = icmp sgt i32 %r108,0
    br i1 %r68, label %L27, label %L28
L27:  ;
    %r71 = sub i32 %r91,1
    %r73 = getelementptr i32, ptr %r0, i32 %r71
    %r74 = load i32, ptr %r73
    %r77 = icmp eq i32 %r74,91
    br i1 %r77, label %L29, label %L30
L28:  ;
    br label %L24
L29:  ;
    %r80 = sub i32 %r108,1
    br label %L31
L30:  ;
    %r83 = icmp eq i32 %r74,93
    br i1 %r83, label %L32, label %L33
L31:  ;latch
    %r107 = phi i32 [%r80,%L29],[%r109,%L33]
    br label %L26
L32:  ;
    %r86 = add i32 %r108,1
    br label %L33
L33:  ;
    %r109 = phi i32 [%r108,%L30],[%r86,%L32]
    br label %L31
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    call void @read_program()
    %r0 = getelementptr [32768 x i32], ptr @program, i32 0
    call void @interpret(ptr %r0)
    ret i32 0
}
