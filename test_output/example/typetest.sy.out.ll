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
@n = global i32 zeroinitializer
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r16 = icmp slt i32 %r0,%r1
    br i1 %r16, label %L2, label %L3
L2:  ;
    br label %L3
L3:  ;  preheader0
    %r46 = phi i32 [%r0,%L1],[%r1,%L2]
    %r44 = phi i32 [%r1,%L1],[%r0,%L2]
    %r22 = srem i32 %r46,%r44
    br label %L7
L4:  ;  exiting0  header0
    %r47 = phi i32 [%r46,%L7],[%r45,%L5]
    %r45 = phi i32 [%r44,%L7],[%r42,%L5]
    %r42 = phi i32 [%r22,%L7],[%r36,%L5]
    br label %L5
L5:  ;  latch0
    call void @putint(i32 %r47)
    call void @putch(i32 10)
    call void @putint(i32 %r45)
    call void @putch(i32 10)
    call void @putint(i32 %r42)
    call void @putch(i32 10)
    %r36 = srem i32 %r45,%r42
    %r51 = icmp ne i32 %r36,0
    br i1 %r51, label %L4, label %L6
L6:  ;
    %r39 = mul i32 %r0,%r1
    %r41 = sdiv i32 %r39,%r45
    ret i32 %r41
L7:  ;
    %r25 = icmp ne i32 %r22,0
    br i1 %r25, label %L4, label %L6
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r8 = call i32 @gcd(i32 %r4,i32 %r5)
    ret i32 %r8
}
