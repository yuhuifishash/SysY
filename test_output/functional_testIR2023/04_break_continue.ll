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
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r91 = phi i32 [0,%L1],[%r90,%L7]
    %r87 = phi i32 [0,%L1],[%r71,%L7]
    %r6 = icmp slt i32 %r87,20
    br i1 %r6, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    ret i32 %r91
L5:  ;
    %r90 = phi i32 [%r91,%L3],[%r89,%L10]
    %r86 = phi i32 [0,%L3],[%r65,%L10]
    %r11 = icmp slt i32 %r86,10
    br i1 %r11, label %L6, label %L7
L6:  ;
    br label %L8
L7:  ;
    %r71 = add i32 %r87,1
    br label %L2
L8:  ;
    %r89 = phi i32 [%r90,%L6],[%r88,%L32]
    %r84 = phi i32 [0,%L6],[%r62,%L32]
    %r16 = icmp slt i32 %r84,5
    br i1 %r16, label %L9, label %L10
L9:  ;
    br label %L11
L10:  ;
    %r65 = add i32 %r86,1
    br label %L5
L11:  ;
    %r88 = phi i32 [%r89,%L9],[%r55,%L27]
    %r81 = phi i32 [0,%L9],[%r24,%L27]
    %r21 = icmp slt i32 %r81,3
    br i1 %r21, label %L12, label %L13
L12:  ;
    %r24 = add i32 %r81,1
    %r26 = icmp sge i32 %r24,3
    br i1 %r26, label %L14, label %L15
L13:  ;
    br label %L30
L14:  ;
    %r28 = icmp ne i32 %r81,0
    br i1 %r28, label %L16, label %L17
L15:  ;
    br label %L25
L16:  ;
    br i1 %r28, label %L18, label %L20
L17:  ;
    br label %L15
L18:  ;
    %r36 = sub i32 %r81,-1
    %r38 = icmp sge i32 %r36,3
    br i1 %r38, label %L21, label %L22
L19:  ;
    br label %L17
L20:  ;
    %r32 = icmp eq i32 %r81,0
    br i1 %r32, label %L18, label %L19
L21:  ;
    br label %L13
L22:  ;
    br label %L19
L25:  ;
    %r77 = phi i32 [0,%L15],[%r46,%L26]
    %r43 = icmp slt i32 %r77,2
    br i1 %r43, label %L26, label %L27
L26:  ;
    %r46 = add i32 %r77,1
    br label %L25
L27:  ;
    %r55 = add i32 %r88,1
    br label %L11
L30:  ;
    br label %L31
L31:  ;
    br label %L33
L32:  ;
    %r62 = add i32 %r84,1
    br label %L8
L33:  ;
    br label %L34
L34:  ;
    br label %L35
L35:  ;
    br label %L32
}
