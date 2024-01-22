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
    br label %L50
L3:
    %r157 = phi i32 [0,%L50],[%r152,%L4]
    %r149 = phi i32 [0,%L50],[%r114,%L4]
    br label %L51
L4:
    %r117 = icmp slt i32 %r114,20
    br i1 %r117, label %L3, label %L5
L5:
    ret i32 %r152
L7:
    %r155 = phi i32 [%r152,%L8],[%r157,%L51]
    %r147 = phi i32 [%r103,%L8],[0,%L51]
    br label %L49
L8:
    %r109 = icmp slt i32 %r103,10
    br i1 %r109, label %L7, label %L9
L9:
    %r114 = add i32 %r149,1
    br label %L4
L11:
    %r153 = phi i32 [%r152,%L12],[%r155,%L49]
    %r143 = phi i32 [%r95,%L12],[0,%L49]
    br label %L48
L12:
    %r98 = icmp slt i32 %r95,5
    br i1 %r98, label %L11, label %L13
L13:
    %r103 = add i32 %r147,1
    br label %L8
L15:
    %r151 = phi i32 [%r153,%L48],[%r79,%L16]
    %r137 = phi i32 [%r76,%L16],[0,%L48]
    %r32 = add i32 %r137,1
    %r34 = icmp sge i32 %r32,3
    br i1 %r34, label %L18, label %L19
L16:
    %r82 = icmp slt i32 %r76,3
    br i1 %r82, label %L15, label %L17
L17:
    %r152 = phi i32 [%r151,%L26],[%r79,%L16]
    br label %L37
L18:
    %r38 = icmp ne i32 %r137,0
    br i1 %r38, label %L20, label %L21
L19:
    br label %L47
L20:
    %r40 = icmp eq i32 %r137,0
    br i1 %r40, label %L24, label %L22
L21:
    br label %L19
L22:
    %r51 = sub i32 %r137,-1
    %r53 = icmp sge i32 %r51,3
    br i1 %r53, label %L26, label %L27
L23:
    br label %L21
L24:
    %r42 = icmp eq i32 %r137,0
    br i1 %r42, label %L22, label %L23
L26:
    br label %L17
L27:
    br label %L23
L31:
    %r129 = phi i32 [0,%L47],[%r65,%L32]
    %r65 = add i32 %r129,1
    br label %L32
L32:
    %r71 = icmp slt i32 %r65,2
    br i1 %r71, label %L31, label %L33
L33:
    %r76 = add i32 %r137,1
    %r79 = add i32 %r151,1
    br label %L16
L37:
    br label %L41
L39:
    %r95 = add i32 %r143,1
    br label %L12
L41:
    br label %L43
L43:
    br label %L39
L47:
    br label %L31
L48:
    br label %L15
L49:
    br label %L11
L50:
    br label %L3
L51:
    br label %L7
}
