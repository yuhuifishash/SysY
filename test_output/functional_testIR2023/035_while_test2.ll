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
define i32 @FourWhile()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r61 = phi i32 [5,%L1],[%r17,%L7]
    %r60 = phi i32 [6,%L1],[%r44,%L7]
    %r58 = phi i32 [7,%L1],[%r57,%L7]
    %r55 = phi i32 [10,%L1],[%r54,%L7]
    %r14 = icmp slt i32 %r61,20
    br i1 %r14, label %L3, label %L4
L3:  ;  preheader1
    %r17 = add i32 %r61,3
    br label %L5
L4:  ;
    %r48 = add i32 %r60,%r55
    %r49 = add i32 %r61,%r48
    %r51 = add i32 %r49,%r58
    ret i32 %r51
L5:  ;  exiting1  header1
    %r59 = phi i32 [%r60,%L3],[%r23,%L10]
    %r57 = phi i32 [%r58,%L3],[%r41,%L10]
    %r54 = phi i32 [%r55,%L3],[%r53,%L10]
    %r20 = icmp slt i32 %r59,10
    br i1 %r20, label %L6, label %L7
L6:  ;  preheader3
    %r23 = add i32 %r59,1
    br label %L8
L7:  ;  latch0
    %r44 = sub i32 %r59,2
    br label %L2
L8:  ;  exiting3  header3
    %r56 = phi i32 [%r57,%L6],[%r29,%L13]
    %r53 = phi i32 [%r54,%L6],[%r38,%L13]
    %r26 = icmp eq i32 %r56,7
    br i1 %r26, label %L9, label %L10
L9:  ;  preheader2
    %r29 = sub i32 %r56,1
    br label %L11
L10:  ;  latch1
    %r41 = add i32 %r56,1
    br label %L5
L11:  ;  exiting2  header2
    %r52 = phi i32 [%r53,%L9],[%r35,%L12]
    %r32 = icmp slt i32 %r52,20
    br i1 %r32, label %L12, label %L13
L12:  ;  latch2
    %r35 = add i32 %r52,3
    br label %L11
L13:  ;  latch3
    %r38 = sub i32 %r52,1
    br label %L8
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @FourWhile()
    ret i32 %r0
}
