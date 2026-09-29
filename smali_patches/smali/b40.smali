.class public final synthetic Lb40;
.super Ljava/lang/Object;
.source "r8-map-id-3359b042b52c63b926898b5dccea97bde7ae04781d34f528a0d9bcb63f546733"

# interfaces
.implements Lqs1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lb40;->n:I

    iput-object p2, p0, Lb40;->o:Ljava/lang/Object;

    iput-object p3, p0, Lb40;->p:Ljava/lang/Object;

    iput-object p4, p0, Lb40;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljj0;Ls66;Lil2;Lpp4;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lb40;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lb40;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lb40;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lb40;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lb40;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkf5;

    .line 4
    .line 5
    iget-object v1, p0, Lb40;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lam0;

    .line 8
    .line 9
    iget-object p0, p0, Lb40;->q:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/content/Context;

    .line 12
    .line 13
    check-cast p1, Ltd5;

    .line 14
    .line 15
    iget-object v2, p1, Ltd5;->a:Lbd3;

    .line 16
    .line 17
    iget-object p1, p1, Ltd5;->a:Lbd3;

    .line 18
    .line 19
    sget-object v3, Lhe5;->b:Lhe5;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lbd3;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lee5;->q:Lee5;

    .line 25
    .line 26
    invoke-virtual {v0}, Lkf5;->n()Lsf5;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-wide v4, v2, Lsf5;->b:J

    .line 31
    .line 32
    invoke-static {v4, v5}, Ltg5;->c(J)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lkf5;->j()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v2, v0, Lkf5;->f:Lyb6;

    .line 47
    .line 48
    instance-of v2, v2, Lqs3;

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    iget-object v2, v0, Lkf5;->h:Le90;

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    move v2, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v2, v4

    .line 59
    :goto_0
    new-instance v6, Lff5;

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-direct {v6, v0, v7, v5}, Lff5;-><init>(Lkf5;Lfk0;I)V

    .line 63
    .line 64
    .line 65
    new-instance v8, Lbt2;

    .line 66
    .line 67
    const/16 v9, 0x10

    .line 68
    .line 69
    invoke-direct {v8, v1, v6, v9}, Lbt2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v10, Lg32;

    .line 77
    .line 78
    invoke-direct {v10, v8, v7, v5}, Lg32;-><init>(Los1;Los1;I)V

    .line 79
    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    sget-object v2, Lya0;->u:Ljava/lang/Object;

    .line 84
    .line 85
    const v8, 0x1040003

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    new-instance v8, Lde5;

    .line 93
    .line 94
    const v11, 0x1010311

    .line 95
    .line 96
    .line 97
    invoke-direct {v8, v2, v6, v11, v10}, Lde5;-><init>(Ljava/lang/Object;Ljava/lang/String;ILqs1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v8}, Lbd3;->a(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    sget-object v2, Lee5;->q:Lee5;

    .line 104
    .line 105
    invoke-virtual {v0}, Lkf5;->n()Lsf5;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-wide v10, v2, Lsf5;->b:J

    .line 110
    .line 111
    invoke-static {v10, v11}, Ltg5;->c(J)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_2

    .line 116
    .line 117
    iget-object v2, v0, Lkf5;->f:Lyb6;

    .line 118
    .line 119
    instance-of v2, v2, Lqs3;

    .line 120
    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    iget-object v2, v0, Lkf5;->h:Le90;

    .line 124
    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    move v2, v5

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    move v2, v4

    .line 130
    :goto_1
    new-instance v6, Lff5;

    .line 131
    .line 132
    const/4 v8, 0x2

    .line 133
    invoke-direct {v6, v0, v7, v8}, Lff5;-><init>(Lkf5;Lfk0;I)V

    .line 134
    .line 135
    .line 136
    new-instance v10, Lbt2;

    .line 137
    .line 138
    invoke-direct {v10, v1, v6, v9}, Lbt2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    new-instance v11, Lg32;

    .line 146
    .line 147
    invoke-direct {v11, v10, v7, v5}, Lg32;-><init>(Los1;Los1;I)V

    .line 148
    .line 149
    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    sget-object v2, Lya0;->v:Ljava/lang/Object;

    .line 153
    .line 154
    const v10, 0x1040001

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    new-instance v10, Lde5;

    .line 162
    .line 163
    const v12, 0x1010312

    .line 164
    .line 165
    .line 166
    invoke-direct {v10, v2, v6, v12, v11}, Lde5;-><init>(Ljava/lang/Object;Ljava/lang/String;ILqs1;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v10}, Lbd3;->a(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    sget-object v2, Lee5;->q:Lee5;

    .line 173
    .line 174
    invoke-virtual {v0}, Lkf5;->j()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_4

    .line 179
    .line 180
    iget-object v2, v0, Lkf5;->x:Lar3;

    .line 181
    .line 182
    invoke-virtual {v2}, Lar3;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_4

    .line 193
    .line 194
    iget-object v2, v0, Lkf5;->h:Le90;

    .line 195
    .line 196
    if-eqz v2, :cond_4

    .line 197
    .line 198
    move v2, v5

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move v2, v4

    .line 201
    :goto_2
    new-instance v6, Lff5;

    .line 202
    .line 203
    const/4 v10, 0x3

    .line 204
    invoke-direct {v6, v0, v7, v10}, Lff5;-><init>(Lkf5;Lfk0;I)V

    .line 205
    .line 206
    .line 207
    new-instance v10, Lbt2;

    .line 208
    .line 209
    invoke-direct {v10, v1, v6, v9}, Lbt2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    new-instance v6, Lg32;

    .line 217
    .line 218
    invoke-direct {v6, v10, v7, v5}, Lg32;-><init>(Los1;Los1;I)V

    .line 219
    .line 220
    .line 221
    if-eqz v2, :cond_5

    .line 222
    .line 223
    sget-object v2, Lya0;->w:Ljava/lang/Object;

    .line 224
    .line 225
    const v9, 0x104000b

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    new-instance v9, Lde5;

    .line 233
    .line 234
    const v10, 0x1010313

    .line 235
    .line 236
    .line 237
    invoke-direct {v9, v2, v1, v10, v6}, Lde5;-><init>(Ljava/lang/Object;Ljava/lang/String;ILqs1;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v9}, Lbd3;->a(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_5
    sget-object v1, Lee5;->q:Lee5;

    .line 244
    .line 245
    invoke-virtual {v0}, Lkf5;->n()Lsf5;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget-wide v1, v1, Lsf5;->b:J

    .line 250
    .line 251
    invoke-static {v1, v2}, Ltg5;->d(J)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v0}, Lkf5;->n()Lsf5;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iget-object v2, v2, Lsf5;->a:Lle;

    .line 260
    .line 261
    iget-object v2, v2, Lle;->o:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eq v1, v2, :cond_6

    .line 268
    .line 269
    move v1, v5

    .line 270
    goto :goto_3

    .line 271
    :cond_6
    move v1, v4

    .line 272
    :goto_3
    new-instance v2, Lof5;

    .line 273
    .line 274
    invoke-direct {v2, v0, v4}, Lof5;-><init>(Lkf5;I)V

    .line 275
    .line 276
    .line 277
    new-instance v6, Lof5;

    .line 278
    .line 279
    invoke-direct {v6, v0, v5}, Lof5;-><init>(Lkf5;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    new-instance v10, Lg32;

    .line 287
    .line 288
    invoke-direct {v10, v6, v2, v5}, Lg32;-><init>(Los1;Los1;I)V

    .line 289
    .line 290
    .line 291
    if-eqz v1, :cond_7

    .line 292
    .line 293
    sget-object v1, Lya0;->x:Ljava/lang/Object;

    .line 294
    .line 295
    const v2, 0x104000d

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    new-instance v6, Lde5;

    .line 303
    .line 304
    const v9, 0x101037e

    .line 305
    .line 306
    .line 307
    invoke-direct {v6, v1, v2, v9, v10}, Lde5;-><init>(Ljava/lang/Object;Ljava/lang/String;ILqs1;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v6}, Lbd3;->a(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 314
    .line 315
    const/16 v2, 0x1a

    .line 316
    .line 317
    if-lt v1, v2, :cond_9

    .line 318
    .line 319
    sget-object v1, Lee5;->q:Lee5;

    .line 320
    .line 321
    invoke-virtual {v0}, Lkf5;->j()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_8

    .line 326
    .line 327
    invoke-virtual {v0}, Lkf5;->n()Lsf5;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    iget-wide v9, v2, Lsf5;->b:J

    .line 332
    .line 333
    invoke-static {v9, v10}, Ltg5;->c(J)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_8

    .line 338
    .line 339
    move v4, v5

    .line 340
    :cond_8
    new-instance v2, Lof5;

    .line 341
    .line 342
    invoke-direct {v2, v0, v8}, Lof5;-><init>(Lkf5;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    new-instance v0, Lg32;

    .line 350
    .line 351
    invoke-direct {v0, v2, v7, v5}, Lg32;-><init>(Los1;Los1;I)V

    .line 352
    .line 353
    .line 354
    if-eqz v4, :cond_9

    .line 355
    .line 356
    iget-object v2, v1, Lee5;->n:Ljava/lang/Object;

    .line 357
    .line 358
    iget v4, v1, Lee5;->o:I

    .line 359
    .line 360
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    iget v1, v1, Lee5;->p:I

    .line 365
    .line 366
    new-instance v4, Lde5;

    .line 367
    .line 368
    invoke-direct {v4, v2, p0, v1, v0}, Lde5;-><init>(Ljava/lang/Object;Ljava/lang/String;ILqs1;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, v4}, Lbd3;->a(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_9
    invoke-virtual {p1, v3}, Lbd3;->a(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    sget-object p0, Lq56;->a:Lq56;

    .line 378
    .line 379
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb40;->n:I

    .line 4
    .line 5
    const/16 v6, 0xf

    .line 6
    .line 7
    const/16 v7, 0x10

    .line 8
    .line 9
    const/16 v8, 0x11

    .line 10
    .line 11
    const/4 v11, -0x1

    .line 12
    const/4 v12, 0x2

    .line 13
    const/4 v13, 0x4

    .line 14
    const/4 v14, 0x3

    .line 15
    const/4 v15, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const-wide v17, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    sget-object v10, Lq56;->a:Lq56;

    .line 24
    .line 25
    iget-object v3, v0, Lb40;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v4, v0, Lb40;->p:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v5, v0, Lb40;->o:Ljava/lang/Object;

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    check-cast v5, Lqs1;

    .line 35
    .line 36
    check-cast v4, Landroidx/media3/exoplayer/ExoPlayer;

    .line 37
    .line 38
    check-cast v3, Los1;

    .line 39
    .line 40
    move-object/from16 v0, p1

    .line 41
    .line 42
    check-cast v0, Lqz0;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-interface {v5, v4}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    new-instance v0, Lra1;

    .line 51
    .line 52
    invoke-direct {v0, v3, v12}, Lra1;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    move-object v1, v4

    .line 56
    check-cast v1, Lkb1;

    .line 57
    .line 58
    iget-object v1, v1, Lkb1;->m:Lew2;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lew2;->a(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ltc;

    .line 64
    .line 65
    invoke-direct {v1, v13, v5, v4, v0}, Ltc;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lb40;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :pswitch_1
    check-cast v5, Lyn2;

    .line 75
    .line 76
    check-cast v4, Lve5;

    .line 77
    .line 78
    check-cast v3, Lsd4;

    .line 79
    .line 80
    move-object/from16 v0, p1

    .line 81
    .line 82
    check-cast v0, Lxe5;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    packed-switch v1, :pswitch_data_1

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lkk;->h()V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :pswitch_2
    iget-object v0, v4, Lve5;->h:Ll56;

    .line 97
    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    iget-object v1, v0, Ll56;->b:Lgr5;

    .line 101
    .line 102
    if-eqz v1, :cond_0

    .line 103
    .line 104
    iget-object v2, v1, Lgr5;->o:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Lgr5;

    .line 107
    .line 108
    iput-object v2, v0, Ll56;->b:Lgr5;

    .line 109
    .line 110
    iget-object v2, v1, Lgr5;->p:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lsf5;

    .line 113
    .line 114
    iget-object v3, v0, Ll56;->a:Lgr5;

    .line 115
    .line 116
    new-instance v5, Lgr5;

    .line 117
    .line 118
    invoke-direct {v5, v3, v2, v14}, Lgr5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    iput-object v5, v0, Ll56;->a:Lgr5;

    .line 122
    .line 123
    iget v3, v0, Ll56;->c:I

    .line 124
    .line 125
    iget-object v2, v2, Lsf5;->a:Lle;

    .line 126
    .line 127
    iget-object v2, v2, Lle;->o:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    add-int/2addr v2, v3

    .line 134
    iput v2, v0, Ll56;->c:I

    .line 135
    .line 136
    iget-object v0, v1, Lgr5;->p:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v15, v0

    .line 139
    check-cast v15, Lsf5;

    .line 140
    .line 141
    :cond_0
    if-eqz v15, :cond_1

    .line 142
    .line 143
    iget-object v0, v4, Lve5;->k:Lqs1;

    .line 144
    .line 145
    invoke-interface {v0, v15}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_1
    :goto_0
    :pswitch_3
    move-object v15, v10

    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :pswitch_4
    iget-object v1, v4, Lve5;->h:Ll56;

    .line 152
    .line 153
    if-eqz v1, :cond_2

    .line 154
    .line 155
    iget-object v2, v0, Lxe5;->h:Lsf5;

    .line 156
    .line 157
    iget-object v3, v0, Lxe5;->g:Lle;

    .line 158
    .line 159
    iget-wide v5, v0, Lxe5;->f:J

    .line 160
    .line 161
    invoke-static {v2, v3, v5, v6, v13}, Lsf5;->a(Lsf5;Lle;JI)Lsf5;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Ll56;->a(Lsf5;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    iget-object v0, v4, Lve5;->h:Ll56;

    .line 169
    .line 170
    if-eqz v0, :cond_1

    .line 171
    .line 172
    iget-object v1, v0, Ll56;->a:Lgr5;

    .line 173
    .line 174
    if-eqz v1, :cond_3

    .line 175
    .line 176
    iget-object v2, v1, Lgr5;->o:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v2, Lgr5;

    .line 179
    .line 180
    if-eqz v2, :cond_3

    .line 181
    .line 182
    iput-object v2, v0, Ll56;->a:Lgr5;

    .line 183
    .line 184
    iget v3, v0, Ll56;->c:I

    .line 185
    .line 186
    iget-object v5, v1, Lgr5;->p:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v5, Lsf5;

    .line 189
    .line 190
    iget-object v5, v5, Lsf5;->a:Lle;

    .line 191
    .line 192
    iget-object v5, v5, Lle;->o:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    sub-int/2addr v3, v5

    .line 199
    iput v3, v0, Ll56;->c:I

    .line 200
    .line 201
    iget-object v1, v1, Lgr5;->p:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v1, Lsf5;

    .line 204
    .line 205
    iget-object v3, v0, Ll56;->b:Lgr5;

    .line 206
    .line 207
    new-instance v5, Lgr5;

    .line 208
    .line 209
    invoke-direct {v5, v3, v1, v14}, Lgr5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    iput-object v5, v0, Ll56;->b:Lgr5;

    .line 213
    .line 214
    iget-object v0, v2, Lgr5;->p:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v15, v0

    .line 217
    check-cast v15, Lsf5;

    .line 218
    .line 219
    :cond_3
    if-eqz v15, :cond_1

    .line 220
    .line 221
    iget-object v0, v4, Lve5;->k:Lqs1;

    .line 222
    .line 223
    invoke-interface {v0, v15}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_5
    iget-boolean v0, v4, Lve5;->e:Z

    .line 228
    .line 229
    if-nez v0, :cond_4

    .line 230
    .line 231
    new-instance v0, Lwc0;

    .line 232
    .line 233
    const-string v1, "\t"

    .line 234
    .line 235
    invoke-direct {v0, v1, v9}, Lwc0;-><init>(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Lya0;->R(Ljava/lang/Object;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_4
    iput-boolean v2, v3, Lsd4;->n:Z

    .line 247
    .line 248
    goto :goto_0

    .line 249
    :pswitch_6
    iget-boolean v0, v4, Lve5;->e:Z

    .line 250
    .line 251
    if-nez v0, :cond_5

    .line 252
    .line 253
    new-instance v0, Lwc0;

    .line 254
    .line 255
    const-string v1, "\n"

    .line 256
    .line 257
    invoke-direct {v0, v1, v9}, Lwc0;-><init>(Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lya0;->R(Ljava/lang/Object;)Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 265
    .line 266
    .line 267
    goto :goto_0

    .line 268
    :cond_5
    iget-object v0, v4, Lve5;->a:Ltt2;

    .line 269
    .line 270
    iget-object v0, v0, Ltt2;->x:Lal0;

    .line 271
    .line 272
    iget v1, v4, Lve5;->l:I

    .line 273
    .line 274
    iget-object v0, v0, Lal0;->o:Ltt2;

    .line 275
    .line 276
    iget-object v0, v0, Ltt2;->r:Leo2;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Leo2;->b(I)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    iput-boolean v0, v3, Lsd4;->n:Z

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :pswitch_7
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 287
    .line 288
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 289
    .line 290
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 291
    .line 292
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-lez v1, :cond_1

    .line 299
    .line 300
    iget-wide v1, v0, Lxe5;->f:J

    .line 301
    .line 302
    sget v3, Ltg5;->c:I

    .line 303
    .line 304
    and-long v1, v1, v17

    .line 305
    .line 306
    long-to-int v1, v1

    .line 307
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :pswitch_8
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 313
    .line 314
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 315
    .line 316
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 317
    .line 318
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-lez v1, :cond_7

    .line 325
    .line 326
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_6

    .line 331
    .line 332
    invoke-virtual {v0}, Lxe5;->n()V

    .line 333
    .line 334
    .line 335
    goto :goto_1

    .line 336
    :cond_6
    invoke-virtual {v0}, Lxe5;->o()V

    .line 337
    .line 338
    .line 339
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lxe5;->p()V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :pswitch_9
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 345
    .line 346
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 347
    .line 348
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 349
    .line 350
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-lez v1, :cond_9

    .line 357
    .line 358
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_8

    .line 363
    .line 364
    invoke-virtual {v0}, Lxe5;->o()V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_8
    invoke-virtual {v0}, Lxe5;->n()V

    .line 369
    .line 370
    .line 371
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lxe5;->p()V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :pswitch_a
    invoke-virtual {v0}, Lxe5;->n()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Lxe5;->p()V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :pswitch_b
    invoke-virtual {v0}, Lxe5;->o()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lxe5;->p()V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :pswitch_c
    invoke-virtual {v0}, Lxe5;->l()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Lxe5;->p()V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :pswitch_d
    invoke-virtual {v0}, Lxe5;->j()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lxe5;->p()V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :pswitch_e
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 409
    .line 410
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 411
    .line 412
    iget-object v2, v0, Lxe5;->g:Lle;

    .line 413
    .line 414
    iget-object v3, v2, Lle;->o:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v2, v2, Lle;->o:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-lez v3, :cond_b

    .line 423
    .line 424
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_a

    .line 429
    .line 430
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-lez v1, :cond_b

    .line 437
    .line 438
    invoke-virtual {v0}, Lxe5;->d()Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    if-eqz v1, :cond_b

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 449
    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_a
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-lez v1, :cond_b

    .line 459
    .line 460
    invoke-virtual {v0}, Lxe5;->e()Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    if-eqz v1, :cond_b

    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 471
    .line 472
    .line 473
    :cond_b
    :goto_3
    invoke-virtual {v0}, Lxe5;->p()V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_0

    .line 477
    .line 478
    :pswitch_f
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 479
    .line 480
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 481
    .line 482
    iget-object v2, v0, Lxe5;->g:Lle;

    .line 483
    .line 484
    iget-object v3, v2, Lle;->o:Ljava/lang/String;

    .line 485
    .line 486
    iget-object v2, v2, Lle;->o:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    if-lez v3, :cond_d

    .line 493
    .line 494
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-eqz v3, :cond_c

    .line 499
    .line 500
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-lez v1, :cond_d

    .line 507
    .line 508
    invoke-virtual {v0}, Lxe5;->e()Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    if-eqz v1, :cond_d

    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 519
    .line 520
    .line 521
    goto :goto_4

    .line 522
    :cond_c
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 523
    .line 524
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-lez v1, :cond_d

    .line 529
    .line 530
    invoke-virtual {v0}, Lxe5;->d()Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    if-eqz v1, :cond_d

    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 541
    .line 542
    .line 543
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lxe5;->p()V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :pswitch_10
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 549
    .line 550
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 551
    .line 552
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 553
    .line 554
    iget-object v2, v1, Lle;->o:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-lez v2, :cond_e

    .line 561
    .line 562
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 569
    .line 570
    .line 571
    :cond_e
    invoke-virtual {v0}, Lxe5;->p()V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :pswitch_11
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 577
    .line 578
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 579
    .line 580
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 581
    .line 582
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-lez v1, :cond_f

    .line 589
    .line 590
    invoke-virtual {v0, v2, v2}, Lxe5;->q(II)V

    .line 591
    .line 592
    .line 593
    :cond_f
    invoke-virtual {v0}, Lxe5;->p()V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_0

    .line 597
    .line 598
    :pswitch_12
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 599
    .line 600
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 601
    .line 602
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-lez v1, :cond_10

    .line 607
    .line 608
    iget-object v1, v0, Lxe5;->i:Lkg5;

    .line 609
    .line 610
    if-eqz v1, :cond_10

    .line 611
    .line 612
    invoke-virtual {v0, v1, v9}, Lxe5;->h(Lkg5;I)I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 617
    .line 618
    .line 619
    :cond_10
    invoke-virtual {v0}, Lxe5;->p()V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :pswitch_13
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 625
    .line 626
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    if-lez v1, :cond_11

    .line 633
    .line 634
    iget-object v1, v0, Lxe5;->i:Lkg5;

    .line 635
    .line 636
    if-eqz v1, :cond_11

    .line 637
    .line 638
    invoke-virtual {v0, v1, v11}, Lxe5;->h(Lkg5;I)I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 643
    .line 644
    .line 645
    :cond_11
    invoke-virtual {v0}, Lxe5;->p()V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_0

    .line 649
    .line 650
    :pswitch_14
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 651
    .line 652
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-lez v1, :cond_12

    .line 659
    .line 660
    iget-object v1, v0, Lxe5;->c:Ljg5;

    .line 661
    .line 662
    if-eqz v1, :cond_12

    .line 663
    .line 664
    invoke-virtual {v0, v1, v9}, Lxe5;->g(Ljg5;I)I

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 669
    .line 670
    .line 671
    :cond_12
    invoke-virtual {v0}, Lxe5;->p()V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_0

    .line 675
    .line 676
    :pswitch_15
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 677
    .line 678
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-lez v1, :cond_13

    .line 685
    .line 686
    iget-object v1, v0, Lxe5;->c:Ljg5;

    .line 687
    .line 688
    if-eqz v1, :cond_13

    .line 689
    .line 690
    invoke-virtual {v0, v1, v11}, Lxe5;->g(Ljg5;I)I

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 695
    .line 696
    .line 697
    :cond_13
    invoke-virtual {v0}, Lxe5;->p()V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_0

    .line 701
    .line 702
    :pswitch_16
    invoke-virtual {v0}, Lxe5;->m()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Lxe5;->p()V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_0

    .line 709
    .line 710
    :pswitch_17
    invoke-virtual {v0}, Lxe5;->i()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Lxe5;->p()V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :pswitch_18
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 719
    .line 720
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 721
    .line 722
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 723
    .line 724
    iget-object v3, v1, Lle;->o:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-lez v3, :cond_1

    .line 731
    .line 732
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 733
    .line 734
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    invoke-virtual {v0, v2, v1}, Lxe5;->q(II)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_0

    .line 742
    .line 743
    :pswitch_19
    new-instance v1, Lv35;

    .line 744
    .line 745
    const/16 v2, 0x14

    .line 746
    .line 747
    invoke-direct {v1, v2}, Lv35;-><init>(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v1}, Lxe5;->a(Lqs1;)Ljava/util/List;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    if-eqz v0, :cond_1

    .line 755
    .line 756
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_0

    .line 760
    .line 761
    :pswitch_1a
    new-instance v1, Lv35;

    .line 762
    .line 763
    const/16 v2, 0x13

    .line 764
    .line 765
    invoke-direct {v1, v2}, Lv35;-><init>(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v1}, Lxe5;->a(Lqs1;)Ljava/util/List;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    if-eqz v0, :cond_1

    .line 773
    .line 774
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_0

    .line 778
    .line 779
    :pswitch_1b
    new-instance v1, Lv35;

    .line 780
    .line 781
    const/16 v2, 0x12

    .line 782
    .line 783
    invoke-direct {v1, v2}, Lv35;-><init>(I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0, v1}, Lxe5;->a(Lqs1;)Ljava/util/List;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    if-eqz v0, :cond_1

    .line 791
    .line 792
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 793
    .line 794
    .line 795
    goto/16 :goto_0

    .line 796
    .line 797
    :pswitch_1c
    new-instance v1, Lv35;

    .line 798
    .line 799
    invoke-direct {v1, v8}, Lv35;-><init>(I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v1}, Lxe5;->a(Lqs1;)Ljava/util/List;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    if-eqz v0, :cond_1

    .line 807
    .line 808
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_0

    .line 812
    .line 813
    :pswitch_1d
    new-instance v1, Lv35;

    .line 814
    .line 815
    invoke-direct {v1, v7}, Lv35;-><init>(I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0, v1}, Lxe5;->a(Lqs1;)Ljava/util/List;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    if-eqz v0, :cond_1

    .line 823
    .line 824
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_0

    .line 828
    .line 829
    :pswitch_1e
    new-instance v1, Lv35;

    .line 830
    .line 831
    invoke-direct {v1, v6}, Lv35;-><init>(I)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Lxe5;->a(Lqs1;)Ljava/util/List;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    if-eqz v0, :cond_1

    .line 839
    .line 840
    invoke-virtual {v4, v0}, Lve5;->a(Ljava/util/List;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_0

    .line 844
    .line 845
    :pswitch_1f
    iget-object v0, v4, Lve5;->b:Lkf5;

    .line 846
    .line 847
    invoke-virtual {v0}, Lkf5;->f()V

    .line 848
    .line 849
    .line 850
    goto/16 :goto_0

    .line 851
    .line 852
    :pswitch_20
    iget-object v0, v4, Lve5;->b:Lkf5;

    .line 853
    .line 854
    invoke-virtual {v0}, Lkf5;->p()V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_0

    .line 858
    .line 859
    :pswitch_21
    iget-object v0, v4, Lve5;->b:Lkf5;

    .line 860
    .line 861
    invoke-virtual {v0, v2}, Lkf5;->d(Z)Lb55;

    .line 862
    .line 863
    .line 864
    goto/16 :goto_0

    .line 865
    .line 866
    :pswitch_22
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 867
    .line 868
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 869
    .line 870
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 871
    .line 872
    iget-object v2, v1, Lle;->o:Ljava/lang/String;

    .line 873
    .line 874
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    if-lez v2, :cond_1

    .line 879
    .line 880
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 881
    .line 882
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_0

    .line 890
    .line 891
    :pswitch_23
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 892
    .line 893
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 894
    .line 895
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 896
    .line 897
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 898
    .line 899
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    if-lez v1, :cond_1

    .line 904
    .line 905
    invoke-virtual {v0, v2, v2}, Lxe5;->q(II)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_0

    .line 909
    .line 910
    :pswitch_24
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 911
    .line 912
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 913
    .line 914
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    if-lez v1, :cond_1

    .line 919
    .line 920
    iget-object v1, v0, Lxe5;->i:Lkg5;

    .line 921
    .line 922
    if-eqz v1, :cond_1

    .line 923
    .line 924
    invoke-virtual {v0, v1, v9}, Lxe5;->h(Lkg5;I)I

    .line 925
    .line 926
    .line 927
    move-result v1

    .line 928
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_0

    .line 932
    .line 933
    :pswitch_25
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 934
    .line 935
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 936
    .line 937
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-lez v1, :cond_1

    .line 942
    .line 943
    iget-object v1, v0, Lxe5;->i:Lkg5;

    .line 944
    .line 945
    if-eqz v1, :cond_1

    .line 946
    .line 947
    invoke-virtual {v0, v1, v11}, Lxe5;->h(Lkg5;I)I

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_0

    .line 955
    .line 956
    :pswitch_26
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 957
    .line 958
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 961
    .line 962
    .line 963
    move-result v1

    .line 964
    if-lez v1, :cond_1

    .line 965
    .line 966
    iget-object v1, v0, Lxe5;->c:Ljg5;

    .line 967
    .line 968
    if-eqz v1, :cond_1

    .line 969
    .line 970
    invoke-virtual {v0, v1, v9}, Lxe5;->g(Ljg5;I)I

    .line 971
    .line 972
    .line 973
    move-result v1

    .line 974
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 975
    .line 976
    .line 977
    goto/16 :goto_0

    .line 978
    .line 979
    :pswitch_27
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 980
    .line 981
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 982
    .line 983
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    if-lez v1, :cond_1

    .line 988
    .line 989
    iget-object v1, v0, Lxe5;->c:Ljg5;

    .line 990
    .line 991
    if-eqz v1, :cond_1

    .line 992
    .line 993
    invoke-virtual {v0, v1, v11}, Lxe5;->g(Ljg5;I)I

    .line 994
    .line 995
    .line 996
    move-result v1

    .line 997
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 998
    .line 999
    .line 1000
    goto/16 :goto_0

    .line 1001
    .line 1002
    :pswitch_28
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 1003
    .line 1004
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1005
    .line 1006
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 1007
    .line 1008
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 1009
    .line 1010
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    if-lez v1, :cond_1

    .line 1015
    .line 1016
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v1

    .line 1020
    if-eqz v1, :cond_14

    .line 1021
    .line 1022
    invoke-virtual {v0}, Lxe5;->n()V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_0

    .line 1026
    .line 1027
    :cond_14
    invoke-virtual {v0}, Lxe5;->o()V

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_0

    .line 1031
    .line 1032
    :pswitch_29
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 1033
    .line 1034
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1035
    .line 1036
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 1037
    .line 1038
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 1039
    .line 1040
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1041
    .line 1042
    .line 1043
    move-result v1

    .line 1044
    if-lez v1, :cond_1

    .line 1045
    .line 1046
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v1

    .line 1050
    if-eqz v1, :cond_15

    .line 1051
    .line 1052
    invoke-virtual {v0}, Lxe5;->o()V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_0

    .line 1056
    .line 1057
    :cond_15
    invoke-virtual {v0}, Lxe5;->n()V

    .line 1058
    .line 1059
    .line 1060
    goto/16 :goto_0

    .line 1061
    .line 1062
    :pswitch_2a
    invoke-virtual {v0}, Lxe5;->n()V

    .line 1063
    .line 1064
    .line 1065
    goto/16 :goto_0

    .line 1066
    .line 1067
    :pswitch_2b
    invoke-virtual {v0}, Lxe5;->o()V

    .line 1068
    .line 1069
    .line 1070
    goto/16 :goto_0

    .line 1071
    .line 1072
    :pswitch_2c
    invoke-virtual {v0}, Lxe5;->l()V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_0

    .line 1076
    .line 1077
    :pswitch_2d
    invoke-virtual {v0}, Lxe5;->j()V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_0

    .line 1081
    .line 1082
    :pswitch_2e
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 1083
    .line 1084
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1085
    .line 1086
    iget-object v2, v0, Lxe5;->g:Lle;

    .line 1087
    .line 1088
    iget-object v3, v2, Lle;->o:Ljava/lang/String;

    .line 1089
    .line 1090
    iget-object v2, v2, Lle;->o:Ljava/lang/String;

    .line 1091
    .line 1092
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    if-lez v3, :cond_1

    .line 1097
    .line 1098
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v3

    .line 1102
    if-eqz v3, :cond_16

    .line 1103
    .line 1104
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1105
    .line 1106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1107
    .line 1108
    .line 1109
    move-result v1

    .line 1110
    if-lez v1, :cond_1

    .line 1111
    .line 1112
    invoke-virtual {v0}, Lxe5;->e()Ljava/lang/Integer;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    if-eqz v1, :cond_1

    .line 1117
    .line 1118
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1119
    .line 1120
    .line 1121
    move-result v1

    .line 1122
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1123
    .line 1124
    .line 1125
    goto/16 :goto_0

    .line 1126
    .line 1127
    :cond_16
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1128
    .line 1129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1130
    .line 1131
    .line 1132
    move-result v1

    .line 1133
    if-lez v1, :cond_1

    .line 1134
    .line 1135
    invoke-virtual {v0}, Lxe5;->d()Ljava/lang/Integer;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    if-eqz v1, :cond_1

    .line 1140
    .line 1141
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1142
    .line 1143
    .line 1144
    move-result v1

    .line 1145
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_0

    .line 1149
    .line 1150
    :pswitch_2f
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 1151
    .line 1152
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1153
    .line 1154
    iget-object v2, v0, Lxe5;->g:Lle;

    .line 1155
    .line 1156
    iget-object v3, v2, Lle;->o:Ljava/lang/String;

    .line 1157
    .line 1158
    iget-object v2, v2, Lle;->o:Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1161
    .line 1162
    .line 1163
    move-result v3

    .line 1164
    if-lez v3, :cond_1

    .line 1165
    .line 1166
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    if-eqz v3, :cond_17

    .line 1171
    .line 1172
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1173
    .line 1174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1175
    .line 1176
    .line 1177
    move-result v1

    .line 1178
    if-lez v1, :cond_1

    .line 1179
    .line 1180
    invoke-virtual {v0}, Lxe5;->d()Ljava/lang/Integer;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    if-eqz v1, :cond_1

    .line 1185
    .line 1186
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1187
    .line 1188
    .line 1189
    move-result v1

    .line 1190
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_0

    .line 1194
    .line 1195
    :cond_17
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1196
    .line 1197
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1198
    .line 1199
    .line 1200
    move-result v1

    .line 1201
    if-lez v1, :cond_1

    .line 1202
    .line 1203
    invoke-virtual {v0}, Lxe5;->e()Ljava/lang/Integer;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v1

    .line 1207
    if-eqz v1, :cond_1

    .line 1208
    .line 1209
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1210
    .line 1211
    .line 1212
    move-result v1

    .line 1213
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1214
    .line 1215
    .line 1216
    goto/16 :goto_0

    .line 1217
    .line 1218
    :pswitch_30
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 1219
    .line 1220
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1221
    .line 1222
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 1223
    .line 1224
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 1225
    .line 1226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1227
    .line 1228
    .line 1229
    move-result v1

    .line 1230
    if-lez v1, :cond_1

    .line 1231
    .line 1232
    iget-wide v1, v0, Lxe5;->f:J

    .line 1233
    .line 1234
    invoke-static {v1, v2}, Ltg5;->c(J)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v1

    .line 1238
    if-eqz v1, :cond_18

    .line 1239
    .line 1240
    invoke-virtual {v0}, Lxe5;->m()V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_0

    .line 1244
    .line 1245
    :cond_18
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v1

    .line 1249
    iget-wide v2, v0, Lxe5;->f:J

    .line 1250
    .line 1251
    if-eqz v1, :cond_19

    .line 1252
    .line 1253
    invoke-static {v2, v3}, Ltg5;->e(J)I

    .line 1254
    .line 1255
    .line 1256
    move-result v1

    .line 1257
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1258
    .line 1259
    .line 1260
    goto/16 :goto_0

    .line 1261
    .line 1262
    :cond_19
    invoke-static {v2, v3}, Ltg5;->f(J)I

    .line 1263
    .line 1264
    .line 1265
    move-result v1

    .line 1266
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1267
    .line 1268
    .line 1269
    goto/16 :goto_0

    .line 1270
    .line 1271
    :pswitch_31
    iget-object v1, v0, Lxe5;->e:Lsg5;

    .line 1272
    .line 1273
    iput-object v15, v1, Lsg5;->a:Ljava/lang/Float;

    .line 1274
    .line 1275
    iget-object v1, v0, Lxe5;->g:Lle;

    .line 1276
    .line 1277
    iget-object v1, v1, Lle;->o:Ljava/lang/String;

    .line 1278
    .line 1279
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1280
    .line 1281
    .line 1282
    move-result v1

    .line 1283
    if-lez v1, :cond_1

    .line 1284
    .line 1285
    iget-wide v1, v0, Lxe5;->f:J

    .line 1286
    .line 1287
    invoke-static {v1, v2}, Ltg5;->c(J)Z

    .line 1288
    .line 1289
    .line 1290
    move-result v1

    .line 1291
    if-eqz v1, :cond_1a

    .line 1292
    .line 1293
    invoke-virtual {v0}, Lxe5;->i()V

    .line 1294
    .line 1295
    .line 1296
    goto/16 :goto_0

    .line 1297
    .line 1298
    :cond_1a
    invoke-virtual {v0}, Lxe5;->f()Z

    .line 1299
    .line 1300
    .line 1301
    move-result v1

    .line 1302
    iget-wide v2, v0, Lxe5;->f:J

    .line 1303
    .line 1304
    if-eqz v1, :cond_1b

    .line 1305
    .line 1306
    invoke-static {v2, v3}, Ltg5;->f(J)I

    .line 1307
    .line 1308
    .line 1309
    move-result v1

    .line 1310
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1311
    .line 1312
    .line 1313
    goto/16 :goto_0

    .line 1314
    .line 1315
    :cond_1b
    invoke-static {v2, v3}, Ltg5;->e(J)I

    .line 1316
    .line 1317
    .line 1318
    move-result v1

    .line 1319
    invoke-virtual {v0, v1, v1}, Lxe5;->q(II)V

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_0

    .line 1323
    .line 1324
    :goto_5
    return-object v15

    .line 1325
    :pswitch_32
    check-cast v5, Lrf2;

    .line 1326
    .line 1327
    check-cast v4, Lqs1;

    .line 1328
    .line 1329
    check-cast v3, Lwd4;

    .line 1330
    .line 1331
    move-object/from16 v0, p1

    .line 1332
    .line 1333
    check-cast v0, Ljava/util/List;

    .line 1334
    .line 1335
    iget-object v1, v3, Lwd4;->n:Ljava/lang/Object;

    .line 1336
    .line 1337
    check-cast v1, Ldg5;

    .line 1338
    .line 1339
    invoke-virtual {v5, v0}, Lrf2;->v(Ljava/util/List;)Lsf5;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v0

    .line 1343
    if-eqz v1, :cond_1c

    .line 1344
    .line 1345
    invoke-virtual {v1, v15, v0}, Ldg5;->a(Lsf5;Lsf5;)V

    .line 1346
    .line 1347
    .line 1348
    :cond_1c
    invoke-interface {v4, v0}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    return-object v10

    .line 1352
    :pswitch_33
    check-cast v5, Lsd4;

    .line 1353
    .line 1354
    check-cast v4, Lke;

    .line 1355
    .line 1356
    check-cast v3, Lw35;

    .line 1357
    .line 1358
    move-object/from16 v0, p1

    .line 1359
    .line 1360
    check-cast v0, Lke;

    .line 1361
    .line 1362
    iget-boolean v1, v5, Lsd4;->n:Z

    .line 1363
    .line 1364
    if-eqz v1, :cond_1e

    .line 1365
    .line 1366
    iget-object v1, v0, Lke;->a:Ljava/lang/Object;

    .line 1367
    .line 1368
    iget v2, v0, Lke;->c:I

    .line 1369
    .line 1370
    iget v6, v0, Lke;->b:I

    .line 1371
    .line 1372
    instance-of v1, v1, Lw35;

    .line 1373
    .line 1374
    if-eqz v1, :cond_1e

    .line 1375
    .line 1376
    iget v1, v4, Lke;->b:I

    .line 1377
    .line 1378
    if-ne v6, v1, :cond_1e

    .line 1379
    .line 1380
    iget v1, v4, Lke;->c:I

    .line 1381
    .line 1382
    if-ne v2, v1, :cond_1e

    .line 1383
    .line 1384
    new-instance v1, Lke;

    .line 1385
    .line 1386
    if-nez v3, :cond_1d

    .line 1387
    .line 1388
    new-instance v7, Lw35;

    .line 1389
    .line 1390
    const/16 v25, 0x0

    .line 1391
    .line 1392
    const v26, 0xffff

    .line 1393
    .line 1394
    .line 1395
    const-wide/16 v8, 0x0

    .line 1396
    .line 1397
    const-wide/16 v10, 0x0

    .line 1398
    .line 1399
    const/4 v12, 0x0

    .line 1400
    const/4 v13, 0x0

    .line 1401
    const/4 v14, 0x0

    .line 1402
    const/4 v15, 0x0

    .line 1403
    const/16 v16, 0x0

    .line 1404
    .line 1405
    const-wide/16 v17, 0x0

    .line 1406
    .line 1407
    const/16 v19, 0x0

    .line 1408
    .line 1409
    const/16 v20, 0x0

    .line 1410
    .line 1411
    const/16 v21, 0x0

    .line 1412
    .line 1413
    const-wide/16 v22, 0x0

    .line 1414
    .line 1415
    const/16 v24, 0x0

    .line 1416
    .line 1417
    invoke-direct/range {v7 .. v26}, Lw35;-><init>(JJLcr1;Lyq1;Lzq1;Laq1;Ljava/lang/String;JLps;Lvf5;Lxz2;JLne5;Lpy4;I)V

    .line 1418
    .line 1419
    .line 1420
    move-object v3, v7

    .line 1421
    :cond_1d
    invoke-direct {v1, v3, v6, v2}, Lke;-><init>(Ljava/lang/Object;II)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_6

    .line 1425
    :cond_1e
    move-object v1, v0

    .line 1426
    :goto_6
    invoke-virtual {v4, v0}, Lke;->equals(Ljava/lang/Object;)Z

    .line 1427
    .line 1428
    .line 1429
    move-result v0

    .line 1430
    iput-boolean v0, v5, Lsd4;->n:Z

    .line 1431
    .line 1432
    return-object v1

    .line 1433
    :pswitch_34
    check-cast v5, Lt;

    .line 1434
    .line 1435
    check-cast v4, Lro0;

    .line 1436
    .line 1437
    check-cast v3, Lyp;

    .line 1438
    .line 1439
    move-object/from16 v0, p1

    .line 1440
    .line 1441
    check-cast v0, Ljava/lang/Throwable;

    .line 1442
    .line 1443
    invoke-virtual {v5, v0}, Lt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    iget-object v1, v4, Lro0;->q:Ljava/lang/Object;

    .line 1447
    .line 1448
    check-cast v1, Lwy;

    .line 1449
    .line 1450
    invoke-virtual {v1, v0, v2}, Lwy;->h(Ljava/lang/Throwable;Z)Z

    .line 1451
    .line 1452
    .line 1453
    :goto_7
    invoke-virtual {v1}, Lwy;->k()Ljava/lang/Object;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v2

    .line 1457
    invoke-static {v2}, Le70;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v2

    .line 1461
    if-eqz v2, :cond_1f

    .line 1462
    .line 1463
    invoke-virtual {v3, v2, v0}, Lyp;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    goto :goto_7

    .line 1467
    :cond_1f
    return-object v10

    .line 1468
    :pswitch_35
    move-object v11, v5

    .line 1469
    check-cast v11, Lth;

    .line 1470
    .line 1471
    move-object/from16 v16, v4

    .line 1472
    .line 1473
    check-cast v16, Ldw3;

    .line 1474
    .line 1475
    check-cast v3, Lsd4;

    .line 1476
    .line 1477
    move-object/from16 v0, p1

    .line 1478
    .line 1479
    check-cast v0, Lo14;

    .line 1480
    .line 1481
    iget-wide v13, v0, Lo14;->c:J

    .line 1482
    .line 1483
    iget-object v1, v11, Lth;->q:Ljava/lang/Object;

    .line 1484
    .line 1485
    check-cast v1, Lkf5;

    .line 1486
    .line 1487
    invoke-virtual {v1}, Lkf5;->k()Z

    .line 1488
    .line 1489
    .line 1490
    move-result v4

    .line 1491
    if-eqz v4, :cond_22

    .line 1492
    .line 1493
    invoke-virtual {v1}, Lkf5;->n()Lsf5;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v4

    .line 1497
    iget-object v4, v4, Lsf5;->a:Lle;

    .line 1498
    .line 1499
    iget-object v4, v4, Lle;->o:Ljava/lang/String;

    .line 1500
    .line 1501
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1502
    .line 1503
    .line 1504
    move-result v4

    .line 1505
    if-nez v4, :cond_20

    .line 1506
    .line 1507
    goto :goto_8

    .line 1508
    :cond_20
    iget-object v4, v1, Lkf5;->d:Ltt2;

    .line 1509
    .line 1510
    if-eqz v4, :cond_22

    .line 1511
    .line 1512
    invoke-virtual {v4}, Ltt2;->d()Lkg5;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v4

    .line 1516
    if-nez v4, :cond_21

    .line 1517
    .line 1518
    goto :goto_8

    .line 1519
    :cond_21
    invoke-virtual {v1}, Lkf5;->n()Lsf5;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v12

    .line 1523
    const/4 v15, 0x0

    .line 1524
    invoke-virtual/range {v11 .. v16}, Lth;->f(Lsf5;JZLdw3;)J

    .line 1525
    .line 1526
    .line 1527
    move v2, v9

    .line 1528
    :cond_22
    :goto_8
    if-eqz v2, :cond_23

    .line 1529
    .line 1530
    invoke-virtual {v0}, Lo14;->a()V

    .line 1531
    .line 1532
    .line 1533
    iput-boolean v9, v3, Lsd4;->n:Z

    .line 1534
    .line 1535
    :cond_23
    return-object v10

    .line 1536
    :pswitch_36
    check-cast v5, Lum4;

    .line 1537
    .line 1538
    check-cast v3, Lzm4;

    .line 1539
    .line 1540
    move-object/from16 v0, p1

    .line 1541
    .line 1542
    check-cast v0, Lqz0;

    .line 1543
    .line 1544
    iget-object v0, v5, Lum4;->o:Lid3;

    .line 1545
    .line 1546
    invoke-virtual {v0, v4}, Lid3;->b(Ljava/lang/Object;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v1

    .line 1550
    if-nez v1, :cond_24

    .line 1551
    .line 1552
    iget-object v1, v5, Lum4;->n:Ljava/util/Map;

    .line 1553
    .line 1554
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v0, v4, v3}, Lid3;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1558
    .line 1559
    .line 1560
    new-instance v15, Ltc;

    .line 1561
    .line 1562
    invoke-direct {v15, v14, v5, v4, v3}, Ltc;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1563
    .line 1564
    .line 1565
    goto :goto_9

    .line 1566
    :cond_24
    const-string v0, "Key "

    .line 1567
    .line 1568
    const-string v1, " was used multiple times "

    .line 1569
    .line 1570
    invoke-static {v0, v4, v1}, Ldw3;->k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1571
    .line 1572
    .line 1573
    :goto_9
    return-object v15

    .line 1574
    :pswitch_37
    check-cast v5, Lj04;

    .line 1575
    .line 1576
    check-cast v4, Lqs1;

    .line 1577
    .line 1578
    check-cast v3, Lpd3;

    .line 1579
    .line 1580
    move-object/from16 v0, p1

    .line 1581
    .line 1582
    check-cast v0, Lf81;

    .line 1583
    .line 1584
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1585
    .line 1586
    .line 1587
    iget-object v1, v0, Lf81;->g:Lr81;

    .line 1588
    .line 1589
    iget-object v2, v5, Lj04;->n:Lyw3;

    .line 1590
    .line 1591
    if-nez v2, :cond_25

    .line 1592
    .line 1593
    goto :goto_b

    .line 1594
    :cond_25
    iget-boolean v5, v0, Lf81;->k:Z

    .line 1595
    .line 1596
    if-nez v5, :cond_2b

    .line 1597
    .line 1598
    sget-object v5, Lq81;->a:Lq81;

    .line 1599
    .line 1600
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v5

    .line 1604
    if-eqz v5, :cond_26

    .line 1605
    .line 1606
    goto :goto_b

    .line 1607
    :cond_26
    instance-of v5, v1, Lo81;

    .line 1608
    .line 1609
    if-eqz v5, :cond_27

    .line 1610
    .line 1611
    check-cast v1, Lo81;

    .line 1612
    .line 1613
    goto :goto_a

    .line 1614
    :cond_27
    move-object v1, v15

    .line 1615
    :goto_a
    new-instance v16, Laj3;

    .line 1616
    .line 1617
    iget v5, v2, Lyw3;->a:I

    .line 1618
    .line 1619
    iget v6, v0, Lf81;->a:I

    .line 1620
    .line 1621
    iget v7, v0, Lf81;->b:I

    .line 1622
    .line 1623
    iget-object v8, v2, Lyw3;->e:Ljava/lang/String;

    .line 1624
    .line 1625
    iget-object v9, v2, Lyw3;->f:Ljava/lang/String;

    .line 1626
    .line 1627
    iget-object v12, v0, Lf81;->d:Ljava/lang/String;

    .line 1628
    .line 1629
    if-nez v12, :cond_28

    .line 1630
    .line 1631
    iget-object v12, v2, Lyw3;->j:Ljava/lang/String;

    .line 1632
    .line 1633
    :cond_28
    move-object/from16 v22, v12

    .line 1634
    .line 1635
    if-eqz v1, :cond_29

    .line 1636
    .line 1637
    iget-object v15, v2, Lyw3;->g:Ljava/lang/String;

    .line 1638
    .line 1639
    :cond_29
    move-object/from16 v23, v15

    .line 1640
    .line 1641
    if-eqz v1, :cond_2a

    .line 1642
    .line 1643
    iget v11, v1, Lo81;->a:I

    .line 1644
    .line 1645
    :cond_2a
    move/from16 v24, v11

    .line 1646
    .line 1647
    iget-object v1, v2, Lyw3;->i:Ljava/lang/String;

    .line 1648
    .line 1649
    iget-wide v11, v0, Lf81;->j:J

    .line 1650
    .line 1651
    move-object/from16 v25, v1

    .line 1652
    .line 1653
    move/from16 v17, v5

    .line 1654
    .line 1655
    move/from16 v18, v6

    .line 1656
    .line 1657
    move/from16 v19, v7

    .line 1658
    .line 1659
    move-object/from16 v20, v8

    .line 1660
    .line 1661
    move-object/from16 v21, v9

    .line 1662
    .line 1663
    move-wide/from16 v26, v11

    .line 1664
    .line 1665
    invoke-direct/range {v16 .. v27}, Laj3;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1666
    .line 1667
    .line 1668
    move-object/from16 v15, v16

    .line 1669
    .line 1670
    :cond_2b
    :goto_b
    if-eqz v15, :cond_2c

    .line 1671
    .line 1672
    invoke-interface {v4, v15}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    goto :goto_c

    .line 1676
    :cond_2c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1677
    .line 1678
    invoke-interface {v3, v0}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 1679
    .line 1680
    .line 1681
    :goto_c
    return-object v10

    .line 1682
    :pswitch_38
    check-cast v5, Ls81;

    .line 1683
    .line 1684
    check-cast v4, Lyo1;

    .line 1685
    .line 1686
    check-cast v3, Lqs1;

    .line 1687
    .line 1688
    move-object/from16 v0, p1

    .line 1689
    .line 1690
    check-cast v0, Lps2;

    .line 1691
    .line 1692
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1693
    .line 1694
    .line 1695
    iget-object v1, v5, Ls81;->a:Ljava/util/List;

    .line 1696
    .line 1697
    new-instance v2, Lyi3;

    .line 1698
    .line 1699
    const/16 v6, 0xd

    .line 1700
    .line 1701
    invoke-direct {v2, v6}, Lyi3;-><init>(I)V

    .line 1702
    .line 1703
    .line 1704
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1705
    .line 1706
    .line 1707
    move-result v6

    .line 1708
    new-instance v7, Lxx;

    .line 1709
    .line 1710
    invoke-direct {v7, v2, v1}, Lxx;-><init>(Lyi3;Ljava/util/List;)V

    .line 1711
    .line 1712
    .line 1713
    new-instance v2, Lxx;

    .line 1714
    .line 1715
    const/16 v8, 0x17

    .line 1716
    .line 1717
    invoke-direct {v2, v8, v1}, Lxx;-><init>(ILjava/util/List;)V

    .line 1718
    .line 1719
    .line 1720
    new-instance v8, Lnz3;

    .line 1721
    .line 1722
    invoke-direct {v8, v1, v5, v4, v3}, Lnz3;-><init>(Ljava/util/List;Ls81;Lyo1;Lqs1;)V

    .line 1723
    .line 1724
    .line 1725
    new-instance v1, Lme0;

    .line 1726
    .line 1727
    const v3, 0x2fd4df92

    .line 1728
    .line 1729
    .line 1730
    invoke-direct {v1, v3, v9, v8}, Lme0;-><init>(IZLat1;)V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v0, v6, v7, v2, v1}, Lps2;->e0(ILqs1;Lqs1;Lme0;)V

    .line 1734
    .line 1735
    .line 1736
    return-object v10

    .line 1737
    :pswitch_39
    check-cast v5, Lju2;

    .line 1738
    .line 1739
    check-cast v4, Lqu2;

    .line 1740
    .line 1741
    check-cast v3, Lqs1;

    .line 1742
    .line 1743
    move-object/from16 v0, p1

    .line 1744
    .line 1745
    check-cast v0, Lqz0;

    .line 1746
    .line 1747
    new-instance v0, Lwd4;

    .line 1748
    .line 1749
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1750
    .line 1751
    .line 1752
    new-instance v1, Lfu2;

    .line 1753
    .line 1754
    invoke-direct {v1, v4, v0, v3}, Lfu2;-><init>(Lqu2;Lwd4;Lqs1;)V

    .line 1755
    .line 1756
    .line 1757
    invoke-interface {v5}, Lju2;->h()Llu2;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v2

    .line 1761
    invoke-virtual {v2, v1}, Llu2;->a(Liu2;)V

    .line 1762
    .line 1763
    .line 1764
    new-instance v2, Ltc;

    .line 1765
    .line 1766
    invoke-direct {v2, v12, v5, v1, v0}, Ltc;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1767
    .line 1768
    .line 1769
    return-object v2

    .line 1770
    :pswitch_3a
    check-cast v5, Lju2;

    .line 1771
    .line 1772
    check-cast v4, Lry1;

    .line 1773
    .line 1774
    check-cast v3, Lpd3;

    .line 1775
    .line 1776
    move-object/from16 v0, p1

    .line 1777
    .line 1778
    check-cast v0, Lqz0;

    .line 1779
    .line 1780
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1781
    .line 1782
    .line 1783
    new-instance v0, Ltd0;

    .line 1784
    .line 1785
    invoke-direct {v0, v4, v3, v9}, Ltd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1786
    .line 1787
    .line 1788
    invoke-interface {v5}, Lju2;->h()Llu2;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v1

    .line 1792
    invoke-virtual {v1, v0}, Llu2;->a(Liu2;)V

    .line 1793
    .line 1794
    .line 1795
    new-instance v1, Lln;

    .line 1796
    .line 1797
    invoke-direct {v1, v5, v0, v13}, Lln;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1798
    .line 1799
    .line 1800
    return-object v1

    .line 1801
    :pswitch_3b
    move-object/from16 v16, v5

    .line 1802
    .line 1803
    check-cast v16, Lry1;

    .line 1804
    .line 1805
    check-cast v4, Lpd3;

    .line 1806
    .line 1807
    check-cast v3, Lpd3;

    .line 1808
    .line 1809
    move-object/from16 v0, p1

    .line 1810
    .line 1811
    check-cast v0, Ljava/lang/Long;

    .line 1812
    .line 1813
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1814
    .line 1815
    .line 1816
    move-result-wide v17

    .line 1817
    const/4 v0, 0x0

    .line 1818
    invoke-interface {v4, v0}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 1819
    .line 1820
    .line 1821
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1822
    .line 1823
    invoke-interface {v3, v1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 1824
    .line 1825
    .line 1826
    invoke-static/range {v16 .. v16}, Lup0;->u(Lnb6;)Lo90;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v1

    .line 1830
    new-instance v15, Lcc;

    .line 1831
    .line 1832
    const/16 v20, 0x1

    .line 1833
    .line 1834
    move-object/from16 v19, v0

    .line 1835
    .line 1836
    invoke-direct/range {v15 .. v20}, Lcc;-><init>(Ljava/lang/Object;JLfk0;I)V

    .line 1837
    .line 1838
    .line 1839
    invoke-static {v1, v0, v15, v14}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 1840
    .line 1841
    .line 1842
    return-object v10

    .line 1843
    :pswitch_3c
    check-cast v5, Lqs1;

    .line 1844
    .line 1845
    check-cast v4, Lpd3;

    .line 1846
    .line 1847
    check-cast v3, Lpd3;

    .line 1848
    .line 1849
    move-object/from16 v0, p1

    .line 1850
    .line 1851
    check-cast v0, Lhp1;

    .line 1852
    .line 1853
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v0}, Lhp1;->a()Z

    .line 1857
    .line 1858
    .line 1859
    move-result v1

    .line 1860
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v1

    .line 1864
    invoke-interface {v4, v1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {v0}, Lhp1;->a()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v1

    .line 1871
    if-eqz v1, :cond_2d

    .line 1872
    .line 1873
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1874
    .line 1875
    invoke-interface {v3, v1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 1876
    .line 1877
    .line 1878
    :cond_2d
    if-eqz v5, :cond_2e

    .line 1879
    .line 1880
    invoke-virtual {v0}, Lhp1;->a()Z

    .line 1881
    .line 1882
    .line 1883
    move-result v0

    .line 1884
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v0

    .line 1888
    invoke-interface {v5, v0}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    .line 1890
    .line 1891
    :cond_2e
    return-object v10

    .line 1892
    :pswitch_3d
    check-cast v5, Lno1;

    .line 1893
    .line 1894
    check-cast v4, Llg3;

    .line 1895
    .line 1896
    check-cast v3, Lpd3;

    .line 1897
    .line 1898
    move-object/from16 v0, p1

    .line 1899
    .line 1900
    check-cast v0, Ljava/lang/Integer;

    .line 1901
    .line 1902
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1903
    .line 1904
    .line 1905
    move-result v0

    invoke-static {v4}, LSmartTubeBridge;->setNavController(Ljava/lang/Object;)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_apps_skip

    iget-object v1, v4, Llg3;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lapp/flux/tv/AppsActivity;

    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10010000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v10

    :cond_apps_skip
    invoke-interface {v3}, Lq55;->getValue()Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v1

    .line 1910
    check-cast v1, Lpf3;

    .line 1911
    .line 1912
    if-eqz v1, :cond_2f

    .line 1913
    .line 1914
    iget-object v1, v1, Lpf3;->o:Ldg3;

    .line 1915
    .line 1916
    if-eqz v1, :cond_2f

    .line 1917
    .line 1918
    sget v3, Ldg3;->r:I

    .line 1919
    .line 1920
    sget-object v3, Lhn1;->a:Ljava/util/List;

    .line 1921
    .line 1922
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v3

    .line 1926
    check-cast v3, Lbc5;

    .line 1927
    .line 1928
    iget-object v3, v3, Lbc5;->c:Lo80;

    .line 1929
    .line 1930
    invoke-static {v1, v3}, Le41;->D(Ldg3;Lo80;)Z

    .line 1931
    .line 1932
    .line 1933
    move-result v1

    .line 1934
    if-ne v1, v9, :cond_2f

    .line 1935
    .line 1936
    check-cast v5, Lqo1;

    .line 1937
    .line 1938
    invoke-virtual {v5, v13, v9}, Lqo1;->g(IZ)Z

    .line 1939
    .line 1940
    .line 1941
    goto :goto_d

    .line 1942
    :cond_2f
    sget-object v1, Lhn1;->a:Ljava/util/List;

    .line 1943
    .line 1944
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    check-cast v1, Lbc5;

    .line 1949
    .line 1950
    iget-object v1, v1, Lbc5;->a:Lgn1;

    .line 1951
    .line 1952
    new-instance v3, Lhl1;

    .line 1953
    .line 1954
    invoke-direct {v3, v4, v0, v2}, Lhl1;-><init>(Ljava/lang/Object;II)V

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {v4, v1, v3}, Llg3;->c(Lgn1;Lqs1;)V

    .line 1958
    .line 1959
    .line 1960
    :goto_d
    return-object v10

    .line 1961
    :pswitch_3e
    check-cast v5, Ls71;

    .line 1962
    .line 1963
    check-cast v4, Ljava/util/ArrayList;

    .line 1964
    .line 1965
    check-cast v3, Lpx3;

    .line 1966
    .line 1967
    move-object/from16 v0, p1

    .line 1968
    .line 1969
    check-cast v0, Lzl4;

    .line 1970
    .line 1971
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1975
    .line 1976
    .line 1977
    iget-object v0, v5, Ls71;->a:Lsi4;

    .line 1978
    .line 1979
    new-instance v1, Lzv0;

    .line 1980
    .line 1981
    const/16 v6, 0xb

    .line 1982
    .line 1983
    invoke-direct {v1, v6}, Lzv0;-><init>(I)V

    .line 1984
    .line 1985
    .line 1986
    invoke-static {v0, v9, v2, v1}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v1

    .line 1990
    check-cast v1, Ljava/util/List;

    .line 1991
    .line 1992
    const/16 v6, 0xa

    .line 1993
    .line 1994
    invoke-static {v1, v6}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 1995
    .line 1996
    .line 1997
    move-result v6

    .line 1998
    invoke-static {v6}, Lb33;->X(I)I

    .line 1999
    .line 2000
    .line 2001
    move-result v6

    .line 2002
    if-ge v6, v7, :cond_30

    .line 2003
    .line 2004
    goto :goto_e

    .line 2005
    :cond_30
    move v7, v6

    .line 2006
    :goto_e
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 2007
    .line 2008
    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2009
    .line 2010
    .line 2011
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v1

    .line 2015
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2016
    .line 2017
    .line 2018
    move-result v7

    .line 2019
    if-eqz v7, :cond_31

    .line 2020
    .line 2021
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v7

    .line 2025
    move-object v8, v7

    .line 2026
    check-cast v8, Lk71;

    .line 2027
    .line 2028
    iget-object v8, v8, Lk71;->a:Ljava/lang/String;

    .line 2029
    .line 2030
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    goto :goto_f

    .line 2034
    :cond_31
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2035
    .line 2036
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2037
    .line 2038
    .line 2039
    move-result v7

    .line 2040
    mul-int/2addr v7, v12

    .line 2041
    invoke-direct {v1, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v7

    .line 2048
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 2049
    .line 2050
    .line 2051
    move-result v8

    .line 2052
    if-eqz v8, :cond_32

    .line 2053
    .line 2054
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v8

    .line 2058
    move-object v10, v8

    .line 2059
    check-cast v10, Lk71;

    .line 2060
    .line 2061
    iget-object v10, v10, Lk71;->a:Ljava/lang/String;

    .line 2062
    .line 2063
    invoke-virtual {v1, v10, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    .line 2065
    .line 2066
    goto :goto_10

    .line 2067
    :cond_32
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v1

    .line 2071
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2072
    .line 2073
    .line 2074
    check-cast v1, Ljava/lang/Iterable;

    .line 2075
    .line 2076
    new-instance v7, Ljava/util/ArrayList;

    .line 2077
    .line 2078
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2079
    .line 2080
    .line 2081
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v1

    .line 2085
    :cond_33
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2086
    .line 2087
    .line 2088
    move-result v8

    .line 2089
    if-eqz v8, :cond_35

    .line 2090
    .line 2091
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v8

    .line 2095
    move-object v10, v8

    .line 2096
    check-cast v10, Lk71;

    .line 2097
    .line 2098
    iget-object v11, v10, Lk71;->a:Ljava/lang/String;

    .line 2099
    .line 2100
    invoke-virtual {v6, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v11

    .line 2104
    check-cast v11, Lk71;

    .line 2105
    .line 2106
    if-eqz v11, :cond_34

    .line 2107
    .line 2108
    iget-object v12, v11, Lk71;->b:Ljava/lang/String;

    .line 2109
    .line 2110
    iget-object v13, v10, Lk71;->b:Ljava/lang/String;

    .line 2111
    .line 2112
    invoke-static {v12, v13}, Lni2;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2113
    .line 2114
    .line 2115
    move-result v12

    .line 2116
    if-eqz v12, :cond_34

    .line 2117
    .line 2118
    iget-object v12, v11, Lk71;->c:Ljava/lang/String;

    .line 2119
    .line 2120
    iget-object v13, v10, Lk71;->c:Ljava/lang/String;

    .line 2121
    .line 2122
    invoke-static {v12, v13}, Lni2;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2123
    .line 2124
    .line 2125
    move-result v12

    .line 2126
    if-eqz v12, :cond_34

    .line 2127
    .line 2128
    iget-object v11, v11, Lk71;->d:Ljava/lang/String;

    .line 2129
    .line 2130
    iget-object v10, v10, Lk71;->d:Ljava/lang/String;

    .line 2131
    .line 2132
    invoke-static {v11, v10}, Lni2;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2133
    .line 2134
    .line 2135
    move-result v10

    .line 2136
    if-nez v10, :cond_33

    .line 2137
    .line 2138
    :cond_34
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    .line 2140
    .line 2141
    goto :goto_11

    .line 2142
    :cond_35
    const/16 v8, 0x1f4

    .line 2143
    .line 2144
    invoke-static {v7, v8, v8, v9}, Lxa0;->W0(Ljava/lang/Iterable;IIZ)Ljava/util/ArrayList;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v1

    .line 2148
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v1

    .line 2152
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2153
    .line 2154
    .line 2155
    move-result v6

    .line 2156
    if-eqz v6, :cond_36

    .line 2157
    .line 2158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v6

    .line 2162
    check-cast v6, Ljava/util/List;

    .line 2163
    .line 2164
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2165
    .line 2166
    .line 2167
    new-instance v8, Lo71;

    .line 2168
    .line 2169
    invoke-direct {v8, v5, v6, v9}, Lo71;-><init>(Ls71;Ljava/util/List;I)V

    .line 2170
    .line 2171
    .line 2172
    invoke-static {v0, v2, v9, v8}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    goto :goto_12

    .line 2176
    :cond_36
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v0

    .line 2180
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2181
    .line 2182
    .line 2183
    move-result v1

    .line 2184
    if-eqz v1, :cond_37

    .line 2185
    .line 2186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v1

    .line 2190
    check-cast v1, Lk71;

    .line 2191
    .line 2192
    iget-object v2, v3, Lpx3;->o:Ljava/lang/Object;

    .line 2193
    .line 2194
    check-cast v2, Ljava/util/HashSet;

    .line 2195
    .line 2196
    iget-object v1, v1, Lk71;->a:Ljava/lang/String;

    .line 2197
    .line 2198
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2199
    .line 2200
    .line 2201
    goto :goto_13

    .line 2202
    :cond_37
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 2203
    .line 2204
    .line 2205
    move-result v0

    .line 2206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v0

    .line 2210
    return-object v0

    .line 2211
    :pswitch_3f
    move-object v12, v5

    .line 2212
    check-cast v12, Ls71;

    .line 2213
    .line 2214
    check-cast v4, Lv71;

    .line 2215
    .line 2216
    check-cast v3, Lpx3;

    .line 2217
    .line 2218
    move-object/from16 v0, p1

    .line 2219
    .line 2220
    check-cast v0, Lzl4;

    .line 2221
    .line 2222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2223
    .line 2224
    .line 2225
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2226
    .line 2227
    .line 2228
    iget-object v0, v12, Ls71;->a:Lsi4;

    .line 2229
    .line 2230
    new-instance v1, Lzv0;

    .line 2231
    .line 2232
    const/16 v5, 0xd

    .line 2233
    .line 2234
    invoke-direct {v1, v5}, Lzv0;-><init>(I)V

    .line 2235
    .line 2236
    .line 2237
    invoke-static {v0, v9, v2, v1}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v1

    .line 2241
    check-cast v1, Ljava/util/List;

    .line 2242
    .line 2243
    iget-object v5, v3, Lpx3;->p:Ljava/lang/Object;

    .line 2244
    .line 2245
    check-cast v5, Lt90;

    .line 2246
    .line 2247
    new-instance v10, Ll;

    .line 2248
    .line 2249
    const/16 v17, 0x0

    .line 2250
    .line 2251
    const/16 v18, 0xb

    .line 2252
    .line 2253
    const/4 v11, 0x1

    .line 2254
    const-class v13, Ls71;

    .line 2255
    .line 2256
    const-string v14, "programmeStarts"

    .line 2257
    .line 2258
    const-string v15, "programmeStarts(Ljava/lang/String;)Ljava/util/List;"

    .line 2259
    .line 2260
    const/16 v16, 0x0

    .line 2261
    .line 2262
    invoke-direct/range {v10 .. v18}, Ll;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 2263
    .line 2264
    .line 2265
    invoke-static {v1, v5, v10}, Ly31;->U(Ljava/util/List;Lt90;Lqs1;)Lrf2;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v1

    .line 2269
    new-instance v10, Ll;

    .line 2270
    .line 2271
    const/16 v18, 0xc

    .line 2272
    .line 2273
    const-class v13, Ls71;

    .line 2274
    .line 2275
    const-string v14, "deleteChannelProgrammes"

    .line 2276
    .line 2277
    const-string v15, "deleteChannelProgrammes(Ljava/lang/String;)I"

    .line 2278
    .line 2279
    invoke-direct/range {v10 .. v18}, Ll;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 2280
    .line 2281
    .line 2282
    move-object v5, v10

    .line 2283
    new-instance v10, Ll71;

    .line 2284
    .line 2285
    const/16 v18, 0x1

    .line 2286
    .line 2287
    const/4 v11, 0x2

    .line 2288
    const-class v13, Ls71;

    .line 2289
    .line 2290
    const-string v14, "deleteProgrammes"

    .line 2291
    .line 2292
    const-string v15, "deleteProgrammes(Ljava/lang/String;Ljava/util/List;)I"

    .line 2293
    .line 2294
    invoke-direct/range {v10 .. v18}, Ll71;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 2295
    .line 2296
    .line 2297
    invoke-static {v1, v5, v10}, Ls71;->a(Lrf2;Lqs1;Let1;)I

    .line 2298
    .line 2299
    .line 2300
    move-result v1

    .line 2301
    new-instance v5, Lzv0;

    .line 2302
    .line 2303
    const/16 v7, 0xe

    .line 2304
    .line 2305
    invoke-direct {v5, v7}, Lzv0;-><init>(I)V

    .line 2306
    .line 2307
    .line 2308
    invoke-static {v0, v9, v2, v5}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v5

    .line 2312
    check-cast v5, Ljava/util/List;

    .line 2313
    .line 2314
    iget-object v7, v3, Lpx3;->q:Ljava/lang/Object;

    .line 2315
    .line 2316
    check-cast v7, Lt90;

    .line 2317
    .line 2318
    new-instance v10, Ll;

    .line 2319
    .line 2320
    const/16 v18, 0x9

    .line 2321
    .line 2322
    const/4 v11, 0x1

    .line 2323
    const-class v13, Ls71;

    .line 2324
    .line 2325
    const-string v14, "descriptionStarts"

    .line 2326
    .line 2327
    const-string v15, "descriptionStarts(Ljava/lang/String;)Ljava/util/List;"

    .line 2328
    .line 2329
    invoke-direct/range {v10 .. v18}, Ll;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 2330
    .line 2331
    .line 2332
    invoke-static {v5, v7, v10}, Ly31;->U(Ljava/util/List;Lt90;Lqs1;)Lrf2;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v5

    .line 2336
    new-instance v10, Ll;

    .line 2337
    .line 2338
    const/16 v18, 0xa

    .line 2339
    .line 2340
    const-class v13, Ls71;

    .line 2341
    .line 2342
    const-string v14, "deleteChannelDescriptions"

    .line 2343
    .line 2344
    const-string v15, "deleteChannelDescriptions(Ljava/lang/String;)I"

    .line 2345
    .line 2346
    invoke-direct/range {v10 .. v18}, Ll;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 2347
    .line 2348
    .line 2349
    move-object v7, v10

    .line 2350
    new-instance v10, Ll71;

    .line 2351
    .line 2352
    const/16 v18, 0x0

    .line 2353
    .line 2354
    const/4 v11, 0x2

    .line 2355
    const-class v13, Ls71;

    .line 2356
    .line 2357
    const-string v14, "deleteDescriptions"

    .line 2358
    .line 2359
    const-string v15, "deleteDescriptions(Ljava/lang/String;Ljava/util/List;)I"

    .line 2360
    .line 2361
    invoke-direct/range {v10 .. v18}, Ll71;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 2362
    .line 2363
    .line 2364
    invoke-static {v5, v7, v10}, Ls71;->a(Lrf2;Lqs1;Let1;)I

    .line 2365
    .line 2366
    .line 2367
    move-result v5

    .line 2368
    new-instance v7, Lzv0;

    .line 2369
    .line 2370
    invoke-direct {v7, v6}, Lzv0;-><init>(I)V

    .line 2371
    .line 2372
    .line 2373
    invoke-static {v0, v9, v2, v7}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v6

    .line 2377
    check-cast v6, Ljava/util/List;

    .line 2378
    .line 2379
    new-instance v7, Ljava/util/ArrayList;

    .line 2380
    .line 2381
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2382
    .line 2383
    .line 2384
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v6

    .line 2388
    :cond_38
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2389
    .line 2390
    .line 2391
    move-result v10

    .line 2392
    if-eqz v10, :cond_39

    .line 2393
    .line 2394
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v10

    .line 2398
    move-object v11, v10

    .line 2399
    check-cast v11, Ljava/lang/String;

    .line 2400
    .line 2401
    iget-object v13, v3, Lpx3;->o:Ljava/lang/Object;

    .line 2402
    .line 2403
    check-cast v13, Ljava/util/HashSet;

    .line 2404
    .line 2405
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2406
    .line 2407
    .line 2408
    move-result v11

    .line 2409
    if-nez v11, :cond_38

    .line 2410
    .line 2411
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    .line 2413
    .line 2414
    goto :goto_14

    .line 2415
    :cond_39
    const/16 v10, 0x1f4

    .line 2416
    .line 2417
    invoke-static {v7, v10, v10, v9}, Lxa0;->W0(Ljava/lang/Iterable;IIZ)Ljava/util/ArrayList;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v3

    .line 2421
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v3

    .line 2425
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2426
    .line 2427
    .line 2428
    move-result v6

    .line 2429
    if-eqz v6, :cond_3a

    .line 2430
    .line 2431
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v6

    .line 2435
    check-cast v6, Ljava/util/List;

    .line 2436
    .line 2437
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2438
    .line 2439
    .line 2440
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2441
    .line 2442
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2443
    .line 2444
    .line 2445
    const-string v11, "DELETE FROM epg_channel WHERE id IN ("

    .line 2446
    .line 2447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    .line 2449
    .line 2450
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 2451
    .line 2452
    .line 2453
    move-result v11

    .line 2454
    invoke-static {v10, v11}, Lqs4;->e(Ljava/lang/StringBuilder;I)V

    .line 2455
    .line 2456
    .line 2457
    const-string v11, ")"

    .line 2458
    .line 2459
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v10

    .line 2466
    new-instance v11, Lq71;

    .line 2467
    .line 2468
    invoke-direct {v11, v10, v6, v2}, Lq71;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 2469
    .line 2470
    .line 2471
    invoke-static {v0, v2, v9, v11}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 2472
    .line 2473
    .line 2474
    goto :goto_15

    .line 2475
    :cond_3a
    new-instance v3, Lj;

    .line 2476
    .line 2477
    invoke-direct {v3, v12, v4, v8}, Lj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2478
    .line 2479
    .line 2480
    invoke-static {v0, v2, v9, v3}, Lm86;->S(Lsi4;ZZLqs1;)Ljava/lang/Object;

    .line 2481
    .line 2482
    .line 2483
    add-int/2addr v1, v5

    .line 2484
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 2485
    .line 2486
    .line 2487
    move-result v0

    .line 2488
    add-int/2addr v0, v1

    .line 2489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v0

    .line 2493
    return-object v0

    .line 2494
    :pswitch_40
    check-cast v5, La25;

    .line 2495
    .line 2496
    check-cast v4, Lpf3;

    .line 2497
    .line 2498
    check-cast v3, Ltx0;

    .line 2499
    .line 2500
    move-object/from16 v0, p1

    .line 2501
    .line 2502
    check-cast v0, Lqz0;

    .line 2503
    .line 2504
    invoke-virtual {v5, v4}, La25;->add(Ljava/lang/Object;)Z

    .line 2505
    .line 2506
    .line 2507
    new-instance v0, Ltc;

    .line 2508
    .line 2509
    invoke-direct {v0, v3, v4, v5}, Ltc;-><init>(Ltx0;Lpf3;La25;)V

    .line 2510
    .line 2511
    .line 2512
    return-object v0

    .line 2513
    :pswitch_41
    check-cast v5, Lvd5;

    .line 2514
    .line 2515
    check-cast v4, Landroid/content/Context;

    .line 2516
    .line 2517
    check-cast v3, Lie5;

    .line 2518
    .line 2519
    move-object/from16 v0, p1

    .line 2520
    .line 2521
    check-cast v0, Lzj0;

    .line 2522
    .line 2523
    iget-object v1, v5, Lvd5;->a:Ljava/util/List;

    .line 2524
    .line 2525
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 2526
    .line 2527
    .line 2528
    move-result v5

    .line 2529
    move v6, v2

    .line 2530
    :goto_16
    if-ge v6, v5, :cond_3f

    .line 2531
    .line 2532
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v7

    .line 2536
    check-cast v7, Lud5;

    .line 2537
    .line 2538
    instance-of v8, v7, Lde5;

    .line 2539
    .line 2540
    if-eqz v8, :cond_3c

    .line 2541
    .line 2542
    new-instance v8, Lve0;

    .line 2543
    .line 2544
    check-cast v7, Lde5;

    .line 2545
    .line 2546
    const/4 v11, 0x5

    .line 2547
    invoke-direct {v8, v7, v11}, Lve0;-><init>(Ljava/lang/Object;I)V

    .line 2548
    .line 2549
    .line 2550
    iget v11, v7, Lde5;->c:I

    .line 2551
    .line 2552
    if-nez v11, :cond_3b

    .line 2553
    .line 2554
    move-object v12, v15

    .line 2555
    goto :goto_17

    .line 2556
    :cond_3b
    new-instance v11, Lwt0;

    .line 2557
    .line 2558
    invoke-direct {v11, v7, v2}, Lwt0;-><init>(Ljava/lang/Object;I)V

    .line 2559
    .line 2560
    .line 2561
    new-instance v12, Lme0;

    .line 2562
    .line 2563
    const v13, -0x731428a5

    .line 2564
    .line 2565
    .line 2566
    invoke-direct {v12, v13, v9, v11}, Lme0;-><init>(IZLat1;)V

    .line 2567
    .line 2568
    .line 2569
    :goto_17
    new-instance v11, Lza;

    .line 2570
    .line 2571
    const/16 v13, 0xe

    .line 2572
    .line 2573
    invoke-direct {v11, v7, v3, v13}, Lza;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2574
    .line 2575
    .line 2576
    const/4 v7, 0x6

    .line 2577
    invoke-static {v0, v8, v12, v11, v7}, Lzj0;->b(Lzj0;Let1;Lme0;Los1;I)V

    .line 2578
    .line 2579
    .line 2580
    goto :goto_18

    .line 2581
    :cond_3c
    const/16 v13, 0xe

    .line 2582
    .line 2583
    instance-of v8, v7, Lje5;

    .line 2584
    .line 2585
    if-eqz v8, :cond_3d

    .line 2586
    .line 2587
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2588
    .line 2589
    const/16 v11, 0x1c

    .line 2590
    .line 2591
    if-lt v8, v11, :cond_3e

    .line 2592
    .line 2593
    check-cast v7, Lje5;

    .line 2594
    .line 2595
    invoke-static {v0, v4, v7}, Lxv3;->k(Lzj0;Landroid/content/Context;Lje5;)V

    .line 2596
    .line 2597
    .line 2598
    goto :goto_18

    .line 2599
    :cond_3d
    instance-of v7, v7, Lhe5;

    .line 2600
    .line 2601
    if-eqz v7, :cond_3e

    .line 2602
    .line 2603
    iget-object v7, v0, Lzj0;->a:La25;

    .line 2604
    .line 2605
    sget-object v8, Lmi2;->c:Lme0;

    .line 2606
    .line 2607
    invoke-virtual {v7, v8}, La25;->add(Ljava/lang/Object;)Z

    .line 2608
    .line 2609
    .line 2610
    :cond_3e
    :goto_18
    add-int/lit8 v6, v6, 0x1

    .line 2611
    .line 2612
    goto :goto_16

    .line 2613
    :cond_3f
    return-object v10

    .line 2614
    :pswitch_42
    check-cast v5, Ltt2;

    .line 2615
    .line 2616
    check-cast v4, Lsf5;

    .line 2617
    .line 2618
    check-cast v3, Lnl3;

    .line 2619
    .line 2620
    move-object/from16 v0, p1

    .line 2621
    .line 2622
    check-cast v0, Ld21;

    .line 2623
    .line 2624
    invoke-virtual {v5}, Ltt2;->d()Lkg5;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v1

    .line 2628
    if-eqz v1, :cond_4f

    .line 2629
    .line 2630
    invoke-interface {v0}, Ld21;->Z()Lpx3;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v0

    .line 2634
    invoke-virtual {v0}, Lpx3;->D()Ln30;

    .line 2635
    .line 2636
    .line 2637
    move-result-object v6

    .line 2638
    iget-object v0, v5, Ltt2;->A:Lar3;

    .line 2639
    .line 2640
    invoke-virtual {v0}, Lar3;->getValue()Ljava/lang/Object;

    .line 2641
    .line 2642
    .line 2643
    move-result-object v0

    .line 2644
    check-cast v0, Ltg5;

    .line 2645
    .line 2646
    iget-wide v7, v0, Ltg5;->a:J

    .line 2647
    .line 2648
    iget-object v0, v5, Ltt2;->B:Lar3;

    .line 2649
    .line 2650
    invoke-virtual {v0}, Lar3;->getValue()Ljava/lang/Object;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v0

    .line 2654
    check-cast v0, Ltg5;

    .line 2655
    .line 2656
    iget-wide v11, v0, Ltg5;->a:J

    .line 2657
    .line 2658
    iget-object v0, v1, Lkg5;->a:Ljg5;

    .line 2659
    .line 2660
    iget-object v1, v0, Ljg5;->b:Lyb3;

    .line 2661
    .line 2662
    iget-object v13, v0, Ljg5;->a:Lig5;

    .line 2663
    .line 2664
    iget-object v2, v5, Ltt2;->y:Lh9;

    .line 2665
    .line 2666
    move-object/from16 v26, v10

    .line 2667
    .line 2668
    iget-wide v9, v5, Ltt2;->z:J

    .line 2669
    .line 2670
    invoke-static {v7, v8}, Ltg5;->c(J)Z

    .line 2671
    .line 2672
    .line 2673
    move-result v5

    .line 2674
    if-nez v5, :cond_40

    .line 2675
    .line 2676
    invoke-virtual {v2, v9, v10}, Lh9;->e(J)V

    .line 2677
    .line 2678
    .line 2679
    invoke-static {v7, v8}, Ltg5;->f(J)I

    .line 2680
    .line 2681
    .line 2682
    move-result v4

    .line 2683
    invoke-interface {v3, v4}, Lnl3;->r(I)I

    .line 2684
    .line 2685
    .line 2686
    move-result v4

    .line 2687
    invoke-static {v7, v8}, Ltg5;->e(J)I

    .line 2688
    .line 2689
    .line 2690
    move-result v5

    .line 2691
    invoke-interface {v3, v5}, Lnl3;->r(I)I

    .line 2692
    .line 2693
    .line 2694
    move-result v3

    .line 2695
    if-eq v4, v3, :cond_44

    .line 2696
    .line 2697
    invoke-virtual {v0, v4, v3}, Ljg5;->i(II)Lo9;

    .line 2698
    .line 2699
    .line 2700
    move-result-object v3

    .line 2701
    invoke-interface {v6, v3, v2}, Ln30;->e(Lo9;Lh9;)V

    .line 2702
    .line 2703
    .line 2704
    goto/16 :goto_1b

    .line 2705
    .line 2706
    :cond_40
    invoke-static {v11, v12}, Ltg5;->c(J)Z

    .line 2707
    .line 2708
    .line 2709
    move-result v5

    .line 2710
    if-nez v5, :cond_43

    .line 2711
    .line 2712
    iget-object v4, v13, Lig5;->b:Ldh5;

    .line 2713
    .line 2714
    invoke-virtual {v4}, Ldh5;->b()J

    .line 2715
    .line 2716
    .line 2717
    move-result-wide v4

    .line 2718
    new-instance v7, Lpb0;

    .line 2719
    .line 2720
    invoke-direct {v7, v4, v5}, Lpb0;-><init>(J)V

    .line 2721
    .line 2722
    .line 2723
    const-wide/16 v8, 0x10

    .line 2724
    .line 2725
    cmp-long v4, v4, v8

    .line 2726
    .line 2727
    if-nez v4, :cond_41

    .line 2728
    .line 2729
    goto :goto_19

    .line 2730
    :cond_41
    move-object v15, v7

    .line 2731
    :goto_19
    if-eqz v15, :cond_42

    .line 2732
    .line 2733
    iget-wide v4, v15, Lpb0;->a:J

    .line 2734
    .line 2735
    goto :goto_1a

    .line 2736
    :cond_42
    sget-wide v4, Lpb0;->b:J

    .line 2737
    .line 2738
    :goto_1a
    invoke-static {v4, v5}, Lpb0;->d(J)F

    .line 2739
    .line 2740
    .line 2741
    move-result v7

    .line 2742
    const v8, 0x3e4ccccd    # 0.2f

    .line 2743
    .line 2744
    .line 2745
    mul-float/2addr v7, v8

    .line 2746
    invoke-static {v4, v5, v7}, Lpb0;->b(JF)J

    .line 2747
    .line 2748
    .line 2749
    move-result-wide v4

    .line 2750
    invoke-virtual {v2, v4, v5}, Lh9;->e(J)V

    .line 2751
    .line 2752
    .line 2753
    invoke-static {v11, v12}, Ltg5;->f(J)I

    .line 2754
    .line 2755
    .line 2756
    move-result v4

    .line 2757
    invoke-interface {v3, v4}, Lnl3;->r(I)I

    .line 2758
    .line 2759
    .line 2760
    move-result v4

    .line 2761
    invoke-static {v11, v12}, Ltg5;->e(J)I

    .line 2762
    .line 2763
    .line 2764
    move-result v5

    .line 2765
    invoke-interface {v3, v5}, Lnl3;->r(I)I

    .line 2766
    .line 2767
    .line 2768
    move-result v3

    .line 2769
    if-eq v4, v3, :cond_44

    .line 2770
    .line 2771
    invoke-virtual {v0, v4, v3}, Ljg5;->i(II)Lo9;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v3

    .line 2775
    invoke-interface {v6, v3, v2}, Ln30;->e(Lo9;Lh9;)V

    .line 2776
    .line 2777
    .line 2778
    goto :goto_1b

    .line 2779
    :cond_43
    iget-wide v7, v4, Lsf5;->b:J

    .line 2780
    .line 2781
    invoke-static {v7, v8}, Ltg5;->c(J)Z

    .line 2782
    .line 2783
    .line 2784
    move-result v5

    .line 2785
    if-nez v5, :cond_44

    .line 2786
    .line 2787
    invoke-virtual {v2, v9, v10}, Lh9;->e(J)V

    .line 2788
    .line 2789
    .line 2790
    iget-wide v4, v4, Lsf5;->b:J

    .line 2791
    .line 2792
    invoke-static {v4, v5}, Ltg5;->f(J)I

    .line 2793
    .line 2794
    .line 2795
    move-result v7

    .line 2796
    invoke-interface {v3, v7}, Lnl3;->r(I)I

    .line 2797
    .line 2798
    .line 2799
    move-result v7

    .line 2800
    invoke-static {v4, v5}, Ltg5;->e(J)I

    .line 2801
    .line 2802
    .line 2803
    move-result v4

    .line 2804
    invoke-interface {v3, v4}, Lnl3;->r(I)I

    .line 2805
    .line 2806
    .line 2807
    move-result v3

    .line 2808
    if-eq v7, v3, :cond_44

    .line 2809
    .line 2810
    invoke-virtual {v0, v7, v3}, Ljg5;->i(II)Lo9;

    .line 2811
    .line 2812
    .line 2813
    move-result-object v3

    .line 2814
    invoke-interface {v6, v3, v2}, Ln30;->e(Lo9;Lh9;)V

    .line 2815
    .line 2816
    .line 2817
    :cond_44
    :goto_1b
    invoke-virtual {v0}, Ljg5;->d()Z

    .line 2818
    .line 2819
    .line 2820
    move-result v2

    .line 2821
    if-eqz v2, :cond_46

    .line 2822
    .line 2823
    iget v2, v13, Lig5;->f:I

    .line 2824
    .line 2825
    if-ne v2, v14, :cond_45

    .line 2826
    .line 2827
    goto :goto_1c

    .line 2828
    :cond_45
    const/4 v2, 0x1

    .line 2829
    goto :goto_1d

    .line 2830
    :cond_46
    :goto_1c
    const/4 v2, 0x0

    .line 2831
    :goto_1d
    if-eqz v2, :cond_47

    .line 2832
    .line 2833
    iget-wide v3, v0, Ljg5;->c:J

    .line 2834
    .line 2835
    const/16 v0, 0x20

    .line 2836
    .line 2837
    shr-long v7, v3, v0

    .line 2838
    .line 2839
    long-to-int v5, v7

    .line 2840
    int-to-float v5, v5

    .line 2841
    and-long v3, v3, v17

    .line 2842
    .line 2843
    long-to-int v3, v3

    .line 2844
    int-to-float v3, v3

    .line 2845
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2846
    .line 2847
    .line 2848
    move-result v4

    .line 2849
    int-to-long v4, v4

    .line 2850
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2851
    .line 2852
    .line 2853
    move-result v3

    .line 2854
    int-to-long v7, v3

    .line 2855
    shl-long v3, v4, v0

    .line 2856
    .line 2857
    and-long v7, v7, v17

    .line 2858
    .line 2859
    or-long/2addr v3, v7

    .line 2860
    const-wide/16 v7, 0x0

    .line 2861
    .line 2862
    invoke-static {v7, v8, v3, v4}, Lj21;->d(JJ)Lrc4;

    .line 2863
    .line 2864
    .line 2865
    move-result-object v0

    .line 2866
    invoke-interface {v6}, Ln30;->g()V

    .line 2867
    .line 2868
    .line 2869
    invoke-interface {v6, v0}, Ln30;->s(Lrc4;)V

    .line 2870
    .line 2871
    .line 2872
    :cond_47
    iget-object v0, v13, Lig5;->b:Ldh5;

    .line 2873
    .line 2874
    iget-object v0, v0, Ldh5;->a:Lw35;

    .line 2875
    .line 2876
    iget-object v3, v0, Lw35;->m:Lne5;

    .line 2877
    .line 2878
    iget-object v4, v0, Lw35;->a:Luf5;

    .line 2879
    .line 2880
    if-nez v3, :cond_48

    .line 2881
    .line 2882
    sget-object v3, Lne5;->b:Lne5;

    .line 2883
    .line 2884
    :cond_48
    move-object/from16 v24, v3

    .line 2885
    .line 2886
    iget-object v3, v0, Lw35;->n:Lpy4;

    .line 2887
    .line 2888
    if-nez v3, :cond_49

    .line 2889
    .line 2890
    sget-object v3, Lpy4;->d:Lpy4;

    .line 2891
    .line 2892
    :cond_49
    move-object/from16 v23, v3

    .line 2893
    .line 2894
    iget-object v0, v0, Lw35;->o:Ldj6;

    .line 2895
    .line 2896
    if-nez v0, :cond_4a

    .line 2897
    .line 2898
    sget-object v0, Lsf1;->p:Lsf1;

    .line 2899
    .line 2900
    :cond_4a
    move-object/from16 v25, v0

    .line 2901
    .line 2902
    :try_start_0
    invoke-interface {v4}, Luf5;->e()Liy;

    .line 2903
    .line 2904
    .line 2905
    move-result-object v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    sget-object v0, Ltf5;->a:Ltf5;

    .line 2907
    .line 2908
    if-eqz v21, :cond_4c

    .line 2909
    .line 2910
    if-eq v4, v0, :cond_4b

    .line 2911
    .line 2912
    :try_start_1
    invoke-interface {v4}, Luf5;->a()F

    .line 2913
    .line 2914
    .line 2915
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2916
    move/from16 v22, v0

    .line 2917
    .line 2918
    :goto_1e
    move-object/from16 v19, v1

    .line 2919
    .line 2920
    move-object/from16 v20, v6

    .line 2921
    .line 2922
    goto :goto_1f

    .line 2923
    :catchall_0
    move-exception v0

    .line 2924
    move-object/from16 v20, v6

    .line 2925
    .line 2926
    goto :goto_23

    .line 2927
    :cond_4b
    const/high16 v22, 0x3f800000    # 1.0f

    .line 2928
    .line 2929
    goto :goto_1e

    .line 2930
    :goto_1f
    :try_start_2
    invoke-static/range {v19 .. v25}, Lyb3;->j(Lyb3;Ln30;Liy;FLpy4;Lne5;Ldj6;)V

    .line 2931
    .line 2932
    .line 2933
    goto :goto_22

    .line 2934
    :catchall_1
    move-exception v0

    .line 2935
    goto :goto_23

    .line 2936
    :cond_4c
    move-object/from16 v19, v1

    .line 2937
    .line 2938
    move-object/from16 v20, v6

    .line 2939
    .line 2940
    if-eq v4, v0, :cond_4d

    .line 2941
    .line 2942
    invoke-interface {v4}, Luf5;->b()J

    .line 2943
    .line 2944
    .line 2945
    move-result-wide v0

    .line 2946
    :goto_20
    move-wide/from16 v21, v0

    .line 2947
    .line 2948
    goto :goto_21

    .line 2949
    :cond_4d
    sget-wide v0, Lpb0;->b:J

    .line 2950
    .line 2951
    goto :goto_20

    .line 2952
    :goto_21
    invoke-static/range {v19 .. v25}, Lyb3;->i(Lyb3;Ln30;JLpy4;Lne5;Ldj6;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2953
    .line 2954
    .line 2955
    :goto_22
    if-eqz v2, :cond_50

    .line 2956
    .line 2957
    invoke-interface/range {v20 .. v20}, Ln30;->r()V

    .line 2958
    .line 2959
    .line 2960
    goto :goto_24

    .line 2961
    :goto_23
    if-eqz v2, :cond_4e

    .line 2962
    .line 2963
    invoke-interface/range {v20 .. v20}, Ln30;->r()V

    .line 2964
    .line 2965
    .line 2966
    :cond_4e
    throw v0

    .line 2967
    :cond_4f
    move-object/from16 v26, v10

    .line 2968
    .line 2969
    :cond_50
    :goto_24
    return-object v26

    .line 2970
    :pswitch_43
    move-object/from16 v26, v10

    .line 2971
    .line 2972
    check-cast v5, Ljj0;

    .line 2973
    .line 2974
    check-cast v4, Lil2;

    .line 2975
    .line 2976
    check-cast v3, Lpp4;

    .line 2977
    .line 2978
    move-object/from16 v0, p1

    .line 2979
    .line 2980
    check-cast v0, Ljava/lang/Float;

    .line 2981
    .line 2982
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 2983
    .line 2984
    .line 2985
    move-result v0

    .line 2986
    iget-boolean v1, v5, Ljj0;->D:Z

    .line 2987
    .line 2988
    if-eqz v1, :cond_51

    .line 2989
    .line 2990
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2991
    .line 2992
    goto :goto_25

    .line 2993
    :cond_51
    const/high16 v2, -0x40800000    # -1.0f

    .line 2994
    .line 2995
    :goto_25
    mul-float v1, v2, v0

    .line 2996
    .line 2997
    iget-object v5, v5, Ljj0;->C:Lrp4;

    .line 2998
    .line 2999
    invoke-virtual {v5, v1}, Lrp4;->h(F)J

    .line 3000
    .line 3001
    .line 3002
    move-result-wide v6

    .line 3003
    invoke-virtual {v5, v6, v7}, Lrp4;->e(J)J

    .line 3004
    .line 3005
    .line 3006
    move-result-wide v6

    .line 3007
    iget-object v1, v3, Lpp4;->a:Lrp4;

    .line 3008
    .line 3009
    iget-object v3, v1, Lrp4;->k:Lwo4;

    .line 3010
    .line 3011
    const/4 v8, 0x1

    .line 3012
    invoke-virtual {v1, v3, v6, v7, v8}, Lrp4;->c(Lwo4;JI)J

    .line 3013
    .line 3014
    .line 3015
    move-result-wide v6

    .line 3016
    invoke-virtual {v5, v6, v7}, Lrp4;->e(J)J

    .line 3017
    .line 3018
    .line 3019
    move-result-wide v6

    .line 3020
    invoke-virtual {v5, v6, v7}, Lrp4;->g(J)F

    .line 3021
    .line 3022
    .line 3023
    move-result v1

    .line 3024
    mul-float/2addr v1, v2

    .line 3025
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 3026
    .line 3027
    .line 3028
    move-result v2

    .line 3029
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 3030
    .line 3031
    .line 3032
    move-result v3

    .line 3033
    cmpg-float v2, v2, v3

    .line 3034
    .line 3035
    if-gez v2, :cond_52

    .line 3036
    .line 3037
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3038
    .line 3039
    const-string v3, "Scroll animation cancelled because scroll was not consumed ("

    .line 3040
    .line 3041
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3042
    .line 3043
    .line 3044
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3045
    .line 3046
    .line 3047
    const-string v1, " < "

    .line 3048
    .line 3049
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    .line 3051
    .line 3052
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3053
    .line 3054
    .line 3055
    const/16 v0, 0x29

    .line 3056
    .line 3057
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3058
    .line 3059
    .line 3060
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3061
    .line 3062
    .line 3063
    move-result-object v0

    .line 3064
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 3065
    .line 3066
    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 3067
    .line 3068
    .line 3069
    invoke-virtual {v1, v15}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3070
    .line 3071
    .line 3072
    invoke-interface {v4, v1}, Lil2;->g(Ljava/util/concurrent/CancellationException;)V

    .line 3073
    .line 3074
    .line 3075
    :cond_52
    return-object v26

    .line 3076
    :pswitch_44
    move-object/from16 v26, v10

    .line 3077
    .line 3078
    check-cast v5, Le40;

    .line 3079
    .line 3080
    check-cast v4, Lga4;

    .line 3081
    .line 3082
    check-cast v3, Lq43;

    .line 3083
    .line 3084
    move-object/from16 v0, p1

    .line 3085
    .line 3086
    check-cast v0, Ljava/lang/Integer;

    .line 3087
    .line 3088
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 3089
    .line 3090
    .line 3091
    move-result v0

    .line 3092
    iget-object v1, v5, Le40;->a:Lar3;

    .line 3093
    .line 3094
    invoke-virtual {v1, v15}, Lar3;->setValue(Ljava/lang/Object;)V

    .line 3095
    .line 3096
    .line 3097
    invoke-interface {v4, v3, v0}, Lga4;->b(Lq43;I)V

    .line 3098
    .line 3099
    .line 3100
    return-object v26

    .line 3101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3102
    .line 3103
    .line 3104
    .line 3105
    .line 3106
    .line 3107
    .line 3108
    .line 3109
    .line 3110
    .line 3111
    .line 3112
    .line 3113
    .line 3114
    .line 3115
    .line 3116
    .line 3117
    .line 3118
    .line 3119
    .line 3120
    .line 3121
    .line 3122
    .line 3123
    .line 3124
    .line 3125
    .line 3126
    .line 3127
    .line 3128
    .line 3129
    .line 3130
    .line 3131
    .line 3132
    .line 3133
    .line 3134
    .line 3135
    .line 3136
    .line 3137
    .line 3138
    .line 3139
    .line 3140
    .line 3141
    .line 3142
    .line 3143
    .line 3144
    .line 3145
    .line 3146
    .line 3147
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_3
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
