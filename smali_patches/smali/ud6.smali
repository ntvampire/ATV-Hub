.class public final Lud6;
.super Lma5;
.source "r8-map-id-3359b042b52c63b926898b5dccea97bde7ae04781d34f528a0d9bcb63f546733"

# interfaces
.implements Let1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Z

.field public final synthetic u:Lwd6;

.field public final synthetic v:Lq43;


# direct methods
.method public constructor <init>(Lq43;ZLwd6;Lfk0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lud6;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lud6;->v:Lq43;

    .line 5
    .line 6
    iput-boolean p2, p0, Lud6;->t:Z

    .line 7
    .line 8
    iput-object p3, p0, Lud6;->u:Lwd6;

    .line 9
    .line 10
    invoke-direct {p0, v0, p4}, Lma5;-><init>(ILfk0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ZLwd6;Lq43;Lfk0;I)V
    .locals 0

    .line 14
    iput p5, p0, Lud6;->r:I

    iput-boolean p1, p0, Lud6;->t:Z

    iput-object p2, p0, Lud6;->u:Lwd6;

    iput-object p3, p0, Lud6;->v:Lq43;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lma5;-><init>(ILfk0;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lud6;->r:I

    .line 2
    .line 3
    sget-object v1, Lq56;->a:Lq56;

    .line 4
    .line 5
    check-cast p1, Lam0;

    .line 6
    .line 7
    check-cast p2, Lfk0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lud6;->r(Lfk0;Ljava/lang/Object;)Lfk0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lud6;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lud6;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lud6;->r(Lfk0;Ljava/lang/Object;)Lfk0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lud6;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lud6;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lud6;->r(Lfk0;Ljava/lang/Object;)Lfk0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lud6;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lud6;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lfk0;Ljava/lang/Object;)Lfk0;
    .locals 9

    .line 1
    iget p2, p0, Lud6;->r:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p2, Lud6;

    .line 7
    .line 8
    iget-boolean v0, p0, Lud6;->t:Z

    .line 9
    .line 10
    iget-object v1, p0, Lud6;->u:Lwd6;

    .line 11
    .line 12
    iget-object p0, p0, Lud6;->v:Lq43;

    .line 13
    .line 14
    invoke-direct {p2, p0, v0, v1, p1}, Lud6;-><init>(Lq43;ZLwd6;Lfk0;)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :pswitch_0
    new-instance v2, Lud6;

    .line 19
    .line 20
    iget-object v5, p0, Lud6;->v:Lq43;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    iget-boolean v3, p0, Lud6;->t:Z

    .line 24
    .line 25
    iget-object v4, p0, Lud6;->u:Lwd6;

    .line 26
    .line 27
    move-object v6, p1

    .line 28
    invoke-direct/range {v2 .. v7}, Lud6;-><init>(ZLwd6;Lq43;Lfk0;I)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_1
    move-object v6, p1

    .line 33
    new-instance v3, Lud6;

    .line 34
    .line 35
    move-object v7, v6

    .line 36
    iget-object v6, p0, Lud6;->v:Lq43;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    iget-boolean v4, p0, Lud6;->t:Z

    .line 40
    .line 41
    iget-object v5, p0, Lud6;->u:Lwd6;

    .line 42
    .line 43
    invoke-direct/range {v3 .. v8}, Lud6;-><init>(ZLwd6;Lq43;Lfk0;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lud6;->r:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v6, 0x4

    .line 7
    sget-object v7, Lq56;->a:Lq56;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v8, Lbm0;->n:Lbm0;

    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    iget-boolean v10, v5, Lud6;->t:Z

    .line 16
    .line 17
    iget-object v11, v5, Lud6;->u:Lwd6;

    .line 18
    .line 19
    const/4 v4, 0x2

    iget-object v12, v5, Lud6;->v:Lq43;

    invoke-static {v12, v11}, LSmartTubeBridge;->handleCardClick(Lq43;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_st_global

    return-object v7

    :cond_st_global
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget v0, v5, Lud6;->s:I

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    if-eq v0, v9, :cond_1

    .line 30
    .line 31
    if-eq v0, v4, :cond_1

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    if-ne v0, v6, :cond_0

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-static {v3}, Lkk;->i(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v7, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, v12, Lq43;->f:Z

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    if-eqz v10, :cond_3

    .line 58
    .line 59
    iget v0, v12, Lq43;->e:I

    .line 60
    .line 61
    iput v9, v5, Lud6;->s:I

    .line 62
    .line 63
    invoke-static {v11, v0, v5}, Lwd6;->f(Lwd6;ILgk0;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-ne v0, v8, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iput v4, v5, Lud6;->s:I

    .line 71
    .line 72
    invoke-static {v11, v12, v5}, Lwd6;->e(Lwd6;Lq43;Lgk0;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-ne v0, v8, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iget-object v0, v11, Lwd6;->b:Lxk4;

    .line 80
    .line 81
    iget v2, v12, Lq43;->e:I

    .line 82
    .line 83
    move v3, v2

    .line 84
    iget-object v2, v12, Lq43;->b:Ljava/lang/String;

    .line 85
    .line 86
    move v4, v3

    .line 87
    iget-object v3, v12, Lq43;->c:Ljava/lang/String;

    .line 88
    .line 89
    move v13, v4

    .line 90
    xor-int/lit8 v4, v10, 0x1

    .line 91
    .line 92
    iput v1, v5, Lud6;->s:I

    .line 93
    .line 94
    move v1, v13

    .line 95
    invoke-static/range {v0 .. v5}, Lck5;->n(Lxk4;ILjava/lang/String;Ljava/lang/String;ZLgk0;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-ne v0, v8, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    :goto_0
    iget-object v0, v11, Lwd6;->e:Llk4;

    .line 103
    .line 104
    new-instance v13, Ldw5;

    .line 105
    .line 106
    iget v15, v12, Lq43;->e:I

    .line 107
    .line 108
    iget-boolean v1, v12, Lq43;->f:Z

    .line 109
    .line 110
    xor-int/lit8 v17, v10, 0x1

    .line 111
    .line 112
    const/16 v18, 0x18

    .line 113
    .line 114
    sget-object v14, Lgw5;->s:Lgw5;

    .line 115
    .line 116
    move/from16 v16, v1

    .line 117
    .line 118
    invoke-direct/range {v13 .. v18}, Ldw5;-><init>(Lgw5;IZII)V

    .line 119
    .line 120
    .line 121
    iput v6, v5, Lud6;->s:I

    .line 122
    .line 123
    invoke-virtual {v0, v13, v5}, Llk4;->c(Ldw5;Lgk0;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-ne v0, v8, :cond_6

    .line 128
    .line 129
    :goto_1
    move-object v7, v8

    .line 130
    :cond_6
    :goto_2
    return-object v7

    .line 131
    :pswitch_0
    iget v0, v5, Lud6;->s:I

    .line 132
    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    if-eq v0, v9, :cond_7

    .line 136
    .line 137
    if-eq v0, v4, :cond_9

    .line 138
    .line 139
    if-ne v0, v1, :cond_8

    .line 140
    .line 141
    :cond_7
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_8
    invoke-static {v3}, Lkk;->i(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v7, v2

    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :cond_9
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_a
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v11, Lwd6;->g:Lgj4;

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    if-eqz v10, :cond_d

    .line 163
    .line 164
    iget v1, v12, Lq43;->e:I

    .line 165
    .line 166
    iget-boolean v3, v12, Lq43;->f:Z

    .line 167
    .line 168
    iput v9, v5, Lud6;->s:I

    .line 169
    .line 170
    iget-object v0, v0, Lgj4;->a:Lt02;

    .line 171
    .line 172
    iget-object v0, v0, Lt02;->a:Lsi4;

    .line 173
    .line 174
    new-instance v4, Lvk;

    .line 175
    .line 176
    invoke-direct {v4, v1, v6, v3}, Lvk;-><init>(IIZ)V

    .line 177
    .line 178
    .line 179
    invoke-static {v5, v0, v2, v9, v4}, Lm86;->U(Lfk0;Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-ne v0, v8, :cond_b

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_b
    move-object v0, v7

    .line 187
    :goto_3
    if-ne v0, v8, :cond_c

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_c
    move-object v0, v7

    .line 191
    :goto_4
    if-ne v0, v8, :cond_12

    .line 192
    .line 193
    goto :goto_9

    .line 194
    :cond_d
    iget v3, v12, Lq43;->e:I

    .line 195
    .line 196
    iget-boolean v6, v12, Lq43;->f:Z

    .line 197
    .line 198
    iput v4, v5, Lud6;->s:I

    .line 199
    .line 200
    iget-object v0, v0, Lgj4;->a:Lt02;

    .line 201
    .line 202
    new-instance v4, Lu02;

    .line 203
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 205
    .line 206
    .line 207
    move-result-wide v13

    .line 208
    invoke-direct {v4, v13, v14, v3, v6}, Lu02;-><init>(JIZ)V

    .line 209
    .line 210
    .line 211
    iget-object v3, v0, Lt02;->a:Lsi4;

    .line 212
    .line 213
    new-instance v6, Lj;

    .line 214
    .line 215
    const/16 v10, 0x1c

    .line 216
    .line 217
    invoke-direct {v6, v0, v4, v10}, Lj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v3, v2, v9, v6}, Lm86;->U(Lfk0;Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-ne v0, v8, :cond_e

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_e
    move-object v0, v7

    .line 228
    :goto_5
    if-ne v0, v8, :cond_f

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_f
    move-object v0, v7

    .line 232
    :goto_6
    if-ne v0, v8, :cond_10

    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_10
    :goto_7
    iget-object v0, v11, Lwd6;->h:Lmc4;

    .line 236
    .line 237
    iget v2, v12, Lq43;->e:I

    .line 238
    .line 239
    iget-boolean v3, v12, Lq43;->f:Z

    .line 240
    .line 241
    iput v1, v5, Lud6;->s:I

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    new-instance v13, Lo76;

    .line 247
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v15

    .line 252
    const/16 v25, 0x0

    .line 253
    .line 254
    const/16 v26, 0x7f0

    .line 255
    .line 256
    sget-object v14, Lq91;->s:Lq91;

    .line 257
    .line 258
    const/16 v19, 0x0

    .line 259
    .line 260
    const/16 v20, 0x0

    .line 261
    .line 262
    const/16 v21, 0x0

    .line 263
    .line 264
    const/16 v22, 0x0

    .line 265
    .line 266
    const/16 v23, 0x0

    .line 267
    .line 268
    const/16 v24, 0x0

    .line 269
    .line 270
    move/from16 v17, v2

    .line 271
    .line 272
    move/from16 v18, v3

    .line 273
    .line 274
    invoke-direct/range {v13 .. v26}, Lo76;-><init>(Lq91;JIZIIIILp91;Ljava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v13, v5}, Lmc4;->e(Lo76;Lfk0;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-ne v0, v8, :cond_11

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_11
    move-object v0, v7

    .line 285
    :goto_8
    if-ne v0, v8, :cond_12

    .line 286
    .line 287
    :goto_9
    move-object v7, v8

    .line 288
    :cond_12
    :goto_a
    return-object v7

    .line 289
    :pswitch_1
    iget v0, v5, Lud6;->s:I

    .line 290
    .line 291
    if-eqz v0, :cond_15

    .line 292
    .line 293
    if-eq v0, v9, :cond_14

    .line 294
    .line 295
    if-ne v0, v4, :cond_13

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_13
    invoke-static {v3}, Lkk;->i(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    move-object v7, v2

    .line 302
    goto :goto_d

    .line 303
    :cond_14
    :goto_b
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_d

    .line 307
    :cond_15
    invoke-static/range {p1 .. p1}, Le41;->S(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, v11, Lwd6;->f:Lif4;

    .line 311
    .line 312
    if-eqz v10, :cond_16

    .line 313
    .line 314
    iget v1, v12, Lq43;->e:I

    .line 315
    .line 316
    iget-boolean v2, v12, Lq43;->f:Z

    .line 317
    .line 318
    iput v9, v5, Lud6;->s:I

    .line 319
    .line 320
    invoke-virtual {v0, v1, v2, v5}, Lif4;->y(IZLgk0;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    if-ne v0, v8, :cond_17

    .line 325
    .line 326
    goto :goto_c

    .line 327
    :cond_16
    new-instance v9, Lzd1;

    .line 328
    .line 329
    iget v10, v12, Lq43;->e:I

    .line 330
    .line 331
    iget-boolean v11, v12, Lq43;->f:Z

    .line 332
    .line 333
    iget-object v1, v12, Lq43;->b:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v13, v12, Lq43;->c:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 338
    .line 339
    .line 340
    move-result-wide v14

    .line 341
    move-object v12, v1

    .line 342
    invoke-direct/range {v9 .. v15}, Lzd1;-><init>(IZLjava/lang/String;Ljava/lang/String;J)V

    .line 343
    .line 344
    .line 345
    iput v4, v5, Lud6;->s:I

    .line 346
    .line 347
    invoke-virtual {v0, v9, v5}, Lif4;->b(Lzd1;Lgk0;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-ne v0, v8, :cond_17

    .line 352
    .line 353
    :goto_c
    move-object v7, v8

    .line 354
    :cond_17
    :goto_d
    return-object v7

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
