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
define i32 @deepWhileBr(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r8 = add i32 %r0,%r1
    br label %L2
L2:  ;  exiting0  header0
    %r41 = phi i32 [%r8,%L1],[%r40,%L6]
    %r11 = icmp slt i32 %r41,75
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r17 = icmp slt i32 %r41,100
    br i1 %r17, label %L5, label %L6
L4:  ;
    ret i32 %r41
L5:  ;
    %r20 = add i32 %r41,42
    %r23 = icmp sgt i32 %r20,99
    br i1 %r23, label %L7, label %L8
L6:  ;  latch0
    %r40 = phi i32 [%r41,%L3],[%r43,%L8]
    br label %L2
L7:  ;
    br label %L9
L8:  ;
    %r43 = phi i32 [%r20,%L5],[168,%L10]
    br label %L6
L9:  ;
    br label %L10
L10:  ;
    br label %L8
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = call i32 @deepWhileBr(i32 2,i32 2)
    ret i32 %r5
}
