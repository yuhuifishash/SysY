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
@buf = global [2x [100x i32]] zeroinitializer
define void @merge_sort(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = add i32 %r0,1
    %r8 = icmp sge i32 %r6,%r1
    br i1 %r8, label %L2, label %L3
L2:
    ret void
L3:
    %r14 = add i32 %r0,%r1
    %r16 = sdiv i32 %r14,2
    call void @merge_sort(i32 %r0,i32 %r16)
    call void @merge_sort(i32 %r16,i32 %r1)
    %r29 = icmp slt i32 %r0,%r16
    br i1 %r29, label %L8, label %L7
L5:
    %r165 = phi i32 [%r164,%L13],[%r0,%L27]
    %r160 = phi i32 [%r159,%L13],[%r16,%L27]
    %r153 = phi i32 [%r73,%L13],[%r0,%L27]
    %r42 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r165
    %r43 = load i32, ptr %r42
    %r46 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r160
    %r47 = load i32, ptr %r46
    %r48 = icmp slt i32 %r43,%r47
    br i1 %r48, label %L10, label %L11
L6:
    %r76 = icmp slt i32 %r164,%r16
    br i1 %r76, label %L13, label %L7
L7:
    %r166 = phi i32 [%r0,%L3],[%r0,%L8],[%r164,%L6],[%r164,%L13]
    %r161 = phi i32 [%r16,%L3],[%r16,%L8],[%r159,%L6],[%r159,%L13]
    %r154 = phi i32 [%r0,%L3],[%r0,%L8],[%r73,%L6],[%r73,%L13]
    %r89 = icmp slt i32 %r166,%r16
    br i1 %r89, label %L28, label %L18
L8:
    %r34 = icmp slt i32 %r16,%r1
    br i1 %r34, label %L27, label %L7
L10:
    %r53 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r165
    %r54 = load i32, ptr %r53
    %r57 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r153
    store i32 %r54, ptr %r57
    %r60 = add i32 %r165,1
    br label %L12
L11:
    %r63 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r160
    %r64 = load i32, ptr %r63
    %r67 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r153
    store i32 %r64, ptr %r67
    %r70 = add i32 %r160,1
    br label %L12
L12:
    %r164 = phi i32 [%r60,%L10],[%r165,%L11]
    %r159 = phi i32 [%r160,%L10],[%r70,%L11]
    %r73 = add i32 %r153,1
    br label %L6
L13:
    %r81 = icmp slt i32 %r159,%r1
    br i1 %r81, label %L5, label %L7
L16:
    %r167 = phi i32 [%r101,%L17],[%r166,%L28]
    %r155 = phi i32 [%r104,%L17],[%r154,%L28]
    %r94 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r167
    %r95 = load i32, ptr %r94
    %r98 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r155
    store i32 %r95, ptr %r98
    %r101 = add i32 %r167,1
    %r104 = add i32 %r155,1
    br label %L17
L17:
    %r107 = icmp slt i32 %r101,%r16
    br i1 %r107, label %L16, label %L18
L18:
    %r156 = phi i32 [%r154,%L7],[%r104,%L17]
    %r112 = icmp slt i32 %r161,%r1
    br i1 %r112, label %L29, label %L22
L20:
    %r162 = phi i32 [%r124,%L21],[%r161,%L29]
    %r157 = phi i32 [%r127,%L21],[%r156,%L29]
    %r117 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r162
    %r118 = load i32, ptr %r117
    %r121 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r157
    store i32 %r118, ptr %r121
    %r124 = add i32 %r162,1
    %r127 = add i32 %r157,1
    br label %L21
L21:
    %r130 = icmp slt i32 %r124,%r1
    br i1 %r130, label %L20, label %L22
L22:
    %r135 = icmp slt i32 %r0,%r1
    br i1 %r135, label %L30, label %L26
L24:
    %r169 = phi i32 [%r147,%L25],[%r0,%L30]
    %r140 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r169
    %r141 = load i32, ptr %r140
    %r144 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r169
    store i32 %r141, ptr %r144
    %r147 = add i32 %r169,1
    br label %L25
L25:
    %r150 = icmp slt i32 %r147,%r1
    br i1 %r150, label %L24, label %L26
L26:
    ret void
L27:
    br label %L5
L28:
    br label %L16
L29:
    br label %L20
L30:
    br label %L24
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r2 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0
    %r3 = call i32 @getarray(ptr %r2)
    call void @merge_sort(i32 0,i32 %r3)
    call void @putarray(i32 %r3,ptr %r2)
    ret i32 0
}
