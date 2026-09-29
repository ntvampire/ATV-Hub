.class public final synthetic Ljb;
.super Ljava/lang/Object;
.source "r8-map-id-3359b042b52c63b926898b5dccea97bde7ae04781d34f528a0d9bcb63f546733"

# interfaces
.implements Lqs1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lpd3;


# direct methods
.method public synthetic constructor <init>(Lpd3;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljb;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Ljb;->o:Lpd3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Ljb;->n:I

    .line 2
    .line 3
    sget-object v1, Lq56;->a:Lq56;

    .line 4
    .line 5
    iget-object p0, p0, Ljb;->o:Lpd3;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lhp1;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    check-cast p1, Lhp1;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_1
    check-cast p1, Ljk0;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_2
    check-cast p1, Lq43;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_3
    check-cast p1, Lhh2;

    .line 47
    .line 48
    iget-wide v2, p1, Lhh2;->a:J

    .line 49
    .line 50
    const/16 p1, 0x20

    .line 51
    .line 52
    shr-long v4, v2, p1

    .line 53
    .line 54
    long-to-int v0, v4

    .line 55
    int-to-float v0, v0

    .line 56
    const-wide v4, 0xffffffffL

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr v2, v4

    .line 62
    long-to-int v2, v2

    .line 63
    int-to-float v2, v2

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v6, v0

    .line 69
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-long v2, v0

    .line 74
    shl-long/2addr v6, p1

    .line 75
    and-long/2addr v2, v4

    .line 76
    or-long/2addr v2, v6

    .line 77
    new-instance p1, Lg05;

    .line 78
    .line 79
    invoke-direct {p1, v2, v3}, Lg05;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :pswitch_4
    check-cast p1, Lhp1;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :pswitch_5
    check-cast p1, Lhp1;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lhp1;->a()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_6
    check-cast p1, Lhp1;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :pswitch_7
    check-cast p1, Lhp1;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 127
    .line 128
    .line 129
    return-object v1

    .line 130
    :pswitch_8
    check-cast p1, Lhp1;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 136
    .line 137
    .line 138
    return-object v1

    .line 139
    :pswitch_9
    check-cast p1, Lhp1;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object v1

    .line 157
    :pswitch_b
    check-cast p1, Lhp1;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 163
    .line 164
    .line 165
    return-object v1

    .line 166
    :pswitch_c
    check-cast p1, Lhp1;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lhp1;->a()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-object v1

    .line 183
    :pswitch_d
    check-cast p1, Lhp1;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 189
    .line 190
    .line 191
    return-object v1

    .line 192
    :pswitch_e
    check-cast p1, Lhp1;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 198
    .line 199
    .line 200
    return-object v1

    .line 201
    :pswitch_f
    check-cast p1, Lhp1;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 207
    .line 208
    .line 209
    return-object v1

    .line 210
    :pswitch_10
    check-cast p1, Lhp1;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 216
    .line 217
    .line 218
    return-object v1

    .line 219
    :pswitch_11
    check-cast p1, Lhp1;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 225
    .line 226
    .line 227
    return-object v1

    .line 228
    :pswitch_12
    check-cast p1, Lhp1;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {p1, p0}, Llz0;->J(Lhp1;Lpd3;)V

    .line 234
    .line 235
    .line 236
    return-object v1

    .line 237
    :pswitch_13
    check-cast p1, Lhp1;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lhp1;->a()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :pswitch_14
    check-cast p1, Lhp1;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lhp1;->a()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    return-object v1

    .line 271
    :pswitch_15
    check-cast p1, Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    .line 275
    .line 276
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    return-object v1

    .line 280
    :pswitch_16
    check-cast p1, Lso1;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-interface {p0}, Lq55;->getValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    check-cast p0, Ljava/lang/String;

    .line 290
    .line 291
    if-nez p0, :cond_0

    .line 292
    .line 293
    const/4 p0, 0x1

    .line 294
    goto :goto_0

    .line 295
    :cond_0
    const/4 p0, 0x0

    .line 296
    :goto_0
    invoke-interface {p1, p0}, Lso1;->b(Z)V

    .line 297
    .line 298
    .line 299
    return-object v1

    .line 300
    :pswitch_17
    check-cast p1, Lq43;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-object v1

    .line 309
    :pswitch_18
    check-cast p1, Lq43;

    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    return-object v1

    .line 318
    :pswitch_19
    check-cast p1, Ljava/util/List;

    .line 319
    .line 320
    if-eqz p0, :cond_1

    .line 321
    .line 322
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_1
    return-object v1

    .line 326
    :pswitch_1a
    check-cast p1, Lpd5;

    .line 327
    .line 328
    iget-boolean v0, p1, Lpd5;->c:Z

    .line 329
    .line 330
    if-eqz v0, :cond_2

    .line 331
    .line 332
    iget-object p1, p1, Lpd5;->b:Lle;

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_2
    iget-object p1, p1, Lpd5;->a:Lle;

    .line 336
    .line 337
    :goto_1
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    return-object v1

    .line 341
    :pswitch_1b
    check-cast p1, Lzo2;

    .line 342
    .line 343
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    return-object v1

    .line 347
    :pswitch_1c
    invoke-static {p0, p1}, LSmartTubeBridge;->handleIptvAddOrSync(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_default_iptv

    return-object v1

    :cond_default_iptv
    check-cast p1, Lzo2;

    .line 348
    .line 349
    invoke-interface {p0, p1}, Lpd3;->setValue(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    return-object v1

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
