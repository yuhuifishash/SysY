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
define i32 @func(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r8 = add i32 %r0,%r1
    %r183 = sub i32 %r0,%r1
    %r185 = add i32 %r183,10
    %r296 = add i32 %r185,10
    %r298 = add i32 %r296,20
    %r300 = add i32 %r298,30
    %r302 = add i32 %r300,40
    %r304 = sub i32 %r302,2
    %r306 = sub i32 %r304,4
    %r308 = sub i32 %r306,6
    %r310 = sub i32 %r308,8
    %r312 = add i32 %r310,3
    %r314 = add i32 %r312,6
    %r316 = add i32 %r314,9
    %r318 = add i32 %r316,12
    %r320 = sub i32 %r318,4
    %r322 = sub i32 %r320,8
    %r324 = sub i32 %r322,12
    %r326 = sub i32 %r324,16
    %r328 = add i32 %r326,5
    %r330 = add i32 %r328,10
    %r332 = add i32 %r330,15
    %r334 = add i32 %r332,20
    %r336 = sub i32 %r334,6
    %r338 = sub i32 %r336,12
    %r340 = sub i32 %r338,18
    %r342 = sub i32 %r340,24
    %r344 = add i32 %r342,7
    %r346 = add i32 %r344,14
    %r348 = add i32 %r346,21
    %r350 = add i32 %r348,28
    %r352 = sub i32 %r350,8
    %r354 = sub i32 %r352,16
    %r356 = sub i32 %r354,24
    %r358 = sub i32 %r356,32
    %r360 = add i32 %r358,9
    %r362 = add i32 %r360,18
    %r364 = add i32 %r362,27
    %r366 = add i32 %r364,36
    ret i32 %r366
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r12 = call i32 @func(i32 1,i32 19)
    ret i32 %r12
}
