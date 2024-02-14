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
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @g
    %r4 = add i32 %r2,%r0
    store i32 %r4, ptr @g
    %r5 = load i32, ptr @g
    call void @putint(i32 %r5)
    %r6 = load i32, ptr @g
    ret i32 %r6
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = call i32 @getint()
    %r5 = icmp sgt i32 %r2,10
    br i1 %r5, label %L5, label %L3
L2:  ;
    br label %L4
L3:  ;
    br label %L4
L4:  ;
    %r47 = phi i32 [0,%L3],[1,%L2]
    %r11 = call i32 @getint()
    %r14 = icmp sgt i32 %r11,11
    br i1 %r14, label %L9, label %L7
L5:  ;
    %r7 = call i32 @func(i32 %r2)
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L2, label %L3
L6:  ;
    br label %L8
L7:  ;
    br label %L8
L8:  ;
    %r48 = phi i32 [0,%L7],[1,%L6]
    %r20 = call i32 @getint()
    %r23 = icmp sle i32 %r20,99
    br i1 %r23, label %L10, label %L13
L9:  ;
    %r16 = call i32 @func(i32 %r11)
    %r17 = icmp ne i32 %r16,0
    br i1 %r17, label %L6, label %L7
L10:  ;
    br label %L12
L11:  ;
    br label %L12
L12:  ;
    %r49 = phi i32 [1,%L10],[0,%L11]
    %r29 = call i32 @getint()
    %r32 = icmp sle i32 %r29,100
    br i1 %r32, label %L14, label %L17
L13:  ;
    %r25 = call i32 @func(i32 %r20)
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L10, label %L11
L14:  ;
    br label %L16
L15:  ;
    br label %L16
L16:  ;
    %r50 = phi i32 [1,%L14],[0,%L15]
    %r39 = call i32 @func(i32 99)
    %r40 = icmp eq i32 %r39,0
    br i1 %r40, label %L21, label %L19
L17:  ;
    %r34 = call i32 @func(i32 %r29)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L14, label %L15
L18:  ;
    br label %L20
L19:  ;
    br label %L20
L20:  ;
    %r51 = phi i32 [0,%L19],[1,%L18]
    ret i32 0
L21:  ;
    %r42 = call i32 @func(i32 100)
    %r43 = icmp ne i32 %r42,0
    br i1 %r43, label %L18, label %L19
}
