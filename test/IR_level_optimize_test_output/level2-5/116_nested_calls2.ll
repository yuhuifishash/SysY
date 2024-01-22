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
define i32 @f(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = mul i32 %r0,%r1
    ret i32 %r6
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = srem i32 %r0,%r1
    ret i32 %r6
}
define i32 @h(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    br label %L5
L4:
    %r15 = srem i32 %r0,%r1
    br label %L3
L5:
    br label %L7
L6:
    br label %L8
L7:
    %r16 = mul i32 2,%r15
    br label %L6
L8:
    br label %L10
L9:
    br label %L11
L10:
    %r17 = mul i32 %r0,%r1
    br label %L9
L11:
    br label %L13
L12:
    br label %L14
L13:
    %r18 = srem i32 %r17,4
    br label %L12
L14:
    br label %L16
L15:
    ret i32 %r19
L16:
    %r19 = mul i32 %r16,%r18
    br label %L15
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    call void @putint(i32 4)
    ret i32 0
L4:
    br label %L5
L5:
    br label %L7
L6:
    br label %L8
L7:
    br label %L6
L8:
    br label %L10
L9:
    br label %L11
L10:
    br label %L9
L11:
    br label %L13
L12:
    br label %L14
L13:
    br label %L12
L14:
    br label %L16
L15:
    br label %L17
L16:
    br label %L15
L17:
    br label %L19
L18:
    br label %L3
L19:
    br label %L18
}
