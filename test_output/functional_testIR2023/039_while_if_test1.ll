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
define i32 @whileIf()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r27 = phi i32 [0,%L1],[%r22,%L7]
    %r25 = phi i32 [0,%L1],[%r24,%L7]
    %r8 = icmp slt i32 %r27,100
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r11 = icmp eq i32 %r27,5
    br i1 %r11, label %L5, label %L6
L4:  ;
    ret i32 %r25
L5:  ;
    br label %L7
L6:  ;
    %r15 = icmp eq i32 %r27,10
    br i1 %r15, label %L8, label %L9
L7:  ;latch
    %r24 = phi i32 [25,%L5],[%r26,%L10]
    %r22 = add i32 %r27,1
    br label %L2
L8:  ;
    br label %L10
L9:  ;
    %r19 = mul i32 %r27,2
    br label %L10
L10:  ;
    %r26 = phi i32 [42,%L8],[%r19,%L9]
    br label %L7
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @whileIf()
    ret i32 %r0
}
