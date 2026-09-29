.class public final synthetic Lay4;
.super Ljava/lang/Object;
.source "r8-map-id-3359b042b52c63b926898b5dccea97bde7ae04781d34f528a0d9bcb63f546733"

# interfaces
.implements Lqs1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lay4;->n:I

    iput-object p1, p0, Lay4;->o:Ljava/lang/Object;

    iput-object p2, p0, Lay4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lng5;Lke;Lkv2;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lay4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lay4;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lay4;->p:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lay4;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xd

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Leg6;

    .line 15
    .line 16
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroid/view/View;

    .line 19
    .line 20
    check-cast p1, Lqz0;

    .line 21
    .line 22
    iget-object p1, v0, Leg6;->u:Lag2;

    .line 23
    .line 24
    iget v1, v0, Leg6;->t:I

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lbb6;->a:Ljava/lang/reflect/Field;

    .line 29
    .line 30
    invoke-static {p0, p1}, Lua6;->b(Landroid/view/View;Lhm3;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Lbb6;->c(Landroid/view/View;Lp70;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget p1, v0, Leg6;->t:I

    .line 49
    .line 50
    add-int/2addr p1, v5

    .line 51
    iput p1, v0, Leg6;->t:I

    .line 52
    .line 53
    new-instance p1, Lln;

    .line 54
    .line 55
    invoke-direct {p1, v0, p0, v2}, Lln;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_0
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lhd6;

    .line 62
    .line 63
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lng4;

    .line 66
    .line 67
    check-cast p1, Lds5;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget p1, p1, Lds5;->a:I

    .line 73
    .line 74
    iget-object p0, p0, Lng4;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, p1, p0}, Lhd6;->l(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lq56;->a:Lq56;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lhd6;

    .line 85
    .line 86
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Llg4;

    .line 89
    .line 90
    check-cast p1, Lds5;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget p1, p1, Lds5;->a:I

    .line 96
    .line 97
    iget-object p0, p0, Llg4;->b:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, p1, p0}, Lhd6;->l(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p0, Lq56;->a:Lq56;

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Luc6;

    .line 108
    .line 109
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lvc6;

    .line 112
    .line 113
    check-cast p1, Lzl4;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Luc6;->b:Lwk;

    .line 119
    .line 120
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object p0, Lq56;->a:Lq56;

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lp76;

    .line 129
    .line 130
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lq76;

    .line 133
    .line 134
    check-cast p1, Lzl4;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v0, v0, Lp76;->b:Lwk;

    .line 140
    .line 141
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object p0, Lq56;->a:Lq56;

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_4
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Ls66;

    .line 150
    .line 151
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Lqs1;

    .line 154
    .line 155
    check-cast p1, Ljava/lang/Long;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget p1, v0, Ls66;->e:F

    .line 161
    .line 162
    iput v1, v0, Ls66;->e:F

    .line 163
    .line 164
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p0, p1}, Lqs1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    sget-object p0, Lq56;->a:Lq56;

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_5
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lgr5;

    .line 177
    .line 178
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Lz36;

    .line 181
    .line 182
    check-cast p1, Lc46;

    .line 183
    .line 184
    iget-object v1, v0, Lgr5;->o:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v1, Len4;

    .line 187
    .line 188
    monitor-enter v1

    .line 189
    :try_start_0
    invoke-interface {p1}, Lc46;->b()Z

    .line 190
    .line 191
    .line 192
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, v0, Lgr5;->p:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Lu05;

    .line 196
    .line 197
    if-eqz v2, :cond_2

    .line 198
    .line 199
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lu05;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    check-cast p0, Lc46;

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {v0, p0}, Lu05;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Lc46;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .line 214
    :goto_0
    monitor-exit v1

    .line 215
    sget-object p0, Lq56;->a:Lq56;

    .line 216
    .line 217
    return-object p0

    .line 218
    :goto_1
    monitor-exit v1

    .line 219
    throw p0

    .line 220
    :pswitch_6
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Ljr4;

    .line 223
    .line 224
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Lam0;

    .line 227
    .line 228
    check-cast p1, Lqz0;

    .line 229
    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    new-instance v1, Lc25;

    .line 235
    .line 236
    new-instance v3, Lay4;

    .line 237
    .line 238
    invoke-direct {v3, p1, p0, v2}, Lay4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    invoke-direct {v1, v3}, Lc25;-><init>(Lqs1;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljr4;->x(Lc25;)V

    .line 245
    .line 246
    .line 247
    new-instance p0, Lc4;

    .line 248
    .line 249
    const/16 p1, 0xe

    .line 250
    .line 251
    invoke-direct {p0, v0, p1}, Lc4;-><init>(Ljava/lang/Object;I)V

    .line 252
    .line 253
    .line 254
    return-object p0

    .line 255
    :pswitch_7
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lq16;

    .line 258
    .line 259
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p0, Lq16;

    .line 262
    .line 263
    check-cast p1, Lqz0;

    .line 264
    .line 265
    iget-object p1, v0, Lq16;->j:La25;

    .line 266
    .line 267
    invoke-virtual {p1, p0}, La25;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    new-instance p1, Lln;

    .line 271
    .line 272
    const/16 v1, 0xb

    .line 273
    .line 274
    invoke-direct {p1, v0, p0, v1}, Lln;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    return-object p1

    .line 278
    :pswitch_8
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 279
    .line 280
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lam0;

    .line 283
    .line 284
    check-cast p1, Los1;

    .line 285
    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-ne v0, v1, :cond_3

    .line 291
    .line 292
    invoke-interface {p1}, Los1;->b()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_3
    new-instance v0, Lt16;

    .line 297
    .line 298
    invoke-direct {v0, p1, v4, v3}, Lt16;-><init>(Los1;Lfk0;I)V

    .line 299
    .line 300
    .line 301
    const/4 p1, 0x3

    .line 302
    invoke-static {p0, v4, v0, p1}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 303
    .line 304
    .line 305
    :goto_2
    sget-object p0, Lq56;->a:Lq56;

    .line 306
    .line 307
    return-object p0

    .line 308
    :pswitch_9
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v0, Lq16;

    .line 311
    .line 312
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p0, Lk16;

    .line 315
    .line 316
    check-cast p1, Lqz0;

    .line 317
    .line 318
    new-instance p1, Lln;

    .line 319
    .line 320
    const/16 v1, 0xc

    .line 321
    .line 322
    invoke-direct {p1, v0, p0, v1}, Lln;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 323
    .line 324
    .line 325
    return-object p1

    .line 326
    :pswitch_a
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v0, Lam0;

    .line 329
    .line 330
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast p0, Lq16;

    .line 333
    .line 334
    check-cast p1, Lqz0;

    .line 335
    .line 336
    new-instance p1, Lrg3;

    .line 337
    .line 338
    invoke-direct {p1, p0, v4}, Lrg3;-><init>(Lq16;Lfk0;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v0, v4, p1, v5}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 342
    .line 343
    .line 344
    new-instance p0, Laa;

    .line 345
    .line 346
    const/4 p1, 0x7

    .line 347
    invoke-direct {p0, p1}, Laa;-><init>(I)V

    .line 348
    .line 349
    .line 350
    return-object p0

    .line 351
    :pswitch_b
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v0, Lew5;

    .line 354
    .line 355
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p0, Lfw5;

    .line 358
    .line 359
    check-cast p1, Lzl4;

    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v0, v0, Lew5;->b:Lwk;

    .line 365
    .line 366
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    sget-object p0, Lq56;->a:Lq56;

    .line 370
    .line 371
    return-object p0

    .line 372
    :pswitch_c
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Lpt5;

    .line 375
    .line 376
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast p0, Lqt5;

    .line 379
    .line 380
    check-cast p1, Lzl4;

    .line 381
    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    iget-object v0, v0, Lpt5;->b:Lwk;

    .line 386
    .line 387
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    sget-object p0, Lq56;->a:Lq56;

    .line 391
    .line 392
    return-object p0

    .line 393
    :pswitch_d
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Lxj5;

    .line 396
    .line 397
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast p0, Lyj5;

    .line 400
    .line 401
    check-cast p1, Lzl4;

    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    iget-object v0, v0, Lxj5;->b:Lwk;

    .line 407
    .line 408
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    sget-object p0, Lq56;->a:Lq56;

    .line 412
    .line 413
    return-object p0

    .line 414
    :pswitch_e
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v0, Lqj5;

    .line 417
    .line 418
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast p0, Ljava/util/List;

    .line 421
    .line 422
    check-cast p1, Lzl4;

    .line 423
    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    iget-object v0, v0, Lqj5;->b:Lwk;

    .line 428
    .line 429
    invoke-virtual {v0, p1, p0}, Ln21;->u(Lzl4;Ljava/lang/Iterable;)V

    .line 430
    .line 431
    .line 432
    sget-object p0, Lq56;->a:Lq56;

    .line 433
    .line 434
    return-object p0

    .line 435
    :pswitch_f
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v0, Lqj5;

    .line 438
    .line 439
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast p0, Lrj5;

    .line 442
    .line 443
    check-cast p1, Lzl4;

    .line 444
    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    iget-object v0, v0, Lqj5;->b:Lwk;

    .line 449
    .line 450
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    sget-object p0, Lq56;->a:Lq56;

    .line 454
    .line 455
    return-object p0

    .line 456
    :pswitch_10
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v0, Lsh5;

    .line 459
    .line 460
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast p0, Lth5;

    .line 463
    .line 464
    check-cast p1, Lzl4;

    .line 465
    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    iget-object v0, v0, Lsh5;->b:Lwk;

    .line 470
    .line 471
    invoke-virtual {v0, p1, p0}, Ln21;->v(Lzl4;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    sget-object p0, Lq56;->a:Lq56;

    .line 475
    .line 476
    return-object p0

    .line 477
    :pswitch_11
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v0, Ljava/util/List;

    .line 480
    .line 481
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast p0, Ljava/util/List;

    .line 484
    .line 485
    check-cast p1, Lfv3;

    .line 486
    .line 487
    if-eqz v0, :cond_4

    .line 488
    .line 489
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    move v2, v3

    .line 494
    :goto_3
    if-ge v2, v1, :cond_4

    .line 495
    .line 496
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Laq3;

    .line 501
    .line 502
    iget-object v5, v4, Laq3;->n:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v5, Lgv3;

    .line 505
    .line 506
    iget-object v4, v4, Laq3;->o:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v4, Lzg2;

    .line 509
    .line 510
    iget-wide v6, v4, Lzg2;->a:J

    .line 511
    .line 512
    invoke-static {p1, v5, v6, v7}, Lfv3;->j(Lfv3;Lgv3;J)V

    .line 513
    .line 514
    .line 515
    add-int/lit8 v2, v2, 0x1

    .line 516
    .line 517
    goto :goto_3

    .line 518
    :cond_4
    if-eqz p0, :cond_6

    .line 519
    .line 520
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    :goto_4
    if-ge v3, v0, :cond_6

    .line 525
    .line 526
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    check-cast v1, Laq3;

    .line 531
    .line 532
    iget-object v2, v1, Laq3;->n:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v2, Lgv3;

    .line 535
    .line 536
    iget-object v1, v1, Laq3;->o:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v1, Los1;

    .line 539
    .line 540
    if-eqz v1, :cond_5

    .line 541
    .line 542
    invoke-interface {v1}, Los1;->b()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    check-cast v1, Lzg2;

    .line 547
    .line 548
    iget-wide v4, v1, Lzg2;->a:J

    .line 549
    .line 550
    goto :goto_5

    .line 551
    :cond_5
    const-wide/16 v4, 0x0

    .line 552
    .line 553
    :goto_5
    invoke-static {p1, v2, v4, v5}, Lfv3;->j(Lfv3;Lgv3;J)V

    .line 554
    .line 555
    .line 556
    add-int/lit8 v3, v3, 0x1

    .line 557
    .line 558
    goto :goto_4

    .line 559
    :cond_6
    sget-object p0, Lq56;->a:Lq56;

    .line 560
    .line 561
    return-object p0

    .line 562
    :pswitch_12
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v0, Lng5;

    .line 565
    .line 566
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast p0, Lke;

    .line 569
    .line 570
    check-cast p1, Lzh4;

    .line 571
    .line 572
    iget-object v2, v0, Lng5;->b:Lle;

    .line 573
    .line 574
    iget-object v0, v0, Lng5;->a:Lar3;

    .line 575
    .line 576
    invoke-virtual {v0}, Lar3;->getValue()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    check-cast v3, Ljg5;

    .line 581
    .line 582
    if-eqz v3, :cond_7

    .line 583
    .line 584
    iget-object v3, v3, Ljg5;->a:Lig5;

    .line 585
    .line 586
    if-eqz v3, :cond_7

    .line 587
    .line 588
    iget-object v3, v3, Lig5;->a:Lle;

    .line 589
    .line 590
    goto :goto_6

    .line 591
    :cond_7
    move-object v3, v4

    .line 592
    :goto_6
    invoke-static {v2, v3}, Lni2;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-nez v2, :cond_9

    .line 597
    .line 598
    :cond_8
    :goto_7
    move-object v6, v4

    .line 599
    goto/16 :goto_9

    .line 600
    .line 601
    :cond_9
    invoke-virtual {v0}, Lar3;->getValue()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Ljg5;

    .line 606
    .line 607
    if-eqz v0, :cond_8

    .line 608
    .line 609
    iget-object v2, v0, Ljg5;->b:Lyb3;

    .line 610
    .line 611
    invoke-static {p0, v0}, Lng5;->c(Lke;Ljg5;)Lke;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    if-nez p0, :cond_a

    .line 616
    .line 617
    goto :goto_7

    .line 618
    :cond_a
    iget v3, p0, Lke;->c:I

    .line 619
    .line 620
    iget p0, p0, Lke;->b:I

    .line 621
    .line 622
    invoke-virtual {v0, p0, v3}, Ljg5;->i(II)Lo9;

    .line 623
    .line 624
    .line 625
    move-result-object v6

    .line 626
    invoke-virtual {v0, p0}, Ljg5;->b(I)Lrc4;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    sub-int/2addr v3, v5

    .line 631
    invoke-virtual {v0, v3}, Ljg5;->b(I)Lrc4;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v2, p0}, Lyb3;->d(I)I

    .line 636
    .line 637
    .line 638
    move-result p0

    .line 639
    invoke-virtual {v2, v3}, Lyb3;->d(I)I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    if-ne p0, v2, :cond_b

    .line 644
    .line 645
    iget p0, v0, Lrc4;->a:F

    .line 646
    .line 647
    iget v0, v7, Lrc4;->a:F

    .line 648
    .line 649
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    :cond_b
    iget p0, v7, Lrc4;->b:F

    .line 654
    .line 655
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    int-to-long v0, v0

    .line 660
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 661
    .line 662
    .line 663
    move-result p0

    .line 664
    int-to-long v2, p0

    .line 665
    const/16 p0, 0x20

    .line 666
    .line 667
    shl-long/2addr v0, p0

    .line 668
    const-wide v7, 0xffffffffL

    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    and-long/2addr v2, v7

    .line 674
    or-long/2addr v0, v2

    .line 675
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    xor-long/2addr v0, v2

    .line 681
    iget-object v2, v6, Lo9;->d:Landroid/graphics/Matrix;

    .line 682
    .line 683
    if-nez v2, :cond_c

    .line 684
    .line 685
    new-instance v2, Landroid/graphics/Matrix;

    .line 686
    .line 687
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 688
    .line 689
    .line 690
    iput-object v2, v6, Lo9;->d:Landroid/graphics/Matrix;

    .line 691
    .line 692
    goto :goto_8

    .line 693
    :cond_c
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 694
    .line 695
    .line 696
    :goto_8
    iget-object v2, v6, Lo9;->d:Landroid/graphics/Matrix;

    .line 697
    .line 698
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    shr-long v9, v0, p0

    .line 702
    .line 703
    long-to-int p0, v9

    .line 704
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 705
    .line 706
    .line 707
    move-result p0

    .line 708
    and-long/2addr v0, v7

    .line 709
    long-to-int v0, v0

    .line 710
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    invoke-virtual {v2, p0, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 715
    .line 716
    .line 717
    iget-object p0, v6, Lo9;->a:Landroid/graphics/Path;

    .line 718
    .line 719
    iget-object v0, v6, Lo9;->d:Landroid/graphics/Matrix;

    .line 720
    .line 721
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 725
    .line 726
    .line 727
    :goto_9
    if-eqz v6, :cond_d

    .line 728
    .line 729
    new-instance v4, Lmg5;

    .line 730
    .line 731
    invoke-direct {v4, v6}, Lmg5;-><init>(Lo9;)V

    .line 732
    .line 733
    .line 734
    :cond_d
    if-eqz v4, :cond_e

    .line 735
    .line 736
    invoke-virtual {p1, v4}, Lzh4;->m(Lsy4;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {p1, v5}, Lzh4;->e(Z)V

    .line 740
    .line 741
    .line 742
    :cond_e
    sget-object p0, Lq56;->a:Lq56;

    .line 743
    .line 744
    return-object p0

    .line 745
    :pswitch_13
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast v0, Lke;

    .line 748
    .line 749
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 750
    .line 751
    check-cast p0, Lkv2;

    .line 752
    .line 753
    iget-object p0, p0, Lkv2;->b:Lxq3;

    .line 754
    .line 755
    check-cast p1, Lrd5;

    .line 756
    .line 757
    iget-object v1, v0, Lke;->a:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v1, Ljv2;

    .line 760
    .line 761
    invoke-virtual {v1}, Ljv2;->a()Log5;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    if-eqz v2, :cond_f

    .line 766
    .line 767
    iget-object v2, v2, Log5;->a:Lw35;

    .line 768
    .line 769
    goto :goto_a

    .line 770
    :cond_f
    move-object v2, v4

    .line 771
    :goto_a
    invoke-virtual {p0}, Lxq3;->h()I

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    and-int/2addr v5, v6

    .line 776
    if-eqz v5, :cond_10

    .line 777
    .line 778
    invoke-virtual {v1}, Ljv2;->a()Log5;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    if-eqz v5, :cond_10

    .line 783
    .line 784
    iget-object v5, v5, Log5;->b:Lw35;

    .line 785
    .line 786
    goto :goto_b

    .line 787
    :cond_10
    move-object v5, v4

    .line 788
    :goto_b
    if-eqz v2, :cond_11

    .line 789
    .line 790
    invoke-virtual {v2, v5}, Lw35;->c(Lw35;)Lw35;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    :cond_11
    invoke-virtual {p0}, Lxq3;->h()I

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    and-int/lit8 v2, v2, 0x2

    .line 799
    .line 800
    if-eqz v2, :cond_12

    .line 801
    .line 802
    invoke-virtual {v1}, Ljv2;->a()Log5;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    if-eqz v2, :cond_12

    .line 807
    .line 808
    iget-object v2, v2, Log5;->c:Lw35;

    .line 809
    .line 810
    goto :goto_c

    .line 811
    :cond_12
    move-object v2, v4

    .line 812
    :goto_c
    if-eqz v5, :cond_13

    .line 813
    .line 814
    invoke-virtual {v5, v2}, Lw35;->c(Lw35;)Lw35;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    :cond_13
    invoke-virtual {p0}, Lxq3;->h()I

    .line 819
    .line 820
    .line 821
    move-result p0

    .line 822
    and-int/lit8 p0, p0, 0x4

    .line 823
    .line 824
    if-eqz p0, :cond_14

    .line 825
    .line 826
    invoke-virtual {v1}, Ljv2;->a()Log5;

    .line 827
    .line 828
    .line 829
    move-result-object p0

    .line 830
    if-eqz p0, :cond_14

    .line 831
    .line 832
    iget-object v4, p0, Log5;->d:Lw35;

    .line 833
    .line 834
    :cond_14
    if-eqz v2, :cond_15

    .line 835
    .line 836
    invoke-virtual {v2, v4}, Lw35;->c(Lw35;)Lw35;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    :cond_15
    new-instance p0, Lsd4;

    .line 841
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    .line 844
    .line 845
    iget-object v1, p1, Lrd5;->a:Lle;

    .line 846
    .line 847
    new-instance v2, Lb40;

    .line 848
    .line 849
    const/16 v5, 0x11

    .line 850
    .line 851
    invoke-direct {v2, v5, p0, v0, v4}, Lb40;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    new-instance p0, Lje;

    .line 858
    .line 859
    invoke-direct {p0, v1}, Lje;-><init>(Lle;)V

    .line 860
    .line 861
    .line 862
    iget-object v0, p0, Lje;->p:Ljava/util/ArrayList;

    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    :goto_d
    if-ge v3, v1, :cond_16

    .line 869
    .line 870
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    check-cast v4, Lie;

    .line 875
    .line 876
    const/high16 v5, -0x80000000

    .line 877
    .line 878
    invoke-virtual {v4, v5}, Lie;->a(I)Lke;

    .line 879
    .line 880
    .line 881
    move-result-object v4

    .line 882
    invoke-virtual {v2, v4}, Lb40;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    check-cast v4, Lke;

    .line 887
    .line 888
    new-instance v5, Lie;

    .line 889
    .line 890
    iget-object v6, v4, Lke;->a:Ljava/lang/Object;

    .line 891
    .line 892
    iget v7, v4, Lke;->b:I

    .line 893
    .line 894
    iget v8, v4, Lke;->c:I

    .line 895
    .line 896
    iget-object v4, v4, Lke;->d:Ljava/lang/String;

    .line 897
    .line 898
    invoke-direct {v5, v7, v4, v6, v8}, Lie;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    add-int/lit8 v3, v3, 0x1

    .line 905
    .line 906
    goto :goto_d

    .line 907
    :cond_16
    invoke-virtual {p0}, Lje;->d()Lle;

    .line 908
    .line 909
    .line 910
    move-result-object p0

    .line 911
    iput-object p0, p1, Lrd5;->b:Lle;

    .line 912
    .line 913
    sget-object p0, Lq56;->a:Lq56;

    .line 914
    .line 915
    return-object p0

    .line 916
    :pswitch_14
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 917
    .line 918
    check-cast v0, Ljava/util/Set;

    .line 919
    .line 920
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast p0, Ljava/util/Set;

    .line 923
    .line 924
    check-cast p1, Lsc6;

    .line 925
    .line 926
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    .line 928
    .line 929
    iget v1, p1, Lsc6;->a:I

    .line 930
    .line 931
    iget-boolean p1, p1, Lsc6;->b:Z

    .line 932
    .line 933
    if-nez p1, :cond_17

    .line 934
    .line 935
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 936
    .line 937
    .line 938
    move-result-object p1

    .line 939
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 940
    .line 941
    .line 942
    move-result p1

    .line 943
    if-nez p1, :cond_17

    .line 944
    .line 945
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 946
    .line 947
    .line 948
    move-result-object p1

    .line 949
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    move-result p0

    .line 953
    if-nez p0, :cond_17

    .line 954
    .line 955
    move v3, v5

    .line 956
    :cond_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 957
    .line 958
    .line 959
    move-result-object p0

    .line 960
    return-object p0

    .line 961
    :pswitch_15
    iget-object v0, p0, Lay4;->o:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast v0, Ljf;

    .line 964
    .line 965
    iget-object p0, p0, Lay4;->p:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast p0, Landroid/content/Context;

    .line 968
    .line 969
    check-cast p1, Ljf;

    .line 970
    .line 971
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    .line 973
    .line 974
    if-eq p1, v0, :cond_19

    .line 975
    .line 976
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    .line 978
    .line 979
    const-string v0, "flux_locale"

    .line 980
    .line 981
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    const-string v1, "app_language"

    .line 990
    .line 991
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object p1

    .line 995
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 996
    .line 997
    .line 998
    move-result-object p1

    .line 999
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, LSmartTubeBridge;->applyAppLanguage(Landroid/content/Context;)V

    .line 1000
    .line 1001
    .line 1002
    instance-of p1, p0, Landroid/app/Activity;

    .line 1003
    .line 1004
    if-eqz p1, :cond_18

    .line 1005
    .line 1006
    move-object v4, p0

    .line 1007
    check-cast v4, Landroid/app/Activity;

    .line 1008
    .line 1009
    :cond_18
    if-eqz v4, :cond_19

    .line 1010
    .line 1011
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    .line 1012
    .line 1013
    .line 1014
    :cond_19
    sget-object p0, Lq56;->a:Lq56;

    .line 1015
    .line 1016
    return-object p0

    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
