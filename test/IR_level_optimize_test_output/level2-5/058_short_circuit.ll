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
@g = global i32 0
define i32 @func(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = load i32, ptr @g
    %r4 = add i32 %r2,%r0
    store i32 %r4, ptr @g
    %r5 = load i32, ptr @g
    call void @putint(i32 %r5)
    ret i32 %r5
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r2 = call i32 @getint()
    %r5 = icmp sgt i32 %r2,10
    br i1 %r5, label %L5, label %L3
L2:
    br label %L4
L3:
    br label %L4
L4:
    %r16 = call i32 @getint()
    %r19 = icmp sgt i32 %r16,11
    br i1 %r19, label %L10, label %L8
L5:
    br label %L27
L7:
    br label %L9
L8:
    br label %L9
L9:
    %r30 = call i32 @getint()
    %r33 = icmp sle i32 %r30,99
    br i1 %r33, label %L12, label %L15
L10:
    br label %L30
L12:
    br label %L14
L13:
    br label %L14
L14:
    %r44 = call i32 @getint()
    %r47 = icmp sle i32 %r44,100
    br i1 %r47, label %L17, label %L20
L15:
    br label %L33
L17:
    br label %L19
L18:
    br label %L19
L19:
    br label %L36
L20:
    br label %L39
L22:
    br label %L24
L23:
    br label %L24
L24:
    ret i32 0
L25:
    br label %L42
L27:
    br label %L29
L28:
    %r10 = icmp ne i32 %r79,0
    br i1 %r10, label %L2, label %L3
L29:
    %r77 = load i32, ptr @g
    %r78 = add i32 %r77,%r2
    store i32 %r78, ptr @g
    %r79 = load i32, ptr @g
    call void @putint(i32 %r79)
    br label %L28
L30:
    br label %L32
L31:
    %r24 = icmp ne i32 %r82,0
    br i1 %r24, label %L7, label %L8
L32:
    %r80 = load i32, ptr @g
    %r81 = add i32 %r80,%r16
    store i32 %r81, ptr @g
    %r82 = load i32, ptr @g
    call void @putint(i32 %r82)
    br label %L31
L33:
    br label %L35
L34:
    %r38 = icmp ne i32 %r85,0
    br i1 %r38, label %L12, label %L13
L35:
    %r83 = load i32, ptr @g
    %r84 = add i32 %r83,%r30
    store i32 %r84, ptr @g
    %r85 = load i32, ptr @g
    call void @putint(i32 %r85)
    br label %L34
L36:
    br label %L38
L37:
    %r60 = icmp eq i32 %r88,0
    br i1 %r60, label %L25, label %L23
L38:
    %r86 = load i32, ptr @g
    %r87 = add i32 %r86,99
    store i32 %r87, ptr @g
    %r88 = load i32, ptr @g
    call void @putint(i32 %r88)
    br label %L37
L39:
    br label %L41
L40:
    %r52 = icmp ne i32 %r91,0
    br i1 %r52, label %L17, label %L18
L41:
    %r89 = load i32, ptr @g
    %r90 = add i32 %r89,%r44
    store i32 %r90, ptr @g
    %r91 = load i32, ptr @g
    call void @putint(i32 %r91)
    br label %L40
L42:
    br label %L44
L43:
    %r65 = icmp ne i32 %r94,0
    br i1 %r65, label %L22, label %L23
L44:
    %r92 = load i32, ptr @g
    %r93 = add i32 %r92,100
    store i32 %r93, ptr @g
    %r94 = load i32, ptr @g
    call void @putint(i32 %r94)
    br label %L43
}
