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
    br label %L1
L1:
    br label %L12
L3:
    %r80 = phi i32 [%r60,%L4],[0,%L12]
    %r78 = phi i32 [%r77,%L4],[0,%L12]
    %r74 = phi i32 [%r73,%L4],[0,%L12]
    %r70 = phi i32 [%r69,%L4],[0,%L12]
    %r19 = sub i32 101,%r80
    %r20 = icmp slt i32 %r78,%r19
    br i1 %r20, label %L13, label %L9
L4:
    %r63 = icmp slt i32 %r60,21
    br i1 %r63, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r76 = phi i32 [%r78,%L13],[%r50,%L8]
    %r68 = phi i32 [%r67,%L8],[%r70,%L13]
    %r27 = sub i32 %r25,%r76
    %r34 = add i32 %r30,%r76
    %r37 = sdiv i32 %r27,2
    %r38 = add i32 %r34,%r37
    %r40 = icmp eq i32 %r38,100
    br i1 %r40, label %L10, label %L11
L8:
    %r55 = icmp slt i32 %r50,%r54
    br i1 %r55, label %L7, label %L9
L9:
    %r77 = phi i32 [%r78,%L3],[%r50,%L8]
    %r73 = phi i32 [%r74,%L3],[%r27,%L8]
    %r69 = phi i32 [%r70,%L3],[%r67,%L8]
    %r60 = add i32 %r80,1
    br label %L4
L10:
    call void @putint(i32 %r80)
    call void @putint(i32 %r76)
    call void @putint(i32 %r27)
    call void @putch(i32 10)
    br label %L11
L11:
    %r67 = phi i32 [%r68,%L7],[10,%L10]
    %r50 = add i32 %r76,1
    br label %L8
L12:
    br label %L3
L13:
    %r25 = sub i32 100,%r80
    %r30 = mul i32 5,%r80
    %r54 = sub i32 101,%r80
    br label %L7
}
