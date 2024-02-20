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
@a1 = global i32 1
@a2 = global i32 2
@a3 = global i32 3
@a4 = global i32 4
@a5 = global i32 5
@a6 = global i32 6
@a7 = global i32 7
@a8 = global i32 8
@a9 = global i32 9
@a10 = global i32 10
@a11 = global i32 11
@a12 = global i32 12
@a13 = global i32 13
@a14 = global i32 14
@a15 = global i32 15
@a16 = global i32 16
@a17 = global i32 1
@a18 = global i32 2
@a19 = global i32 3
@a20 = global i32 4
@a21 = global i32 5
@a22 = global i32 6
@a23 = global i32 7
@a24 = global i32 8
@a25 = global i32 9
@a26 = global i32 10
@a27 = global i32 11
@a28 = global i32 12
@a29 = global i32 13
@a30 = global i32 14
@a31 = global i32 15
@a32 = global i32 16
define i32 @func(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r81 = call i32 @getint()
    %r82 = call i32 @getint()
    %r83 = call i32 @getint()
    %r84 = call i32 @getint()
    %r87 = add i32 %r81,1
    %r88 = load i32, ptr @a1
    %r89 = add i32 %r87,%r88
    %r92 = add i32 %r82,2
    %r93 = load i32, ptr @a2
    %r94 = add i32 %r92,%r93
    %r97 = add i32 %r83,3
    %r98 = load i32, ptr @a3
    %r99 = add i32 %r97,%r98
    %r102 = add i32 %r84,4
    %r103 = load i32, ptr @a4
    %r104 = add i32 %r102,%r103
    %r107 = add i32 %r89,1
    %r108 = load i32, ptr @a5
    %r109 = add i32 %r107,%r108
    %r112 = add i32 %r94,2
    %r113 = load i32, ptr @a6
    %r114 = add i32 %r112,%r113
    %r117 = add i32 %r99,3
    %r118 = load i32, ptr @a7
    %r119 = add i32 %r117,%r118
    %r122 = add i32 %r104,4
    %r123 = load i32, ptr @a8
    %r124 = add i32 %r122,%r123
    %r127 = add i32 %r109,1
    %r128 = load i32, ptr @a9
    %r129 = add i32 %r127,%r128
    %r132 = add i32 %r114,2
    %r133 = load i32, ptr @a10
    %r134 = add i32 %r132,%r133
    %r137 = add i32 %r119,3
    %r138 = load i32, ptr @a11
    %r139 = add i32 %r137,%r138
    %r142 = add i32 %r124,4
    %r143 = load i32, ptr @a12
    %r144 = add i32 %r142,%r143
    %r147 = add i32 %r129,1
    %r148 = load i32, ptr @a13
    %r149 = add i32 %r147,%r148
    %r152 = add i32 %r134,2
    %r153 = load i32, ptr @a14
    %r154 = add i32 %r152,%r153
    %r157 = add i32 %r139,3
    %r158 = load i32, ptr @a15
    %r159 = add i32 %r157,%r158
    %r162 = add i32 %r144,4
    %r163 = load i32, ptr @a16
    %r164 = add i32 %r162,%r163
    %r167 = add i32 %r149,1
    %r168 = load i32, ptr @a17
    %r169 = add i32 %r167,%r168
    %r172 = add i32 %r154,2
    %r173 = load i32, ptr @a18
    %r174 = add i32 %r172,%r173
    %r177 = add i32 %r159,3
    %r178 = load i32, ptr @a19
    %r179 = add i32 %r177,%r178
    %r182 = add i32 %r164,4
    %r183 = load i32, ptr @a20
    %r184 = add i32 %r182,%r183
    %r187 = add i32 %r169,1
    %r188 = load i32, ptr @a21
    %r189 = add i32 %r187,%r188
    %r192 = add i32 %r174,2
    %r193 = load i32, ptr @a22
    %r194 = add i32 %r192,%r193
    %r197 = add i32 %r179,3
    %r198 = load i32, ptr @a23
    %r199 = add i32 %r197,%r198
    %r202 = add i32 %r184,4
    %r203 = load i32, ptr @a24
    %r204 = add i32 %r202,%r203
    %r207 = add i32 %r189,1
    %r208 = load i32, ptr @a25
    %r209 = add i32 %r207,%r208
    %r212 = add i32 %r194,2
    %r213 = load i32, ptr @a26
    %r214 = add i32 %r212,%r213
    %r217 = add i32 %r199,3
    %r218 = load i32, ptr @a27
    %r219 = add i32 %r217,%r218
    %r222 = add i32 %r204,4
    %r223 = load i32, ptr @a28
    %r224 = add i32 %r222,%r223
    %r247 = sub i32 %r0,%r1
    %r249 = add i32 %r247,10
    %r252 = add i32 %r209,1
    %r253 = load i32, ptr @a29
    %r254 = add i32 %r252,%r253
    %r257 = add i32 %r214,2
    %r258 = load i32, ptr @a30
    %r259 = add i32 %r257,%r258
    %r262 = add i32 %r219,3
    %r263 = load i32, ptr @a31
    %r264 = add i32 %r262,%r263
    %r267 = add i32 %r224,4
    %r268 = load i32, ptr @a32
    %r269 = add i32 %r267,%r268
    %r432 = add i32 %r249,%r81
    %r434 = add i32 %r432,%r82
    %r436 = add i32 %r434,%r83
    %r438 = add i32 %r436,%r84
    %r440 = sub i32 %r438,%r89
    %r442 = sub i32 %r440,%r94
    %r444 = sub i32 %r442,%r99
    %r446 = sub i32 %r444,%r104
    %r448 = add i32 %r446,%r109
    %r450 = add i32 %r448,%r114
    %r452 = add i32 %r450,%r119
    %r454 = add i32 %r452,%r124
    %r456 = sub i32 %r454,%r129
    %r458 = sub i32 %r456,%r134
    %r460 = sub i32 %r458,%r139
    %r462 = sub i32 %r460,%r144
    %r464 = add i32 %r462,%r149
    %r466 = add i32 %r464,%r154
    %r468 = add i32 %r466,%r159
    %r470 = add i32 %r468,%r164
    %r472 = sub i32 %r470,%r169
    %r474 = sub i32 %r472,%r174
    %r476 = sub i32 %r474,%r179
    %r478 = sub i32 %r476,%r184
    %r480 = add i32 %r478,%r189
    %r482 = add i32 %r480,%r194
    %r484 = add i32 %r482,%r199
    %r486 = add i32 %r484,%r204
    %r488 = sub i32 %r486,%r209
    %r490 = sub i32 %r488,%r214
    %r492 = sub i32 %r490,%r219
    %r494 = sub i32 %r492,%r224
    %r496 = add i32 %r494,%r254
    %r498 = add i32 %r496,%r259
    %r500 = add i32 %r498,%r264
    %r502 = add i32 %r500,%r269
    %r504 = add i32 %r502,%r88
    %r506 = sub i32 %r504,%r93
    %r508 = add i32 %r506,%r98
    %r510 = sub i32 %r508,%r103
    %r512 = add i32 %r510,%r108
    %r514 = sub i32 %r512,%r113
    %r516 = add i32 %r514,%r118
    %r518 = sub i32 %r516,%r123
    %r520 = add i32 %r518,%r128
    %r522 = sub i32 %r520,%r133
    %r524 = add i32 %r522,%r138
    %r526 = sub i32 %r524,%r143
    %r528 = add i32 %r526,%r148
    %r530 = sub i32 %r528,%r153
    %r532 = add i32 %r530,%r158
    %r534 = sub i32 %r532,%r163
    %r536 = add i32 %r534,%r168
    %r538 = sub i32 %r536,%r173
    %r540 = add i32 %r538,%r178
    %r542 = sub i32 %r540,%r183
    %r544 = add i32 %r542,%r188
    %r546 = sub i32 %r544,%r193
    %r548 = add i32 %r546,%r198
    %r550 = sub i32 %r548,%r203
    %r552 = add i32 %r550,%r208
    %r554 = sub i32 %r552,%r213
    %r556 = add i32 %r554,%r218
    %r558 = sub i32 %r556,%r223
    %r560 = add i32 %r558,%r253
    %r562 = sub i32 %r560,%r258
    %r564 = add i32 %r562,%r263
    %r566 = sub i32 %r564,%r268
    ret i32 %r566
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = call i32 @getint()
    %r9 = add i32 %r4,18
    %r12 = call i32 @func(i32 %r4,i32 %r9)
    call void @putint(i32 %r12)
    ret i32 %r12
}
