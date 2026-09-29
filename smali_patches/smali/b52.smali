.class public final Lb52;
.super Lnb6;
.source "r8-map-id-3359b042b52c63b926898b5dccea97bde7ae04781d34f528a0d9bcb63f546733"


# static fields
.field public static final m0:Ljava/util/List;

.field public static final n0:Ljava/util/List;

.field public static final o0:Ljava/util/List;


# instance fields
.field public final A:Lfb4;

.field public B:Lb55;

.field public final C:Ljd0;

.field public D:Ljava/util/Set;

.field public E:Ljava/util/Set;

.field public F:Ljava/util/Set;

.field public G:Ljava/util/List;

.field public H:Ljava/util/List;

.field public I:Ljava/util/List;

.field public J:Ljava/util/List;

.field public K:Lj40;

.field public L:Ljava/util/List;

.field public M:Ljava/util/List;

.field public N:Ljava/util/Set;

.field public O:Lj40;

.field public P:Lf42;

.field public Q:Z

.field public R:Lj40;

.field public S:Ljava/util/List;

.field public T:Lj40;

.field public U:Ljava/util/List;

.field public V:Lj40;

.field public W:Lj40;

.field public X:Lj40;

.field public Y:Lj40;

.field public Z:Lj40;

.field public a0:Lj40;

.field public final b:Landroid/content/Context;

.field public b0:Lj40;

.field public final c:Li40;

.field public c0:Lj40;

.field public final d:Lapp/flux/tv/data/local/c;

.field public d0:Ljava/util/List;

.field public final e:Lmh5;

.field public e0:Ljava/util/List;

.field public final f:Lxk4;

.field public f0:Lj40;

.field public final g:Lgk4;

.field public g0:Z

.field public final h:Ldb5;

.field public h0:Z

.field public final i:Lif4;

.field public final i0:Lce3;

.field public final j:Lhi5;

.field public j0:Z

.field public final k:Lkz;

.field public k0:Ljava/util/List;

.field public final l:Lhx5;

.field public l0:Lv02;

.field public final m:Lej4;

.field public final n:Lif4;

.field public final o:Lmc4;

.field public final p:Lgj4;

.field public final q:Lkj4;

.field public final r:Lhc1;

.field public final s:Lbz2;

.field public final t:Lqy2;

.field public final u:Lry2;

.field public final v:Ljd5;

.field public final w:Liy5;

.field public final x:Ldx5;

.field public final y:Lpx3;

.field public final z:Lt55;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [La32;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, La32;->I:La32;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    sget-object v4, La32;->J:La32;

    .line 11
    .line 12
    aput-object v4, v1, v3

    .line 13
    .line 14
    invoke-static {v1}, Lya0;->S([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lb52;->m0:Ljava/util/List;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    new-array v4, v1, [La32;

    .line 22
    .line 23
    sget-object v5, La32;->K:La32;

    .line 24
    .line 25
    aput-object v5, v4, v2

    .line 26
    .line 27
    sget-object v5, La32;->L:La32;

    .line 28
    .line 29
    aput-object v5, v4, v3

    .line 30
    .line 31
    sget-object v5, La32;->M:La32;

    .line 32
    .line 33
    aput-object v5, v4, v0

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    sget-object v6, La32;->N:La32;

    .line 37
    .line 38
    aput-object v6, v4, v5

    .line 39
    .line 40
    invoke-static {v4}, Lya0;->S([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sput-object v4, Lb52;->n0:Ljava/util/List;

    .line 45
    .line 46
    const/16 v4, 0x1c

    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/16 v6, 0x23

    .line 53
    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/16 v7, 0x12

    .line 59
    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const/16 v8, 0x36e

    .line 65
    .line 66
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    new-array v1, v1, [Ljava/lang/Integer;

    .line 71
    .line 72
    aput-object v4, v1, v2

    .line 73
    .line 74
    aput-object v6, v1, v3

    .line 75
    .line 76
    aput-object v7, v1, v0

    .line 77
    .line 78
    aput-object v8, v1, v5

    .line 79
    .line 80
    invoke-static {v1}, Lya0;->S([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lb52;->o0:Ljava/util/List;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li40;Lapp/flux/tv/data/local/c;Lmh5;Lxk4;Lgk4;Ldb5;Lif4;Lhi5;Lkz;Lhx5;Lej4;Lif4;Lmc4;Lgj4;Lkj4;Lhc1;Lbz2;Lqy2;Lry2;Ljd5;Liy5;Ldx5;Lpx3;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {p0}, Lnb6;-><init>()V

    .line 2
    iput-object p1, p0, Lb52;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb52;->c:Li40;

    .line 4
    iput-object p3, p0, Lb52;->d:Lapp/flux/tv/data/local/c;

    .line 5
    iput-object p4, p0, Lb52;->e:Lmh5;

    .line 6
    iput-object p5, p0, Lb52;->f:Lxk4;

    .line 7
    iput-object p6, p0, Lb52;->g:Lgk4;

    .line 8
    iput-object p7, p0, Lb52;->h:Ldb5;

    .line 9
    iput-object p8, p0, Lb52;->i:Lif4;

    .line 10
    iput-object p9, p0, Lb52;->j:Lhi5;

    .line 11
    iput-object p10, p0, Lb52;->k:Lkz;

    .line 12
    iput-object p11, p0, Lb52;->l:Lhx5;

    .line 13
    iput-object p12, p0, Lb52;->m:Lej4;

    .line 14
    iput-object p13, p0, Lb52;->n:Lif4;

    .line 15
    iput-object p14, p0, Lb52;->o:Lmc4;

    move-object/from16 p1, p15

    .line 16
    iput-object p1, p0, Lb52;->p:Lgj4;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lb52;->q:Lkj4;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lb52;->r:Lhc1;

    move-object/from16 p1, p18

    .line 19
    iput-object p1, p0, Lb52;->s:Lbz2;

    move-object/from16 p1, p19

    .line 20
    iput-object p1, p0, Lb52;->t:Lqy2;

    move-object/from16 p1, p20

    .line 21
    iput-object p1, p0, Lb52;->u:Lry2;

    move-object/from16 p1, p21

    .line 22
    iput-object p1, p0, Lb52;->v:Ljd5;

    move-object/from16 p1, p22

    .line 23
    iput-object p1, p0, Lb52;->w:Liy5;

    move-object/from16 p1, p23

    .line 24
    iput-object p1, p0, Lb52;->x:Ldx5;

    move-object/from16 p1, p24

    .line 25
    iput-object p1, p0, Lb52;->y:Lpx3;

    .line 26
    new-instance p1, Lu32;

    .line 27
    sget-object p6, Ln51;->n:Ln51;

    const/4 p7, 0x0

    const/4 p2, 0x1

    .line 28
    sget-object p3, Lm51;->n:Lm51;

    const/4 p4, 0x0

    move-object p5, p3

    move-object v0, p3

    move-object p8, p4

    move-object p4, p5

    move-object p5, v0

    invoke-direct/range {p1 .. p8}, Lu32;-><init>(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)V

    .line 29
    invoke-static {p1}, Lm36;->j(Ljava/lang/Object;)Lt55;

    move-result-object p1

    iput-object p1, p0, Lb52;->z:Lt55;

    .line 30
    invoke-static {p1}, Lu41;->f(Lt55;)Lfb4;

    move-result-object p1

    iput-object p1, p0, Lb52;->A:Lfb4;

    .line 31
    invoke-static {}, Lya0;->g()Ljd0;

    move-result-object p1

    iput-object p1, p0, Lb52;->C:Ljd0;

    .line 32
    sget-object p1, Lq51;->n:Lq51;

    iput-object p1, p0, Lb52;->D:Ljava/util/Set;

    .line 33
    iput-object p1, p0, Lb52;->E:Ljava/util/Set;

    .line 34
    iput-object p1, p0, Lb52;->F:Ljava/util/Set;

    .line 35
    iput-object p3, p0, Lb52;->G:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lb52;->H:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lb52;->I:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lb52;->J:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lb52;->L:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lb52;->M:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lb52;->N:Ljava/util/Set;

    .line 42
    iput-object p3, p0, Lb52;->S:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lb52;->U:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lb52;->d0:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lb52;->e0:Ljava/util/List;

    .line 46
    new-instance p1, Lce3;

    invoke-direct {p1}, Lce3;-><init>()V

    .line 47
    iput-object p1, p0, Lb52;->i0:Lce3;

    .line 48
    iput-object p3, p0, Lb52;->k0:Ljava/util/List;

    .line 49
    new-instance p1, Lv02;

    invoke-direct {p1}, Lv02;-><init>()V

    iput-object p1, p0, Lb52;->l0:Lv02;

    .line 50
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p1

    new-instance p2, Li32;

    const/4 p3, 0x0

    const/4 p4, 0x3

    invoke-direct {p2, p0, p3, p4}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p1, p3, p2, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 51
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p1

    new-instance p2, Li32;

    const/4 p5, 0x4

    invoke-direct {p2, p0, p3, p5}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p1, p3, p2, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lb52;->q(Z)V

    .line 53
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    const/4 p6, 0x5

    invoke-direct {p5, p0, p3, p6}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 54
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    const/4 p6, 0x6

    invoke-direct {p5, p0, p3, p6}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 55
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Lfp0;

    const/16 p6, 0xf

    invoke-direct {p5, p0, p3, p6}, Lfp0;-><init>(Ljava/lang/Object;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 56
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    const/4 p6, 0x7

    invoke-direct {p5, p0, p3, p6}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 57
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    const/16 p6, 0x8

    invoke-direct {p5, p0, p3, p6}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 58
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    const/16 p6, 0x9

    invoke-direct {p5, p0, p3, p6}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 59
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    const/16 p7, 0xa

    invoke-direct {p5, p0, p3, p7}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 60
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p2

    new-instance p5, Li32;

    invoke-direct {p5, p0, p3, p1}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p2, p3, p5, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 61
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p1

    new-instance p2, Ly8;

    invoke-direct {p2, p0, p3, p6}, Ly8;-><init>(Ljava/lang/Object;Lfk0;I)V

    invoke-static {p1, p3, p2, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 62
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    move-result-object p1

    new-instance p2, Li32;

    const/4 p5, 0x2

    invoke-direct {p2, p0, p3, p5}, Li32;-><init>(Lb52;Lfk0;I)V

    invoke-static {p1, p3, p2, p4}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    return-void
.end method

.method public static final e(Lb52;Lgk0;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v1, p0, Lb52;->b:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, p1, Ln42;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Ln42;

    .line 9
    .line 10
    iget v2, v0, Ln42;->u:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v0, Ln42;->u:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ln42;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Ln42;-><init>(Lb52;Lgk0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Ln42;->s:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v0, Ln42;->u:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v10, 0x0

    .line 35
    sget-object v12, Lbm0;->n:Lbm0;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    :try_start_0
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_4

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object p1, v0

    .line 49
    goto :goto_5

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lkk;->i(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_2
    iget v2, v0, Ln42;->r:I

    .line 58
    .line 59
    iget-object v6, v0, Ln42;->q:Lry2;

    .line 60
    .line 61
    :try_start_1
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_1
    move-object v8, v6

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_2
    iget-object v6, p0, Lb52;->u:Lry2;

    .line 70
    .line 71
    iget-object p1, p0, Lb52;->d:Lapp/flux/tv/data/local/c;

    .line 72
    .line 73
    iget-object p1, p1, Lapp/flux/tv/data/local/c;->I:Lo44;

    .line 74
    .line 75
    iput-object v6, v0, Ln42;->q:Lry2;

    .line 76
    .line 77
    iput v3, v0, Ln42;->r:I

    .line 78
    .line 79
    iput v5, v0, Ln42;->u:I

    .line 80
    .line 81
    invoke-static {p1, v0}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v12, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move v2, v3

    .line 89
    goto :goto_1

    .line 90
    :goto_2
    move-object v7, p1

    .line 91
    check-cast v7, Ljava/util/Set;

    .line 92
    .line 93
    iput-object v10, v0, Ln42;->q:Lry2;

    .line 94
    .line 95
    iput v2, v0, Ln42;->r:I

    .line 96
    .line 97
    iput v4, v0, Ln42;->u:I

    .line 98
    .line 99
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v6, Lx51;

    .line 110
    .line 111
    const/4 v11, 0x3

    .line 112
    invoke-direct/range {v6 .. v11}, Lx51;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Lfk0;I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v0}, Ls63;->F(Let1;Lfk0;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v12, :cond_5

    .line 120
    .line 121
    :goto_3
    return-object v12

    .line 122
    :cond_5
    :goto_4
    check-cast p1, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :goto_5
    new-instance v0, Lnh4;

    .line 126
    .line 127
    invoke-direct {v0, p1}, Lnh4;-><init>(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    move-object p1, v0

    .line 131
    :goto_6
    nop

    .line 132
    instance-of v0, p1, Lnh4;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    move-object p1, v10

    .line 137
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 138
    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    sget-object p1, Lm51;->n:Lm51;

    .line 142
    .line 143
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_8

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_8
    move-object p1, v10

    .line 151
    :goto_7
    if-eqz p1, :cond_b

    .line 152
    .line 153
    const v0, 0x7f0e0066

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const v2, 0x7f0e0067

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    const v4, 0x7f0e007c

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v4, Ljava/util/ArrayList;

    .line 184
    .line 185
    const/16 v6, 0xa

    .line 186
    .line 187
    invoke-static {p1, v6}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_a

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Lfv4;

    .line 209
    .line 210
    iget-object v7, v6, Lfv4;->a:Lz53;

    .line 211
    .line 212
    iget-boolean v6, v6, Lfv4;->b:Z

    .line 213
    .line 214
    if-eqz v6, :cond_9

    .line 215
    .line 216
    move-object v6, v0

    .line 217
    goto :goto_9

    .line 218
    :cond_9
    move-object v6, v2

    .line 219
    :goto_9
    invoke-static {v7, v6, v5}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_a
    new-instance v10, Lj40;

    .line 228
    .line 229
    const/16 p1, 0xc

    .line 230
    .line 231
    invoke-direct {v10, v1, v4, p1}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 232
    .line 233
    .line 234
    :cond_b
    iput-object v10, p0, Lb52;->K:Lj40;

    .line 235
    .line 236
    invoke-virtual {p0, v3}, Lb52;->k(Z)V

    .line 237
    .line 238
    .line 239
    sget-object p0, Lq56;->a:Lq56;

    .line 240
    .line 241
    return-object p0
.end method

.method public static final f(Lb52;Lgk0;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Ls42;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ls42;

    .line 7
    .line 8
    iget v1, v0, Ls42;->w:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ls42;->w:I

    .line 18
    .line 19
    :goto_0
    move-object v5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Ls42;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Ls42;-><init>(Lb52;Lgk0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v5, Ls42;->u:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v5, Ls42;->w:I

    .line 30
    .line 31
    const/16 v7, 0xa

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    const/4 v8, 0x3

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v9, 0x0

    .line 37
    sget-object v10, Lbm0;->n:Lbm0;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    if-ne v0, v8, :cond_1

    .line 46
    .line 47
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lkk;->i(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v9

    .line 58
    :cond_2
    iget-object v0, v5, Ls42;->t:Ljava/util/Set;

    .line 59
    .line 60
    check-cast v0, Ljava/util/Set;

    .line 61
    .line 62
    iget-object v1, v5, Ls42;->s:Ljava/util/Set;

    .line 63
    .line 64
    check-cast v1, Ljava/util/Set;

    .line 65
    .line 66
    iget-object v2, v5, Ls42;->r:Lhx5;

    .line 67
    .line 68
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object v3, v2

    .line 72
    move-object v2, v1

    .line 73
    :goto_2
    move-object v1, v3

    .line 74
    move-object v3, v0

    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_3
    iget-object v0, v5, Ls42;->r:Lhx5;

    .line 78
    .line 79
    iget-object v2, v5, Ls42;->q:Ljava/util/Set;

    .line 80
    .line 81
    check-cast v2, Ljava/util/Set;

    .line 82
    .line 83
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object v11, v2

    .line 87
    move-object v2, v0

    .line 88
    move-object v0, v11

    .line 89
    goto :goto_5

    .line 90
    :cond_4
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lb52;->T:Lj40;

    .line 94
    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    iget-object p1, p1, Lj40;->b:Ljava/util/List;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {p1, v7}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lq43;

    .line 125
    .line 126
    iget v3, v3, Lq43;->e:I

    .line 127
    .line 128
    invoke-static {v3, v0}, Lc43;->D(ILjava/util/ArrayList;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-static {v0}, Lxa0;->V0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    move-object p1, v9

    .line 138
    :goto_4
    if-nez p1, :cond_7

    .line 139
    .line 140
    sget-object p1, Lq51;->n:Lq51;

    .line 141
    .line 142
    :cond_7
    iget-object v0, p0, Lb52;->l:Lhx5;

    .line 143
    .line 144
    iget-object v3, p0, Lb52;->d:Lapp/flux/tv/data/local/c;

    .line 145
    .line 146
    iget-object v3, v3, Lapp/flux/tv/data/local/c;->I:Lo44;

    .line 147
    .line 148
    move-object v4, p1

    .line 149
    check-cast v4, Ljava/util/Set;

    .line 150
    .line 151
    iput-object v4, v5, Ls42;->q:Ljava/util/Set;

    .line 152
    .line 153
    iput-object v0, v5, Ls42;->r:Lhx5;

    .line 154
    .line 155
    iput v2, v5, Ls42;->w:I

    .line 156
    .line 157
    invoke-static {v3, v5}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-ne v2, v10, :cond_8

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    move-object v11, v0

    .line 165
    move-object v0, p1

    .line 166
    move-object p1, v2

    .line 167
    move-object v2, v11

    .line 168
    :goto_5
    check-cast p1, Ljava/util/Set;

    .line 169
    .line 170
    iget-object v3, p0, Lb52;->D:Ljava/util/Set;

    .line 171
    .line 172
    check-cast v0, Ljava/lang/Iterable;

    .line 173
    .line 174
    invoke-static {v3, v0}, Lst4;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v3, p0, Lb52;->e:Lmh5;

    .line 179
    .line 180
    iput-object v9, v5, Ls42;->q:Ljava/util/Set;

    .line 181
    .line 182
    iput-object v2, v5, Ls42;->r:Lhx5;

    .line 183
    .line 184
    move-object v4, p1

    .line 185
    check-cast v4, Ljava/util/Set;

    .line 186
    .line 187
    iput-object v4, v5, Ls42;->s:Ljava/util/Set;

    .line 188
    .line 189
    move-object v4, v0

    .line 190
    check-cast v4, Ljava/util/Set;

    .line 191
    .line 192
    iput-object v4, v5, Ls42;->t:Ljava/util/Set;

    .line 193
    .line 194
    iput v1, v5, Ls42;->w:I

    .line 195
    .line 196
    invoke-virtual {v3, v5}, Lmh5;->a(Lgk0;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-ne v1, v10, :cond_9

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_9
    move-object v3, v2

    .line 204
    move-object v2, p1

    .line 205
    move-object p1, v1

    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :goto_6
    move-object v4, p1

    .line 209
    check-cast v4, Ljava/util/Set;

    .line 210
    .line 211
    iput-object v9, v5, Ls42;->q:Ljava/util/Set;

    .line 212
    .line 213
    iput-object v9, v5, Ls42;->r:Lhx5;

    .line 214
    .line 215
    iput-object v9, v5, Ls42;->s:Ljava/util/Set;

    .line 216
    .line 217
    iput-object v9, v5, Ls42;->t:Ljava/util/Set;

    .line 218
    .line 219
    iput v8, v5, Ls42;->w:I

    .line 220
    .line 221
    const/16 v6, 0xc

    .line 222
    .line 223
    invoke-static/range {v1 .. v6}, Lhx5;->b(Lhx5;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lgk0;I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-ne p1, v10, :cond_a

    .line 228
    .line 229
    :goto_7
    return-object v10

    .line 230
    :cond_a
    :goto_8
    check-cast p1, Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_b

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_b
    move-object p1, v9

    .line 240
    :goto_9
    if-eqz p1, :cond_d

    .line 241
    .line 242
    iget-object v0, p0, Lb52;->b:Landroid/content/Context;

    .line 243
    .line 244
    const v1, 0x7f0e008f

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    new-instance v1, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-static {p1, v7}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Lz53;

    .line 278
    .line 279
    invoke-static {v2, v9, v8}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_c
    new-instance v9, Lj40;

    .line 288
    .line 289
    const/16 p1, 0xc

    .line 290
    .line 291
    invoke-direct {v9, v0, v1, p1}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 292
    .line 293
    .line 294
    :cond_d
    iput-object v9, p0, Lb52;->T:Lj40;

    .line 295
    .line 296
    invoke-virtual {p0}, Lb52;->u()V

    .line 297
    .line 298
    .line 299
    const/4 p1, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lb52;->k(Z)V

    .line 301
    .line 302
    .line 303
    sget-object p0, Lq56;->a:Lq56;

    .line 304
    .line 305
    return-object p0
.end method

.method public static final g(Lb52;Lgk0;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v1, p1, Lt42;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Lt42;

    .line 7
    .line 8
    iget v2, v1, Lt42;->v:I

    .line 9
    .line 10
    const/high16 v4, -0x80000000

    .line 11
    .line 12
    and-int v5, v2, v4

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    sub-int/2addr v2, v4

    .line 17
    iput v2, v1, Lt42;->v:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v1, Lt42;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lt42;-><init>(Lb52;Lgk0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, v7, Lt42;->t:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, v7, Lt42;->v:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v8, 0x3

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v9, 0x0

    .line 35
    sget-object v10, Lbm0;->n:Lbm0;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    if-eq v1, v4, :cond_3

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    if-ne v1, v8, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lkk;->i(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v9

    .line 56
    :cond_2
    iget-object v1, v7, Lt42;->s:Ljava/util/Set;

    .line 57
    .line 58
    check-cast v1, Ljava/util/Set;

    .line 59
    .line 60
    iget-object v2, v7, Lt42;->r:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v4, v7, Lt42;->q:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v5, v2

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    iget-object v1, v7, Lt42;->r:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v4, v7, Lt42;->q:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-wide/16 v5, 0x1

    .line 85
    .line 86
    invoke-virtual {v0, v5, v6}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const-wide/16 v5, 0x6

    .line 98
    .line 99
    invoke-virtual {v0, v5, v6}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v5, p0, Lb52;->d:Lapp/flux/tv/data/local/c;

    .line 111
    .line 112
    iget-object v5, v5, Lapp/flux/tv/data/local/c;->I:Lo44;

    .line 113
    .line 114
    iput-object v1, v7, Lt42;->q:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, v7, Lt42;->r:Ljava/lang/String;

    .line 117
    .line 118
    iput v4, v7, Lt42;->v:I

    .line 119
    .line 120
    invoke-static {v5, v7}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-ne v4, v10, :cond_5

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move-object v11, v1

    .line 128
    move-object v1, v0

    .line 129
    move-object v0, v4

    .line 130
    move-object v4, v11

    .line 131
    :goto_2
    check-cast v0, Ljava/util/Set;

    .line 132
    .line 133
    iget-object v5, p0, Lb52;->e:Lmh5;

    .line 134
    .line 135
    iput-object v4, v7, Lt42;->q:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v1, v7, Lt42;->r:Ljava/lang/String;

    .line 138
    .line 139
    move-object v6, v0

    .line 140
    check-cast v6, Ljava/util/Set;

    .line 141
    .line 142
    iput-object v6, v7, Lt42;->s:Ljava/util/Set;

    .line 143
    .line 144
    iput v2, v7, Lt42;->v:I

    .line 145
    .line 146
    invoke-virtual {v5, v7}, Lmh5;->a(Lgk0;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-ne v2, v10, :cond_6

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    move-object v5, v1

    .line 154
    move-object v1, v0

    .line 155
    move-object v0, v2

    .line 156
    :goto_3
    move-object v2, v0

    .line 157
    check-cast v2, Ljava/util/Set;

    .line 158
    .line 159
    new-instance v0, Lv42;

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    move-object v3, p0

    .line 163
    invoke-direct/range {v0 .. v6}, Lv42;-><init>(Ljava/util/Set;Ljava/util/Set;Lb52;Ljava/lang/String;Ljava/lang/String;Lfk0;)V

    .line 164
    .line 165
    .line 166
    iput-object v9, v7, Lt42;->q:Ljava/lang/String;

    .line 167
    .line 168
    iput-object v9, v7, Lt42;->r:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v9, v7, Lt42;->s:Ljava/util/Set;

    .line 171
    .line 172
    iput v8, v7, Lt42;->v:I

    .line 173
    .line 174
    invoke-static {v0, v7}, Ls63;->F(Let1;Lfk0;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-ne v0, v10, :cond_7

    .line 179
    .line 180
    :goto_4
    return-object v10

    .line 181
    :cond_7
    :goto_5
    check-cast v0, Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    move-object v0, v9

    .line 191
    :goto_6
    if-eqz v0, :cond_a

    .line 192
    .line 193
    iget-object v1, p0, Lb52;->b:Landroid/content/Context;

    .line 194
    .line 195
    const v2, 0x7f0e0072

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    new-instance v2, Ljava/util/ArrayList;

    .line 206
    .line 207
    const/16 v4, 0xa

    .line 208
    .line 209
    invoke-static {v0, v4}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_9

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Lz53;

    .line 231
    .line 232
    invoke-static {v4, v9, v8}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_9
    new-instance v9, Lj40;

    .line 241
    .line 242
    const/16 v0, 0xc

    .line 243
    .line 244
    invoke-direct {v9, v1, v2, v0}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 245
    .line 246
    .line 247
    :cond_a
    iput-object v9, p0, Lb52;->f0:Lj40;

    .line 248
    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0}, Lb52;->k(Z)V

    .line 251
    .line 252
    .line 253
    sget-object v0, Lq56;->a:Lq56;

    .line 254
    .line 255
    return-object v0
.end method

.method public static final h(Lb52;Lfk0;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lb52;->i0:Lce3;

    .line 2
    .line 3
    instance-of v1, p1, Ly42;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Ly42;

    .line 9
    .line 10
    iget v2, v1, Ly42;->s:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Ly42;->s:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ly42;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Ly42;-><init>(Lb52;Lfk0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Ly42;->q:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Ly42;->s:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    sget-object v4, Lq56;->a:Lq56;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lkk;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lce3;->h()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iput-boolean v5, p0, Lb52;->j0:Z

    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    :try_start_1
    iput-boolean p1, p0, Lb52;->j0:Z

    .line 65
    .line 66
    iput v5, v1, Ly42;->s:I

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lb52;->n(Lgk0;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    sget-object v2, Lbm0;->n:Lbm0;

    .line 73
    .line 74
    if-ne p1, v2, :cond_4

    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_4
    :goto_1
    :try_start_2
    iget-boolean p1, p0, Lb52;->j0:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Lce3;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v4

    .line 85
    :goto_2
    invoke-virtual {v0, v3}, Lce3;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public static final i(Lb52;Lgk0;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lb52;->z:Lt55;

    .line 6
    .line 7
    instance-of v3, v1, Lz42;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Lz42;

    .line 13
    .line 14
    iget v4, v3, Lz42;->u:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lz42;->u:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lz42;

    .line 27
    .line 28
    invoke-direct {v3, v0, v1}, Lz42;-><init>(Lb52;Lgk0;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v1, v3, Lz42;->s:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lz42;->u:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    sget-object v8, Lbm0;->n:Lbm0;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v7, :cond_2

    .line 43
    .line 44
    if-ne v4, v6, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lkk;->i(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v5

    .line 56
    :cond_2
    iget-object v4, v3, Lz42;->r:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v9, v3, Lz42;->q:Lkj4;

    .line 59
    .line 60
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v9, v0, Lb52;->q:Lkj4;

    .line 68
    .line 69
    iput-object v9, v3, Lz42;->q:Lkj4;

    .line 70
    .line 71
    const-string v4, "home"

    .line 72
    .line 73
    iput-object v4, v3, Lz42;->r:Ljava/lang/String;

    .line 74
    .line 75
    iput v7, v3, Lz42;->u:I

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lb52;->p(Lgk0;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-ne v1, v8, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    iput-object v5, v3, Lz42;->q:Lkj4;

    .line 87
    .line 88
    iput-object v5, v3, Lz42;->r:Ljava/lang/String;

    .line 89
    .line 90
    iput v6, v3, Lz42;->u:I

    .line 91
    .line 92
    invoke-virtual {v9, v4, v1, v3}, Lkj4;->a(Ljava/lang/String;Ljava/lang/String;Lgk0;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v8, :cond_5

    .line 97
    .line 98
    :goto_2
    return-object v8

    .line 99
    :cond_5
    :goto_3
    check-cast v1, Lwp3;

    .line 100
    .line 101
    if-nez v1, :cond_6

    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :cond_6
    invoke-virtual {v2}, Lt55;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lu32;

    .line 110
    .line 111
    iget-object v3, v3, Lu32;->c:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_7

    .line 118
    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_7
    new-instance v3, Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 124
    .line 125
    .line 126
    sget-object v4, La32;->P:Lb71;

    .line 127
    .line 128
    invoke-virtual {v4}, Lw0;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_8

    .line 137
    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, La32;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    iget-object v4, v1, Lwp3;->a:Ljava/util/ArrayList;

    .line 153
    .line 154
    new-instance v5, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_b

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    move-object v8, v6

    .line 174
    check-cast v8, Lj40;

    .line 175
    .line 176
    iget-object v9, v8, Lj40;->d:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-nez v9, :cond_a

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_a
    iget-object v8, v8, Lj40;->d:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_9

    .line 192
    .line 193
    :goto_6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_b
    iget-object v3, v0, Lb52;->l0:Lv02;

    .line 198
    .line 199
    invoke-static {v5, v3}, Lti4;->X(Ljava/util/List;Lv02;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_c

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_c
    iput-boolean v7, v0, Lb52;->g0:Z

    .line 211
    .line 212
    :cond_d
    invoke-virtual {v2}, Lt55;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    move-object v8, v0

    .line 217
    check-cast v8, Lu32;

    .line 218
    .line 219
    iget-object v10, v1, Lwp3;->b:Ljava/util/ArrayList;

    .line 220
    .line 221
    const/4 v15, 0x0

    .line 222
    const/16 v16, 0x78

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v12, 0x0

    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v14, 0x0

    .line 228
    invoke-static/range {v8 .. v16}, Lu32;->a(Lu32;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;ZLjava/lang/String;I)Lu32;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v0, v3}, Lt55;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    :goto_7
    sget-object v0, Lq56;->a:Lq56;

    .line 239
    .line 240
    return-object v0
.end method

.method public static final j(Lb52;Ljava/util/List;Ljava/util/List;Lzh5;ILgk0;)Ljava/io/Serializable;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, La52;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, La52;

    .line 11
    .line 12
    iget v3, v2, La52;->C:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, La52;->C:I

    .line 22
    .line 23
    :goto_0
    move-object v14, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, La52;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, La52;-><init>(Lb52;Lgk0;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v14, La52;->A:Ljava/lang/Object;

    .line 32
    .line 33
    iget v2, v14, La52;->C:I

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v15, 0x3

    .line 38
    const/4 v5, 0x0

    .line 39
    sget-object v6, Lbm0;->n:Lbm0;

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    if-eq v2, v4, :cond_3

    .line 44
    .line 45
    if-eq v2, v3, :cond_2

    .line 46
    .line 47
    if-ne v2, v15, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v1

    .line 53
    move-object v1, v5

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lkk;->i(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v5

    .line 62
    :cond_2
    iget v0, v14, La52;->y:I

    .line 63
    .line 64
    iget-wide v2, v14, La52;->z:J

    .line 65
    .line 66
    iget v4, v14, La52;->x:I

    .line 67
    .line 68
    iget-object v7, v14, La52;->w:Ljava/util/List;

    .line 69
    .line 70
    iget-object v8, v14, La52;->v:Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    iget-object v9, v14, La52;->u:Ljava/util/Set;

    .line 73
    .line 74
    check-cast v9, Ljava/util/Set;

    .line 75
    .line 76
    iget-object v10, v14, La52;->t:Lzh5;

    .line 77
    .line 78
    iget-object v11, v14, La52;->s:Ljava/util/List;

    .line 79
    .line 80
    iget-object v12, v14, La52;->r:Lhi5;

    .line 81
    .line 82
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v16, v11

    .line 86
    .line 87
    move v11, v0

    .line 88
    move-object/from16 v0, v16

    .line 89
    .line 90
    move-object/from16 v16, v10

    .line 91
    .line 92
    move-object v10, v7

    .line 93
    move-object/from16 v7, v16

    .line 94
    .line 95
    move-object/from16 v16, v9

    .line 96
    .line 97
    move-object v9, v8

    .line 98
    move-object/from16 v8, v16

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_3
    iget-wide v7, v14, La52;->z:J

    .line 103
    .line 104
    iget v2, v14, La52;->x:I

    .line 105
    .line 106
    iget-object v4, v14, La52;->t:Lzh5;

    .line 107
    .line 108
    iget-object v9, v14, La52;->s:Ljava/util/List;

    .line 109
    .line 110
    iget-object v10, v14, La52;->r:Lhi5;

    .line 111
    .line 112
    iget-object v11, v14, La52;->q:Ljava/util/List;

    .line 113
    .line 114
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    move v12, v2

    .line 118
    move-object v2, v10

    .line 119
    move-object v10, v9

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lb52;->j:Lhi5;

    .line 125
    .line 126
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lj$/time/LocalDate;->toEpochDay()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    iget-object v2, v0, Lb52;->d:Lapp/flux/tv/data/local/c;

    .line 135
    .line 136
    iget-object v2, v2, Lapp/flux/tv/data/local/c;->I:Lo44;

    .line 137
    .line 138
    move-object/from16 v9, p2

    .line 139
    .line 140
    iput-object v9, v14, La52;->q:Ljava/util/List;

    .line 141
    .line 142
    iput-object v1, v14, La52;->r:Lhi5;

    .line 143
    .line 144
    move-object/from16 v10, p1

    .line 145
    .line 146
    iput-object v10, v14, La52;->s:Ljava/util/List;

    .line 147
    .line 148
    move-object/from16 v11, p3

    .line 149
    .line 150
    iput-object v11, v14, La52;->t:Lzh5;

    .line 151
    .line 152
    move/from16 v12, p4

    .line 153
    .line 154
    iput v12, v14, La52;->x:I

    .line 155
    .line 156
    iput-wide v7, v14, La52;->z:J

    .line 157
    .line 158
    iput v4, v14, La52;->C:I

    .line 159
    .line 160
    invoke-static {v2, v14}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-ne v2, v6, :cond_5

    .line 165
    .line 166
    :goto_2
    move-object v2, v6

    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :cond_5
    move-object v4, v2

    .line 170
    move-object v2, v1

    .line 171
    move-object v1, v4

    .line 172
    move-object v4, v11

    .line 173
    move-object v11, v9

    .line 174
    :goto_3
    move-object v9, v1

    .line 175
    check-cast v9, Ljava/util/Set;

    .line 176
    .line 177
    iget-object v1, v0, Lb52;->D:Ljava/util/Set;

    .line 178
    .line 179
    iget-object v13, v0, Lb52;->F:Ljava/util/Set;

    .line 180
    .line 181
    check-cast v13, Ljava/lang/Iterable;

    .line 182
    .line 183
    invoke-static {v1, v13}, Lst4;->n(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v0, v0, Lb52;->e:Lmh5;

    .line 188
    .line 189
    iput-object v5, v14, La52;->q:Ljava/util/List;

    .line 190
    .line 191
    iput-object v2, v14, La52;->r:Lhi5;

    .line 192
    .line 193
    iput-object v10, v14, La52;->s:Ljava/util/List;

    .line 194
    .line 195
    iput-object v4, v14, La52;->t:Lzh5;

    .line 196
    .line 197
    move-object v13, v9

    .line 198
    check-cast v13, Ljava/util/Set;

    .line 199
    .line 200
    iput-object v13, v14, La52;->u:Ljava/util/Set;

    .line 201
    .line 202
    iput-object v1, v14, La52;->v:Ljava/util/LinkedHashSet;

    .line 203
    .line 204
    iput-object v11, v14, La52;->w:Ljava/util/List;

    .line 205
    .line 206
    iput v12, v14, La52;->x:I

    .line 207
    .line 208
    iput-wide v7, v14, La52;->z:J

    .line 209
    .line 210
    iput v12, v14, La52;->y:I

    .line 211
    .line 212
    iput v3, v14, La52;->C:I

    .line 213
    .line 214
    invoke-virtual {v0, v14}, Lmh5;->a(Lgk0;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-ne v0, v6, :cond_6

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_6
    move-object/from16 v16, v1

    .line 222
    .line 223
    move-object v1, v0

    .line 224
    move-object v0, v10

    .line 225
    move-object v10, v11

    .line 226
    move v11, v12

    .line 227
    move-object v12, v2

    .line 228
    move-wide v2, v7

    .line 229
    move-object v8, v9

    .line 230
    move-object/from16 v9, v16

    .line 231
    .line 232
    move-object v7, v4

    .line 233
    move v4, v11

    .line 234
    :goto_4
    move-object v13, v1

    .line 235
    check-cast v13, Ljava/util/Set;

    .line 236
    .line 237
    iput-object v5, v14, La52;->q:Ljava/util/List;

    .line 238
    .line 239
    iput-object v5, v14, La52;->r:Lhi5;

    .line 240
    .line 241
    iput-object v5, v14, La52;->s:Ljava/util/List;

    .line 242
    .line 243
    iput-object v5, v14, La52;->t:Lzh5;

    .line 244
    .line 245
    iput-object v5, v14, La52;->u:Ljava/util/Set;

    .line 246
    .line 247
    iput-object v5, v14, La52;->v:Ljava/util/LinkedHashSet;

    .line 248
    .line 249
    iput-object v5, v14, La52;->w:Ljava/util/List;

    .line 250
    .line 251
    iput v4, v14, La52;->x:I

    .line 252
    .line 253
    iput v15, v14, La52;->C:I

    .line 254
    .line 255
    move-object v1, v5

    .line 256
    move-wide/from16 v16, v2

    .line 257
    .line 258
    move-object v2, v6

    .line 259
    move-wide/from16 v5, v16

    .line 260
    .line 261
    move-object v3, v12

    .line 262
    const/4 v12, 0x4

    .line 263
    move-object v4, v0

    .line 264
    invoke-virtual/range {v3 .. v14}, Lhi5;->b(Ljava/util/List;JLzh5;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;IILjava/util/Set;Lgk0;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-ne v0, v2, :cond_7

    .line 269
    .line 270
    :goto_5
    return-object v2

    .line 271
    :cond_7
    :goto_6
    check-cast v0, Ljava/lang/Iterable;

    .line 272
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    .line 274
    .line 275
    const/16 v3, 0xa

    .line 276
    .line 277
    invoke-static {v0, v3}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_9

    .line 293
    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Lci5;

    .line 299
    .line 300
    iget-object v5, v4, Lci5;->a:Lqh5;

    .line 301
    .line 302
    iget-object v5, v5, Lqh5;->b:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v4, v4, Lci5;->b:Ljava/util/ArrayList;

    .line 305
    .line 306
    new-instance v6, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-static {v4, v3}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_8

    .line 324
    .line 325
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    check-cast v7, Lz53;

    .line 330
    .line 331
    invoke-static {v7, v1, v15}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_8
    new-instance v4, Lj40;

    .line 340
    .line 341
    const/16 v7, 0xc

    .line 342
    .line 343
    invoke-direct {v4, v5, v6, v7}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_9
    return-object v2
.end method

.method public static m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V
    .locals 4

    sget-object v0, La32;->v:La32;

    if-ne p4, v0, :cond_check_series

    goto :cond_row_allowed

    :cond_check_series
    sget-object v0, La32;->w:La32;

    if-ne p4, v0, :cond_check_digital

    goto :cond_row_allowed

    :cond_check_digital
    sget-object v0, La32;->x:La32;

    if-ne p4, v0, :cond_check_novelties

    goto :cond_row_allowed

    :cond_check_novelties
    sget-object v0, La32;->y:La32;

    if-ne p4, v0, :cond_check_premieres

    goto :cond_row_allowed

    :cond_check_premieres
    sget-object v0, La32;->z:La32;

    if-ne p4, v0, :cond_check_mylist

    goto :cond_row_allowed

    :cond_check_mylist
    sget-object v0, La32;->n:La32;

    if-ne p4, v0, :cond_row_rejected

    goto :cond_row_allowed

    :cond_row_rejected
    return-void

    :cond_row_allowed
    and-int/lit16 v0, p8, 0x80

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    sget-object v3, La32;->x:La32;
    if-ne p4, v3, :cond_not_digital_unblock
    const/4 v0, 0x1
    :cond_not_digital_unblock
    and-int/lit16 v3, p8, 0x100

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_1
    and-int/lit16 p8, p8, 0x200

    .line 16
    .line 17
    if-eqz p8, :cond_2

    .line 18
    .line 19
    sget-object p7, Lq51;->n:Lq51;

    .line 20
    .line 21
    :cond_2
    if-eqz p6, :cond_3

    .line 22
    .line 23
    iget-object p8, p6, Lj40;->b:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p8, :cond_3

    .line 26
    .line 27
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p8

    .line 35
    invoke-interface {p0, p4, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    if-eqz p6, :cond_5

    .line 39
    .line 40
    iget-object p0, p6, Lj40;->b:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p8

    .line 46
    if-eqz p8, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p8

    .line 53
    const/4 v2, 0x7

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {p6, v3, p8, v2}, Lj40;->a(Lj40;Ljava/util/List;Ljava/lang/String;I)Lj40;

    .line 56
    .line 57
    .line 58
    move-result-object p6

    .line 59
    invoke-virtual {p1, p4, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lz22;

    .line 63
    .line 64
    invoke-direct {p1, p4, p5, v1}, Lz22;-><init>(La32;Lc52;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance p1, Lwl4;

    .line 71
    .line 72
    invoke-direct {p1, p4, p0, v0, p7}, Lwl4;-><init>(Ljava/lang/Enum;Ljava/util/List;ZLjava/util/Set;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final k(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lb52;->g0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lb52;->z:Lt55;

    .line 9
    .line 10
    invoke-virtual {p1}, Lt55;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Lu32;

    .line 16
    .line 17
    invoke-virtual {p0}, Lb52;->l()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lb52;->l0:Lv02;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lti4;->X(Ljava/util/List;Lv02;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v9, 0x7b

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-static/range {v1 .. v9}, Lu32;->a(Lu32;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;ZLjava/lang/String;I)Lu32;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v0, v1}, Lt55;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v6, Lc52;->q:Lc52;

    .line 4
    .line 5
    sget-object v12, Lc52;->p:Lc52;

    .line 6
    .line 7
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v17, La32;->n:La32;

    .line 28
    .line 29
    sget-object v18, Lc52;->n:Lc52;

    .line 30
    .line 31
    iget-object v5, v0, Lb52;->O:Lj40;

    .line 32
    .line 33
    const/16 v20, 0x0

    .line 34
    .line 35
    const/16 v21, 0x300

    .line 36
    .line 37
    move-object v13, v1

    .line 38
    move-object v14, v2

    .line 39
    move-object v15, v3

    .line 40
    move-object/from16 v16, v4

    .line 41
    .line 42
    move-object/from16 v19, v5

    .line 43
    .line 44
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 45
    .line 46
    .line 47
    sget-object v17, La32;->o:La32;

    .line 48
    .line 49
    sget-object v18, Lc52;->o:Lc52;

    .line 50
    .line 51
    iget-object v5, v0, Lb52;->R:Lj40;

    .line 52
    .line 53
    const/16 v21, 0x380

    .line 54
    .line 55
    move-object/from16 v19, v5

    .line 56
    .line 57
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 58
    .line 59
    .line 60
    iget-object v5, v0, Lb52;->S:Ljava/util/List;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-static {v7, v5}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    move-object/from16 v19, v5

    .line 68
    .line 69
    check-cast v19, Lj40;

    .line 70
    .line 71
    if-eqz v19, :cond_0

    .line 72
    .line 73
    sget-object v17, La32;->p:La32;

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const/16 v21, 0x380

    .line 78
    .line 79
    move-object v13, v1

    .line 80
    move-object v14, v2

    .line 81
    move-object v15, v3

    .line 82
    move-object/from16 v16, v4

    .line 83
    .line 84
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 85
    .line 86
    .line 87
    :cond_0
    iget-object v5, v0, Lb52;->S:Ljava/util/List;

    .line 88
    .line 89
    const/4 v8, 0x1

    .line 90
    invoke-static {v8, v5}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    move-object/from16 v19, v5

    .line 95
    .line 96
    check-cast v19, Lj40;

    .line 97
    .line 98
    if-eqz v19, :cond_1

    .line 99
    .line 100
    sget-object v17, La32;->q:La32;

    .line 101
    .line 102
    const/16 v20, 0x0

    .line 103
    .line 104
    const/16 v21, 0x380

    .line 105
    .line 106
    move-object v13, v1

    .line 107
    move-object v14, v2

    .line 108
    move-object v15, v3

    .line 109
    move-object/from16 v16, v4

    .line 110
    .line 111
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v5, v0, Lb52;->U:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v7, v5}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    move-object/from16 v19, v5

    .line 121
    .line 122
    check-cast v19, Lj40;

    .line 123
    .line 124
    if-eqz v19, :cond_2

    .line 125
    .line 126
    sget-object v17, La32;->r:La32;

    .line 127
    .line 128
    const/16 v20, 0x0

    .line 129
    .line 130
    const/16 v21, 0x380

    .line 131
    .line 132
    move-object v13, v1

    .line 133
    move-object v14, v2

    .line 134
    move-object v15, v3

    .line 135
    move-object/from16 v16, v4

    .line 136
    .line 137
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget-object v5, v0, Lb52;->U:Ljava/util/List;

    .line 141
    .line 142
    invoke-static {v8, v5}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    move-object/from16 v19, v5

    .line 147
    .line 148
    check-cast v19, Lj40;

    .line 149
    .line 150
    if-eqz v19, :cond_3

    .line 151
    .line 152
    sget-object v17, La32;->s:La32;

    .line 153
    .line 154
    const/16 v20, 0x0

    .line 155
    .line 156
    const/16 v21, 0x380

    .line 157
    .line 158
    move-object v13, v1

    .line 159
    move-object v14, v2

    .line 160
    move-object v15, v3

    .line 161
    move-object/from16 v16, v4

    .line 162
    .line 163
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 164
    .line 165
    .line 166
    :cond_3
    sget-object v17, La32;->t:La32;

    .line 167
    .line 168
    iget-object v5, v0, Lb52;->V:Lj40;

    .line 169
    .line 170
    const/16 v20, 0x0

    .line 171
    .line 172
    const/16 v21, 0x380

    .line 173
    .line 174
    move-object v13, v1

    .line 175
    move-object v14, v2

    .line 176
    move-object v15, v3

    .line 177
    move-object/from16 v16, v4

    .line 178
    .line 179
    move-object/from16 v19, v5

    .line 180
    .line 181
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 182
    .line 183
    .line 184
    sget-object v17, La32;->u:La32;

    .line 185
    .line 186
    iget-object v5, v0, Lb52;->T:Lj40;

    .line 187
    .line 188
    move-object/from16 v19, v5

    .line 189
    .line 190
    invoke-static/range {v13 .. v21}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 191
    .line 192
    .line 193
    sget-object v11, La32;->v:La32;

    .line 194
    .line 195
    iget-object v5, v0, Lb52;->G:Ljava/util/List;

    .line 196
    .line 197
    const v9, 0x7f0e008a

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v9, v5}, Lb52;->o(ILjava/util/List;)Lj40;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    const/4 v14, 0x0

    .line 205
    const/16 v15, 0x300

    .line 206
    .line 207
    move v9, v7

    .line 208
    move-object v7, v1

    .line 209
    move v1, v9

    .line 210
    move v9, v8

    .line 211
    move-object v8, v2

    .line 212
    move v2, v9

    .line 213
    move-object v9, v3

    .line 214
    move-object v10, v4

    .line 215
    invoke-static/range {v7 .. v15}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 216
    .line 217
    .line 218
    move-object v13, v7

    .line 219
    move-object v14, v8

    .line 220
    sget-object v11, La32;->w:La32;

    .line 221
    .line 222
    iget-object v5, v0, Lb52;->H:Ljava/util/List;

    .line 223
    .line 224
    const v7, 0x7f0e008b

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v7, v5}, Lb52;->o(ILjava/util/List;)Lj40;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const/4 v14, 0x0

    .line 232
    move-object v7, v13

    .line 233
    move-object v13, v5

    .line 234
    invoke-static/range {v7 .. v15}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 235
    .line 236
    .line 237
    move-object v13, v7

    .line 238
    move-object v14, v8

    .line 239
    sget-object v11, La32;->x:La32;

    .line 240
    .line 241
    iget-object v5, v0, Lb52;->I:Ljava/util/List;

    .line 242
    .line 243
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    const/4 v8, 0x0

    .line 248
    if-nez v7, :cond_4

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_4
    move-object v5, v8

    .line 252
    :goto_0
    const/16 v7, 0xc

    .line 253
    .line 254
    const/4 v9, 0x3

    .line 255
    const/16 v10, 0xa

    .line 256
    .line 257
    if-eqz v5, :cond_6

    .line 258
    .line 259
    iget-object v15, v0, Lb52;->b:Landroid/content/Context;

    .line 260
    .line 261
    const v1, 0x7f0e0073

    .line 262
    .line 263
    .line 264
    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    new-instance v15, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-static {v5, v10}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_5

    .line 289
    .line 290
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    check-cast v5, Lz53;

    .line 295
    .line 296
    invoke-static {v5, v8, v9}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_5
    new-instance v2, Lj40;

    .line 305
    .line 306
    invoke-direct {v2, v1, v15, v7}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 307
    .line 308
    .line 309
    move-object v1, v8

    .line 310
    :goto_2
    move-object v8, v14

    .line 311
    goto :goto_3

    .line 312
    :cond_6
    move-object v1, v8

    .line 313
    move-object v2, v1

    .line 314
    goto :goto_2

    .line 315
    :goto_3
    iget-object v14, v0, Lb52;->N:Ljava/util/Set;

    .line 316
    .line 317
    const/16 v15, 0x180

    .line 318
    .line 319
    move-object/from16 v23, v13

    .line 320
    .line 321
    move-object v13, v2

    .line 322
    move v2, v7

    .line 323
    move-object/from16 v7, v23

    .line 324
    .line 325
    move/from16 v23, v9

    .line 326
    .line 327
    move-object v9, v3

    .line 328
    move/from16 v3, v23

    .line 329
    .line 330
    move/from16 v23, v10

    .line 331
    .line 332
    move-object v10, v4

    .line 333
    move/from16 v4, v23

    .line 334
    .line 335
    invoke-static/range {v7 .. v15}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 336
    .line 337
    .line 338
    move-object v13, v7

    .line 339
    move-object v14, v8

    .line 340
    move-object v15, v9

    .line 341
    sget-object v11, La32;->y:La32;

    .line 342
    .line 343
    iget-object v8, v0, Lb52;->J:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-nez v5, :cond_7

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_7
    move-object v8, v1

    .line 353
    :goto_4
    if-eqz v8, :cond_9

    .line 354
    .line 355
    iget-object v5, v0, Lb52;->b:Landroid/content/Context;

    .line 356
    .line 357
    const v7, 0x7f0e007e

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    new-instance v7, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-static {v8, v4}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    if-eqz v9, :cond_8

    .line 385
    .line 386
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    check-cast v9, Lz53;

    .line 391
    .line 392
    invoke-static {v9, v1, v3}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 393
    .line 394
    .line 395
    move-result-object v9

    .line 396
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_5

    .line 400
    :cond_8
    new-instance v8, Lj40;

    .line 401
    .line 402
    invoke-direct {v8, v5, v7, v2}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 403
    .line 404
    .line 405
    :goto_6
    move-object v5, v14

    .line 406
    goto :goto_7

    .line 407
    :cond_9
    move-object v8, v1

    .line 408
    goto :goto_6

    .line 409
    :goto_7
    const/4 v14, 0x0

    .line 410
    move-object v9, v15

    .line 411
    const/16 v15, 0x380

    .line 412
    .line 413
    move-object v7, v13

    .line 414
    move-object v13, v8

    .line 415
    move-object v8, v5

    .line 416
    invoke-static/range {v7 .. v15}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 417
    .line 418
    .line 419
    move-object v13, v7

    .line 420
    move-object v14, v8

    .line 421
    move-object v15, v9

    .line 422
    sget-object v11, La32;->z:La32;

    .line 423
    .line 424
    iget-object v13, v0, Lb52;->K:Lj40;

    .line 425
    .line 426
    const/4 v14, 0x0

    .line 427
    const/16 v15, 0x380

    .line 428
    .line 429
    invoke-static/range {v7 .. v15}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 430
    .line 431
    .line 432
    move-object v13, v7

    .line 433
    move-object v14, v8

    .line 434
    move-object v15, v9

    .line 435
    sget-object v11, La32;->A:La32;

    .line 436
    .line 437
    iget-object v13, v0, Lb52;->f0:Lj40;

    .line 438
    .line 439
    const/4 v14, 0x0

    .line 440
    const/16 v15, 0x380

    .line 441
    .line 442
    invoke-static/range {v7 .. v15}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 443
    .line 444
    .line 445
    move-object v13, v7

    .line 446
    move-object v14, v8

    .line 447
    move-object v15, v9

    .line 448
    sget-object v5, La32;->B:La32;

    .line 449
    .line 450
    iget-object v7, v0, Lb52;->a0:Lj40;

    .line 451
    .line 452
    const/4 v8, 0x0

    .line 453
    const/16 v9, 0x380

    .line 454
    .line 455
    move v11, v3

    .line 456
    move v12, v4

    .line 457
    move-object v4, v10

    .line 458
    move-object v3, v15

    .line 459
    const/4 v15, 0x0

    .line 460
    move v10, v2

    .line 461
    move-object v2, v14

    .line 462
    move-object v14, v1

    .line 463
    move-object v1, v13

    .line 464
    const/4 v13, 0x1

    .line 465
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 466
    .line 467
    .line 468
    sget-object v5, La32;->C:La32;

    .line 469
    .line 470
    iget-object v7, v0, Lb52;->W:Lj40;

    .line 471
    .line 472
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 473
    .line 474
    .line 475
    sget-object v5, La32;->D:La32;

    .line 476
    .line 477
    iget-object v7, v0, Lb52;->c0:Lj40;

    .line 478
    .line 479
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 480
    .line 481
    .line 482
    sget-object v5, La32;->E:La32;

    .line 483
    .line 484
    iget-object v7, v0, Lb52;->X:Lj40;

    .line 485
    .line 486
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 487
    .line 488
    .line 489
    sget-object v5, La32;->F:La32;

    .line 490
    .line 491
    iget-object v7, v0, Lb52;->Y:Lj40;

    .line 492
    .line 493
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 494
    .line 495
    .line 496
    sget-object v5, La32;->G:La32;

    .line 497
    .line 498
    iget-object v7, v0, Lb52;->b0:Lj40;

    .line 499
    .line 500
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 501
    .line 502
    .line 503
    sget-object v5, La32;->H:La32;

    .line 504
    .line 505
    iget-object v7, v0, Lb52;->Z:Lj40;

    .line 506
    .line 507
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 508
    .line 509
    .line 510
    iget-object v5, v0, Lb52;->d0:Ljava/util/List;

    .line 511
    .line 512
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 513
    .line 514
    .line 515
    move-result-object v16

    .line 516
    move v7, v15

    .line 517
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    if-eqz v5, :cond_c

    .line 522
    .line 523
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    add-int/lit8 v17, v7, 0x1

    .line 528
    .line 529
    if-ltz v7, :cond_b

    .line 530
    .line 531
    check-cast v5, Lj40;

    .line 532
    .line 533
    sget-object v8, Lb52;->m0:Ljava/util/List;

    .line 534
    .line 535
    invoke-static {v7, v8}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    check-cast v7, La32;

    .line 540
    .line 541
    if-eqz v7, :cond_a

    .line 542
    .line 543
    const/4 v8, 0x0

    .line 544
    const/16 v9, 0x380

    .line 545
    .line 546
    move-object/from16 v23, v7

    .line 547
    .line 548
    move-object v7, v5

    .line 549
    move-object/from16 v5, v23

    .line 550
    .line 551
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 552
    .line 553
    .line 554
    :cond_a
    move/from16 v7, v17

    .line 555
    .line 556
    goto :goto_8

    .line 557
    :cond_b
    invoke-static {}, Lya0;->d0()V

    .line 558
    .line 559
    .line 560
    throw v14

    .line 561
    :cond_c
    iget-object v5, v0, Lb52;->e0:Ljava/util/List;

    .line 562
    .line 563
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v16

    .line 567
    move v7, v15

    .line 568
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    if-eqz v5, :cond_f

    .line 573
    .line 574
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    add-int/lit8 v17, v7, 0x1

    .line 579
    .line 580
    if-ltz v7, :cond_e

    .line 581
    .line 582
    check-cast v5, Lj40;

    .line 583
    .line 584
    sget-object v8, Lb52;->n0:Ljava/util/List;

    .line 585
    .line 586
    invoke-static {v7, v8}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    check-cast v7, La32;

    .line 591
    .line 592
    if-eqz v7, :cond_d

    .line 593
    .line 594
    const/4 v8, 0x0

    .line 595
    const/16 v9, 0x280

    .line 596
    .line 597
    move-object/from16 v23, v7

    .line 598
    .line 599
    move-object v7, v5

    .line 600
    move-object/from16 v5, v23

    .line 601
    .line 602
    invoke-static/range {v1 .. v9}, Lb52;->m(Ljava/util/LinkedHashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;La32;Lc52;Lj40;Ljava/util/Set;I)V

    .line 603
    .line 604
    .line 605
    :cond_d
    move/from16 v7, v17

    .line 606
    .line 607
    goto :goto_9

    .line 608
    :cond_e
    invoke-static {}, Lya0;->d0()V

    .line 609
    .line 610
    .line 611
    throw v14

    .line 612
    :cond_f
    iget-object v0, v0, Lb52;->z:Lt55;

    .line 613
    .line 614
    invoke-virtual {v0}, Lt55;->getValue()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    check-cast v0, Lu32;

    .line 619
    .line 620
    iget-object v0, v0, Lu32;->d:Ljava/util/List;

    .line 621
    .line 622
    new-instance v5, Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-static {v0, v12}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 625
    .line 626
    .line 627
    move-result v6

    .line 628
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    .line 630
    .line 631
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    if-eqz v6, :cond_10

    .line 640
    .line 641
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    check-cast v6, Ljk0;

    .line 646
    .line 647
    iget v6, v6, Ljk0;->g:I

    .line 648
    .line 649
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    goto :goto_a

    .line 657
    :cond_10
    invoke-static {v5}, Lxa0;->V0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    sget-object v5, Lg42;->u:Lg42;

    .line 662
    .line 663
    const/4 v6, 0x6

    .line 664
    const/16 v7, 0xe

    .line 665
    .line 666
    invoke-static {v4, v5, v0, v6, v7}, Lir1;->l(Ljava/util/AbstractList;Ls84;Ljava/util/Set;II)Ljava/util/ArrayList;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-static {v0, v12}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    invoke-static {v4}, Lb33;->X(I)I

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    const/16 v5, 0x10

    .line 679
    .line 680
    if-ge v4, v5, :cond_11

    .line 681
    .line 682
    move v4, v5

    .line 683
    :cond_11
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 684
    .line 685
    invoke-direct {v6, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    if-eqz v4, :cond_12

    .line 697
    .line 698
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    check-cast v4, Lvl4;

    .line 703
    .line 704
    iget-object v7, v4, Lvl4;->a:Ljava/lang/Object;

    .line 705
    .line 706
    iget-object v4, v4, Lvl4;->b:Ljava/util/List;

    .line 707
    .line 708
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    goto :goto_b

    .line 712
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    :cond_13
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 722
    .line 723
    .line 724
    move-result v4

    .line 725
    if-eqz v4, :cond_14

    .line 726
    .line 727
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    move-object v7, v4

    .line 732
    check-cast v7, Lz22;

    .line 733
    .line 734
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    iget-object v7, v7, Lz22;->a:Ljava/lang/Object;

    .line 739
    .line 740
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v7

    .line 744
    if-eqz v7, :cond_13

    .line 745
    .line 746
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    goto :goto_c

    .line 750
    :cond_14
    sget-object v3, Lc52;->s:Lb71;

    .line 751
    .line 752
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 753
    .line 754
    invoke-static {v3, v12}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 755
    .line 756
    .line 757
    move-result v7

    .line 758
    invoke-static {v7}, Lb33;->X(I)I

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    if-ge v7, v5, :cond_15

    .line 763
    .line 764
    goto :goto_d

    .line 765
    :cond_15
    move v5, v7

    .line 766
    :goto_d
    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3}, Lw0;->iterator()Ljava/util/Iterator;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    if-eqz v5, :cond_18

    .line 778
    .line 779
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    move-object v7, v5

    .line 784
    check-cast v7, Lc52;

    .line 785
    .line 786
    new-instance v8, Ljava/util/ArrayList;

    .line 787
    .line 788
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 796
    .line 797
    .line 798
    move-result v16

    .line 799
    if-eqz v16, :cond_17

    .line 800
    .line 801
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v14

    .line 805
    move-object v11, v14

    .line 806
    check-cast v11, Lz22;

    .line 807
    .line 808
    iget-object v11, v11, Lz22;->b:Lc52;

    .line 809
    .line 810
    if-ne v11, v7, :cond_16

    .line 811
    .line 812
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    :cond_16
    const/4 v11, 0x3

    .line 816
    const/4 v14, 0x0

    .line 817
    goto :goto_f

    .line 818
    :cond_17
    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    const/4 v11, 0x3

    .line 822
    const/4 v14, 0x0

    .line 823
    goto :goto_e

    .line 824
    :cond_18
    sget-object v0, Lc52;->s:Lb71;

    .line 825
    .line 826
    new-instance v3, Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0}, Lw0;->iterator()Ljava/util/Iterator;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    if-eqz v5, :cond_1b

    .line 840
    .line 841
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    check-cast v5, Lc52;

    .line 846
    .line 847
    invoke-static {v5, v4}, Lb33;->W(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    check-cast v5, Ljava/lang/Iterable;

    .line 852
    .line 853
    new-instance v7, Ljava/util/ArrayList;

    .line 854
    .line 855
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .line 857
    .line 858
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    :cond_19
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 863
    .line 864
    .line 865
    move-result v8

    .line 866
    if-eqz v8, :cond_1a

    .line 867
    .line 868
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v8

    .line 872
    move-object v9, v8

    .line 873
    check-cast v9, Lz22;

    .line 874
    .line 875
    iget-boolean v9, v9, Lz22;->c:Z

    .line 876
    .line 877
    if-nez v9, :cond_19

    .line 878
    .line 879
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    goto :goto_11

    .line 883
    :cond_1a
    invoke-static {v7, v3}, Lxa0;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 884
    .line 885
    .line 886
    goto :goto_10

    .line 887
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    const/16 v5, 0x19

    .line 892
    .line 893
    const/16 v7, 0x14

    .line 894
    .line 895
    if-lt v0, v7, :cond_1d

    .line 896
    .line 897
    invoke-static {v3, v5}, Lxa0;->M0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    new-instance v3, Ljava/util/ArrayList;

    .line 902
    .line 903
    invoke-static {v0, v12}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 904
    .line 905
    .line 906
    move-result v4

    .line 907
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 908
    .line 909
    .line 910
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 915
    .line 916
    .line 917
    move-result v4

    .line 918
    if-eqz v4, :cond_1c

    .line 919
    .line 920
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    check-cast v4, Lz22;

    .line 925
    .line 926
    iget-object v4, v4, Lz22;->a:Ljava/lang/Object;

    .line 927
    .line 928
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    goto :goto_12

    .line 932
    :cond_1c
    move/from16 v18, v15

    .line 933
    .line 934
    goto/16 :goto_17

    .line 935
    .line 936
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    .line 937
    .line 938
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 939
    .line 940
    .line 941
    move-result v8

    .line 942
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 946
    .line 947
    .line 948
    move-result v3

    .line 949
    sub-int/2addr v7, v3

    .line 950
    sget-object v3, Lc52;->s:Lb71;

    .line 951
    .line 952
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    new-instance v8, Lt0;

    .line 956
    .line 957
    invoke-direct {v8, v3, v15}, Lt0;-><init>(Ljava/lang/Object;I)V

    .line 958
    .line 959
    .line 960
    :goto_13
    invoke-virtual {v8}, Lt0;->hasNext()Z

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    if-eqz v3, :cond_23

    .line 965
    .line 966
    invoke-virtual {v8}, Lt0;->next()Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    check-cast v3, Lc52;

    .line 971
    .line 972
    invoke-static {v3, v4}, Lb33;->W(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    check-cast v3, Ljava/util/List;

    .line 977
    .line 978
    new-instance v9, Ljava/util/ArrayList;

    .line 979
    .line 980
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .line 982
    .line 983
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 984
    .line 985
    .line 986
    move-result-object v11

    .line 987
    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 988
    .line 989
    .line 990
    move-result v14

    .line 991
    if-eqz v14, :cond_1f

    .line 992
    .line 993
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v14

    .line 997
    move/from16 v18, v15

    .line 998
    .line 999
    move-object v15, v14

    .line 1000
    check-cast v15, Lz22;

    .line 1001
    .line 1002
    iget-boolean v15, v15, Lz22;->c:Z

    .line 1003
    .line 1004
    if-nez v15, :cond_1e

    .line 1005
    .line 1006
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    :cond_1e
    move/from16 v15, v18

    .line 1010
    .line 1011
    goto :goto_14

    .line 1012
    :cond_1f
    move/from16 v18, v15

    .line 1013
    .line 1014
    invoke-static {v9, v0}, Lxa0;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1015
    .line 1016
    .line 1017
    if-lez v7, :cond_22

    .line 1018
    .line 1019
    new-instance v9, Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    :cond_20
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v11

    .line 1032
    if-eqz v11, :cond_21

    .line 1033
    .line 1034
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v11

    .line 1038
    move-object v14, v11

    .line 1039
    check-cast v14, Lz22;

    .line 1040
    .line 1041
    iget-boolean v14, v14, Lz22;->c:Z

    .line 1042
    .line 1043
    if-eqz v14, :cond_20

    .line 1044
    .line 1045
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    goto :goto_15

    .line 1049
    :cond_21
    invoke-static {v9, v7}, Lxa0;->M0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v3

    .line 1053
    invoke-static {v3, v0}, Lxa0;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1057
    .line 1058
    .line 1059
    move-result v3

    .line 1060
    sub-int/2addr v7, v3

    .line 1061
    :cond_22
    move/from16 v15, v18

    .line 1062
    .line 1063
    goto :goto_13

    .line 1064
    :cond_23
    move/from16 v18, v15

    .line 1065
    .line 1066
    invoke-static {v0, v5}, Lxa0;->M0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    new-instance v3, Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-static {v0, v12}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 1073
    .line 1074
    .line 1075
    move-result v4

    .line 1076
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1077
    .line 1078
    .line 1079
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v4

    .line 1087
    if-eqz v4, :cond_24

    .line 1088
    .line 1089
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v4

    .line 1093
    check-cast v4, Lz22;

    .line 1094
    .line 1095
    iget-object v4, v4, Lz22;->a:Ljava/lang/Object;

    .line 1096
    .line 1097
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    goto :goto_16

    .line 1101
    :cond_24
    :goto_17
    new-instance v0, Ljava/util/HashSet;

    .line 1102
    .line 1103
    invoke-static {v3, v10}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 1104
    .line 1105
    .line 1106
    move-result v4

    .line 1107
    invoke-static {v4}, Lb33;->X(I)I

    .line 1108
    .line 1109
    .line 1110
    move-result v4

    .line 1111
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-static {v3, v0}, Lxa0;->P0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 1115
    .line 1116
    .line 1117
    new-instance v7, Ljava/util/ArrayList;

    .line 1118
    .line 1119
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 1120
    .line 1121
    .line 1122
    move-result v4

    .line 1123
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v1

    .line 1130
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v1

    .line 1134
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1135
    .line 1136
    .line 1137
    move-result v4

    .line 1138
    if-eqz v4, :cond_26

    .line 1139
    .line 1140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v4

    .line 1144
    check-cast v4, Ljava/util/Map$Entry;

    .line 1145
    .line 1146
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v5

    .line 1150
    check-cast v5, La32;

    .line 1151
    .line 1152
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v4

    .line 1156
    check-cast v4, Ljava/lang/Number;

    .line 1157
    .line 1158
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 1159
    .line 1160
    .line 1161
    move-result v4

    .line 1162
    new-instance v8, Lll4;

    .line 1163
    .line 1164
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v9

    .line 1168
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v10

    .line 1172
    check-cast v10, Ljava/util/List;

    .line 1173
    .line 1174
    if-eqz v10, :cond_25

    .line 1175
    .line 1176
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1177
    .line 1178
    .line 1179
    move-result v10

    .line 1180
    goto :goto_19

    .line 1181
    :cond_25
    move/from16 v10, v18

    .line 1182
    .line 1183
    :goto_19
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v5

    .line 1187
    invoke-direct {v8, v4, v10, v9, v5}, Lll4;-><init>(IILjava/lang/String;Z)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    .line 1192
    .line 1193
    goto :goto_18

    .line 1194
    :cond_26
    new-instance v11, Lyi3;

    .line 1195
    .line 1196
    const/16 v0, 0x18

    .line 1197
    .line 1198
    invoke-direct {v11, v0}, Lyi3;-><init>(I)V

    .line 1199
    .line 1200
    .line 1201
    const/16 v12, 0x1e

    .line 1202
    .line 1203
    const-string v8, " | "

    .line 1204
    .line 1205
    const/4 v9, 0x0

    .line 1206
    const/4 v10, 0x0

    .line 1207
    invoke-static/range {v7 .. v12}, Lxa0;->x0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lqs1;I)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    sget-object v1, Li31;->e:Ljava/lang/String;

    .line 1212
    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v1

    .line 1217
    if-eqz v1, :cond_27

    .line 1218
    .line 1219
    goto/16 :goto_1a

    .line 1220
    .line 1221
    :cond_27
    sput-object v0, Li31;->e:Ljava/lang/String;

    .line 1222
    .line 1223
    const-string v1, "FluxRows"

    .line 1224
    .line 1225
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    .line 1227
    .line 1228
    sget-boolean v0, Li31;->f:Z

    .line 1229
    .line 1230
    if-nez v0, :cond_2d

    .line 1231
    .line 1232
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v0

    .line 1236
    if-eqz v0, :cond_28

    .line 1237
    .line 1238
    goto/16 :goto_1a

    .line 1239
    .line 1240
    :cond_28
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v1

    .line 1248
    if-eqz v1, :cond_2d

    .line 1249
    .line 1250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v1

    .line 1254
    check-cast v1, Lll4;

    .line 1255
    .line 1256
    iget v1, v1, Lll4;->c:I

    .line 1257
    .line 1258
    if-lez v1, :cond_29

    .line 1259
    .line 1260
    sput-boolean v13, Li31;->f:Z

    .line 1261
    .line 1262
    sget-object v0, Lik1;->a:Lik1;

    .line 1263
    .line 1264
    sget-wide v0, Lik1;->g:J

    .line 1265
    .line 1266
    const-wide/16 v4, 0x0

    .line 1267
    .line 1268
    cmp-long v7, v0, v4

    .line 1269
    .line 1270
    if-lez v7, :cond_2d

    .line 1271
    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1273
    .line 1274
    .line 1275
    move-result-wide v7

    .line 1276
    sub-long/2addr v7, v0

    .line 1277
    long-to-double v0, v7

    .line 1278
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    div-double/2addr v0, v7

    .line 1284
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    new-array v1, v13, [Ljava/lang/Object;

    .line 1289
    .line 1290
    aput-object v0, v1, v18

    .line 1291
    .line 1292
    invoke-static {v1, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    const-string v1, "\u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u0437\u0456\u0431\u0440\u0430\u043d\u043e \u0437\u0430 %.1f \u0441"

    .line 1297
    .line 1298
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    const-string v1, "catalog"

    .line 1303
    .line 1304
    invoke-static {v1, v0}, Lik1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    sget-object v0, Lo55;->a:Lo55;

    .line 1308
    .line 1309
    sget-boolean v0, Lo55;->c:Z

    .line 1310
    .line 1311
    if-eqz v0, :cond_2a

    .line 1312
    .line 1313
    goto/16 :goto_1a

    .line 1314
    .line 1315
    :cond_2a
    sget-wide v9, Lik1;->g:J

    .line 1316
    .line 1317
    cmp-long v0, v9, v4

    .line 1318
    .line 1319
    if-gtz v0, :cond_2b

    .line 1320
    .line 1321
    goto/16 :goto_1a

    .line 1322
    .line 1323
    :cond_2b
    sput-boolean v13, Lo55;->c:Z

    .line 1324
    .line 1325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1326
    .line 1327
    .line 1328
    move-result-wide v4

    .line 1329
    sub-long/2addr v4, v9

    .line 1330
    sget-object v0, Lo55;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1331
    .line 1332
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    .line 1338
    .line 1339
    check-cast v0, Ljava/lang/Iterable;

    .line 1340
    .line 1341
    new-instance v9, Lxe4;

    .line 1342
    .line 1343
    const/16 v10, 0x9

    .line 1344
    .line 1345
    invoke-direct {v9, v10}, Lxe4;-><init>(I)V

    .line 1346
    .line 1347
    .line 1348
    invoke-static {v0, v9}, Lxa0;->L0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    const/4 v11, 0x3

    .line 1353
    invoke-static {v0, v11}, Lxa0;->M0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v17

    .line 1357
    new-instance v0, Lv35;

    .line 1358
    .line 1359
    invoke-direct {v0, v13}, Lv35;-><init>(I)V

    .line 1360
    .line 1361
    .line 1362
    const/16 v22, 0x1e

    .line 1363
    .line 1364
    const-string v18, " \u00b7 "

    .line 1365
    .line 1366
    const/16 v19, 0x0

    .line 1367
    .line 1368
    const/16 v20, 0x0

    .line 1369
    .line 1370
    move-object/from16 v21, v0

    .line 1371
    .line 1372
    invoke-static/range {v17 .. v22}, Lxa0;->x0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lqs1;I)Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    invoke-static {}, Lya0;->H()Lqv2;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v9

    .line 1380
    sget-wide v10, Lo55;->b:J

    .line 1381
    .line 1382
    long-to-double v10, v10

    .line 1383
    div-double/2addr v10, v7

    .line 1384
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    const-string v13, "\u043f\u0435\u0440\u0448\u0438\u0439 \u043a\u0430\u0434\u0440 "

    .line 1387
    .line 1388
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    const-string v10, "\u0441"

    .line 1395
    .line 1396
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v11

    .line 1403
    const/16 v12, 0x2c

    .line 1404
    .line 1405
    const/16 v13, 0x2e

    .line 1406
    .line 1407
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v11

    .line 1411
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v9, v11}, Lqv2;->add(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    long-to-double v4, v4

    .line 1418
    div-double/2addr v4, v7

    .line 1419
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    const-string v8, "\u0441\u0442\u043e\u0440\u0456\u043d\u043a\u0430 "

    .line 1422
    .line 1423
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v4

    .line 1436
    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v4

    .line 1440
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v9, v4}, Lqv2;->add(Ljava/lang/Object;)Z

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1447
    .line 1448
    .line 1449
    move-result v4

    .line 1450
    if-lez v4, :cond_2c

    .line 1451
    .line 1452
    const-string v4, "\u043d\u0430\u0439\u0434\u043e\u0432\u0448\u0456 \u0440\u044f\u0434\u0438: "

    .line 1453
    .line 1454
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    invoke-virtual {v9, v0}, Lqv2;->add(Ljava/lang/Object;)Z

    .line 1459
    .line 1460
    .line 1461
    :cond_2c
    invoke-static {v9}, Lya0;->C(Lqv2;)Lqv2;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v10

    .line 1465
    const/4 v14, 0x0

    .line 1466
    const/16 v15, 0x3e

    .line 1467
    .line 1468
    const-string v11, " \u00b7 "

    .line 1469
    .line 1470
    const/4 v12, 0x0

    .line 1471
    const/4 v13, 0x0

    .line 1472
    invoke-static/range {v10 .. v15}, Lxa0;->x0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lqs1;I)Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    invoke-static {v1, v0}, Lik1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    :cond_2d
    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    .line 1480
    .line 1481
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    .line 1483
    .line 1484
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v1

    .line 1488
    :cond_2e
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1489
    .line 1490
    .line 1491
    move-result v3

    .line 1492
    if-eqz v3, :cond_31

    .line 1493
    .line 1494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v3

    .line 1498
    check-cast v3, La32;

    .line 1499
    .line 1500
    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v4

    .line 1504
    check-cast v4, Ljava/util/List;

    .line 1505
    .line 1506
    if-nez v4, :cond_2f

    .line 1507
    .line 1508
    const/4 v8, 0x0

    .line 1509
    const/4 v14, 0x0

    .line 1510
    goto :goto_1c

    .line 1511
    :cond_2f
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v3

    .line 1515
    check-cast v3, Lj40;

    .line 1516
    .line 1517
    if-eqz v3, :cond_30

    .line 1518
    .line 1519
    const/16 v5, 0xd

    .line 1520
    .line 1521
    const/4 v14, 0x0

    .line 1522
    invoke-static {v3, v4, v14, v5}, Lj40;->a(Lj40;Ljava/util/List;Ljava/lang/String;I)Lj40;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v8

    .line 1526
    goto :goto_1c

    .line 1527
    :cond_30
    const/4 v14, 0x0

    .line 1528
    move-object v8, v14

    .line 1529
    :goto_1c
    if-eqz v8, :cond_2e

    .line 1530
    .line 1531
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    .line 1533
    .line 1534
    goto :goto_1b

    .line 1535
    :cond_31
    move-object/from16 v2, p0

    iget-object v1, v2, Lb52;->b:Landroid/content/Context;

    invoke-static {v1, v0}, LSmartTubeBridge;->insertSubscriptionsRow(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final n(Lgk0;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lh42;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lh42;

    .line 11
    .line 12
    iget v3, v2, Lh42;->t:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lh42;->t:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lh42;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lh42;-><init>(Lb52;Lgk0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lh42;->r:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lh42;->t:I

    .line 32
    .line 33
    sget-object v4, Lbm0;->n:Lbm0;

    .line 34
    .line 35
    sget-object v5, Lq56;->a:Lq56;

    .line 36
    .line 37
    const/4 v6, 0x5

    .line 38
    const/4 v7, 0x2

    .line 39
    const/16 v8, 0xa

    .line 40
    .line 41
    const/4 v9, 0x4

    .line 42
    const/4 v10, 0x3

    .line 43
    const/4 v11, 0x1

    .line 44
    const/4 v12, 0x0

    .line 45
    if-eqz v3, :cond_6

    .line 46
    .line 47
    if-eq v3, v11, :cond_5

    .line 48
    .line 49
    if-eq v3, v7, :cond_4

    .line 50
    .line 51
    if-eq v3, v10, :cond_3

    .line 52
    .line 53
    if-eq v3, v9, :cond_2

    .line 54
    .line 55
    if-ne v3, v6, :cond_1

    .line 56
    .line 57
    iget-object v0, v2, Lh42;->q:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Led5;

    .line 60
    .line 61
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v5

    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lkk;->i(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v12

    .line 71
    :cond_2
    iget-object v3, v2, Lh42;->q:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Led5;

    .line 74
    .line 75
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object v8, v12

    .line 79
    goto/16 :goto_12

    .line 80
    .line 81
    :cond_3
    iget-object v3, v2, Lh42;->q:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v3, Led5;

    .line 84
    .line 85
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_10

    .line 89
    .line 90
    :cond_4
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    iget-object v3, v2, Lh42;->q:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v3, Lb52;

    .line 97
    .line 98
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, v2, Lh42;->q:Ljava/lang/Object;

    .line 106
    .line 107
    iput v11, v2, Lh42;->t:I

    .line 108
    .line 109
    iget-object v1, v0, Lb52;->f:Lxk4;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lxk4;->c(Lgk0;)Ljava/io/Serializable;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-ne v1, v4, :cond_7

    .line 116
    .line 117
    goto/16 :goto_13

    .line 118
    .line 119
    :cond_7
    move-object v3, v0

    .line 120
    :goto_1
    check-cast v1, Ljava/lang/Iterable;

    .line 121
    .line 122
    new-instance v13, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-static {v1, v8}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_8

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    check-cast v14, Lsc6;

    .line 146
    .line 147
    iget v14, v14, Lsc6;->a:I

    .line 148
    .line 149
    invoke-static {v14, v13}, Lc43;->D(ILjava/util/ArrayList;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    invoke-static {v13}, Lxa0;->V0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v3, Lb52;->F:Ljava/util/Set;

    .line 158
    .line 159
    sget-object v1, Lo55;->a:Lo55;

    .line 160
    .line 161
    new-instance v3, Lj81;

    .line 162
    .line 163
    invoke-direct {v3, v0, v12}, Lj81;-><init>(Lb52;Lfk0;)V

    .line 164
    .line 165
    .line 166
    iput-object v12, v2, Lh42;->q:Ljava/lang/Object;

    .line 167
    .line 168
    iput v7, v2, Lh42;->t:I

    .line 169
    .line 170
    const-string v13, "\u043f\u0440\u043e\u0444\u0456\u043b\u044c \u0441\u043c\u0430\u043a\u0443"

    .line 171
    .line 172
    invoke-virtual {v1, v13, v3, v2}, Lo55;->a(Ljava/lang/String;Lqs1;Lgk0;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-ne v1, v4, :cond_9

    .line 177
    .line 178
    goto/16 :goto_13

    .line 179
    .line 180
    :cond_9
    :goto_3
    check-cast v1, Led5;

    .line 181
    .line 182
    iget-object v3, v1, Led5;->c:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-nez v13, :cond_a

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_a
    move-object v3, v12

    .line 192
    :goto_4
    const/16 v13, 0xc

    .line 193
    .line 194
    iget-object v14, v0, Lb52;->b:Landroid/content/Context;

    .line 195
    .line 196
    if-eqz v3, :cond_c

    .line 197
    .line 198
    const v15, 0x7f0e008e

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    new-instance v6, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-static {v3, v8}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    if-eqz v11, :cond_b

    .line 226
    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    check-cast v11, Lz53;

    .line 232
    .line 233
    invoke-static {v11, v12, v10}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_b
    new-instance v3, Lj40;

    .line 242
    .line 243
    invoke-direct {v3, v15, v6, v13}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 244
    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_c
    move-object v3, v12

    .line 248
    :goto_6
    iput-object v3, v0, Lb52;->R:Lj40;

    .line 249
    .line 250
    iget-object v3, v1, Led5;->a:Ljava/util/List;

    .line 251
    .line 252
    iput-object v3, v0, Lb52;->M:Ljava/util/List;

    .line 253
    .line 254
    iget-object v3, v1, Led5;->c:Ljava/util/List;

    .line 255
    .line 256
    new-instance v6, Ljava/util/HashSet;

    .line 257
    .line 258
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    if-eqz v11, :cond_d

    .line 270
    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    check-cast v11, Lz53;

    .line 276
    .line 277
    iget v11, v11, Lz53;->a:I

    .line 278
    .line 279
    new-instance v15, Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-direct {v15, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_d
    iget-object v3, v1, Led5;->h:Ljava/util/List;

    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    new-instance v11, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    if-eqz v15, :cond_13

    .line 307
    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v15

    .line 312
    const/16 v16, 0x0

    .line 313
    .line 314
    move-object v13, v15

    .line 315
    check-cast v13, Lkt;

    .line 316
    .line 317
    iget-object v13, v13, Lkt;->c:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v17

    .line 323
    if-eqz v17, :cond_f

    .line 324
    .line 325
    :cond_e
    move/from16 v13, v16

    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_f
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v13

    .line 332
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v17

    .line 336
    if-eqz v17, :cond_e

    .line 337
    .line 338
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v17

    .line 342
    move-object/from16 v10, v17

    .line 343
    .line 344
    check-cast v10, Lz53;

    .line 345
    .line 346
    iget v10, v10, Lz53;->a:I

    .line 347
    .line 348
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    if-nez v10, :cond_10

    .line 357
    .line 358
    add-int/lit8 v16, v16, 0x1

    .line 359
    .line 360
    if-ltz v16, :cond_11

    .line 361
    .line 362
    :cond_10
    const/4 v10, 0x3

    .line 363
    goto :goto_9

    .line 364
    :cond_11
    invoke-static {}, Lya0;->c0()V

    .line 365
    .line 366
    .line 367
    throw v12

    .line 368
    :goto_a
    if-lt v13, v9, :cond_12

    .line 369
    .line 370
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    :cond_12
    const/4 v10, 0x3

    .line 374
    const/16 v13, 0xc

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_13
    const/16 v16, 0x0

    .line 378
    .line 379
    new-instance v3, Ljava/util/HashSet;

    .line 380
    .line 381
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 382
    .line 383
    .line 384
    new-instance v6, Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .line 388
    .line 389
    new-instance v10, Lsp1;

    .line 390
    .line 391
    const/16 v13, 0x1a

    .line 392
    .line 393
    invoke-direct {v10, v13}, Lsp1;-><init>(I)V

    .line 394
    .line 395
    .line 396
    invoke-static {v11, v10}, Lxa0;->L0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    if-eqz v11, :cond_17

    .line 409
    .line 410
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    check-cast v11, Lkt;

    .line 415
    .line 416
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    if-ge v13, v7, :cond_17

    .line 421
    .line 422
    iget-object v13, v11, Lkt;->c:Ljava/util/List;

    .line 423
    .line 424
    new-instance v15, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v13

    .line 433
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v17

    .line 437
    if-eqz v17, :cond_15

    .line 438
    .line 439
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    move-object v12, v7

    .line 444
    check-cast v12, Lz53;

    .line 445
    .line 446
    iget v12, v12, Lz53;->a:I

    .line 447
    .line 448
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-eqz v12, :cond_14

    .line 457
    .line 458
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    :cond_14
    const/4 v7, 0x2

    .line 462
    const/4 v12, 0x0

    .line 463
    goto :goto_c

    .line 464
    :cond_15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-lt v7, v9, :cond_16

    .line 469
    .line 470
    iget-object v7, v11, Lkt;->a:Ljava/lang/String;

    .line 471
    .line 472
    iget-boolean v12, v11, Lkt;->b:Z

    .line 473
    .line 474
    move-object/from16 v24, v10

    .line 475
    .line 476
    iget-wide v9, v11, Lkt;->d:J

    .line 477
    .line 478
    new-instance v18, Lkt;

    .line 479
    .line 480
    move-object/from16 v21, v7

    .line 481
    .line 482
    move-wide/from16 v19, v9

    .line 483
    .line 484
    move/from16 v23, v12

    .line 485
    .line 486
    move-object/from16 v22, v15

    .line 487
    .line 488
    invoke-direct/range {v18 .. v23}, Lkt;-><init>(JLjava/lang/String;Ljava/util/List;Z)V

    .line 489
    .line 490
    .line 491
    move-object/from16 v7, v18

    .line 492
    .line 493
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-object/from16 v10, v24

    .line 497
    .line 498
    const/4 v7, 0x2

    .line 499
    const/4 v9, 0x4

    .line 500
    :goto_d
    const/4 v12, 0x0

    .line 501
    goto :goto_b

    .line 502
    :cond_16
    const/4 v7, 0x2

    .line 503
    goto :goto_d

    .line 504
    :cond_17
    new-instance v3, Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-static {v6, v8}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_19

    .line 522
    .line 523
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    check-cast v7, Lkt;

    .line 528
    .line 529
    iget-object v9, v7, Lkt;->a:Ljava/lang/String;

    .line 530
    .line 531
    const/4 v10, 0x1

    .line 532
    new-array v11, v10, [Ljava/lang/Object;

    .line 533
    .line 534
    aput-object v9, v11, v16

    .line 535
    .line 536
    const v9, 0x7f0e006f

    .line 537
    .line 538
    .line 539
    invoke-virtual {v14, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    iget-object v7, v7, Lkt;->c:Ljava/util/List;

    .line 547
    .line 548
    new-instance v11, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-static {v7, v8}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 551
    .line 552
    .line 553
    move-result v12

    .line 554
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v12

    .line 565
    if-eqz v12, :cond_18

    .line 566
    .line 567
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v12

    .line 571
    check-cast v12, Lz53;

    .line 572
    .line 573
    const/4 v8, 0x0

    .line 574
    const/4 v15, 0x3

    .line 575
    invoke-static {v12, v8, v15}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 576
    .line 577
    .line 578
    move-result-object v12

    .line 579
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    const/16 v8, 0xa

    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_18
    const/4 v15, 0x3

    .line 586
    new-instance v7, Lj40;

    .line 587
    .line 588
    const/16 v8, 0xc

    .line 589
    .line 590
    invoke-direct {v7, v9, v11, v8}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    const/16 v8, 0xa

    .line 597
    .line 598
    goto :goto_e

    .line 599
    :cond_19
    const/4 v15, 0x3

    .line 600
    iput-object v3, v0, Lb52;->S:Ljava/util/List;

    .line 601
    .line 602
    invoke-virtual {v0}, Lb52;->u()V

    .line 603
    .line 604
    .line 605
    move/from16 v3, v16

    .line 606
    .line 607
    invoke-virtual {v0, v3}, Lb52;->k(Z)V

    .line 608
    .line 609
    .line 610
    iput-object v1, v2, Lh42;->q:Ljava/lang/Object;

    .line 611
    .line 612
    iput v15, v2, Lh42;->t:I

    .line 613
    .line 614
    invoke-virtual {v0, v2}, Lb52;->t(Lgk0;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    if-ne v3, v4, :cond_1a

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_1a
    move-object v3, v1

    .line 622
    :goto_10
    iput-object v3, v2, Lh42;->q:Ljava/lang/Object;

    .line 623
    .line 624
    const/4 v13, 0x4

    .line 625
    iput v13, v2, Lh42;->t:I

    .line 626
    .line 627
    new-instance v1, Lr42;

    .line 628
    .line 629
    const/4 v8, 0x0

    .line 630
    invoke-direct {v1, v0, v8}, Lr42;-><init>(Lb52;Lfk0;)V

    .line 631
    .line 632
    .line 633
    invoke-static {v1, v2}, Ls63;->F(Let1;Lfk0;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    if-ne v1, v4, :cond_1b

    .line 638
    .line 639
    goto :goto_11

    .line 640
    :cond_1b
    move-object v1, v5

    .line 641
    :goto_11
    if-ne v1, v4, :cond_1c

    .line 642
    .line 643
    goto :goto_13

    .line 644
    :cond_1c
    :goto_12
    iget-object v1, v3, Led5;->a:Ljava/util/List;

    .line 645
    .line 646
    iget-object v3, v3, Led5;->b:Ljava/util/List;

    .line 647
    .line 648
    iput-object v8, v2, Lh42;->q:Ljava/lang/Object;

    .line 649
    .line 650
    const/4 v6, 0x5

    .line 651
    iput v6, v2, Lh42;->t:I

    .line 652
    .line 653
    invoke-virtual {v0, v1, v3, v2}, Lb52;->r(Ljava/util/List;Ljava/util/List;Lgk0;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    if-ne v0, v4, :cond_1d

    .line 658
    .line 659
    :goto_13
    return-object v4

    .line 660
    :cond_1d
    return-object v5
.end method

.method public final o(ILjava/util/List;)Lj40;
    .locals 17

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object/from16 v0, p2

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    iget-object v2, v2, Lb52;->b:Landroid/content/Context;

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    invoke-static {v0, v4}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    add-int/lit8 v6, v4, 0x1

    .line 54
    .line 55
    if-ltz v4, :cond_1

    .line 56
    .line 57
    check-cast v5, Lz53;

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    invoke-static {v5, v1, v4}, Lbt4;->p(Lz53;Ljava/lang/String;I)Lq43;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    const/4 v15, 0x0

    .line 69
    const/16 v16, 0x7dff

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    invoke-static/range {v7 .. v16}, Lq43;->a(Lq43;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)Lq43;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move v4, v6

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-static {}, Lya0;->d0()V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    new-instance v0, Lj40;

    .line 91
    .line 92
    const/16 v1, 0xc

    .line 93
    .line 94
    invoke-direct {v0, v2, v3, v1}, Lj40;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    return-object v1
.end method

.method public final p(Lgk0;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Li42;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Li42;

    .line 7
    .line 8
    iget v1, v0, Li42;->w:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Li42;->w:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Li42;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Li42;-><init>(Lb52;Lgk0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Li42;->u:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Li42;->w:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    iget-object v5, p0, Lb52;->d:Lapp/flux/tv/data/local/c;

    .line 33
    .line 34
    sget-object v6, Lbm0;->n:Lbm0;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eq v1, v4, :cond_3

    .line 39
    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    iget-boolean p0, v0, Li42;->t:Z

    .line 45
    .line 46
    iget-object v1, v0, Li42;->s:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, v0, Li42;->r:Ljava/util/Set;

    .line 49
    .line 50
    check-cast v2, Ljava/util/Set;

    .line 51
    .line 52
    iget-object v0, v0, Li42;->q:Llz;

    .line 53
    .line 54
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {p0}, Lkk;->i(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0

    .line 66
    :cond_2
    iget-object v1, v0, Li42;->r:Ljava/util/Set;

    .line 67
    .line 68
    check-cast v1, Ljava/util/Set;

    .line 69
    .line 70
    iget-object v3, v0, Li42;->q:Llz;

    .line 71
    .line 72
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v10, v3

    .line 76
    move-object v3, v1

    .line 77
    move-object v1, v10

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v1, v0, Li42;->q:Llz;

    .line 80
    .line 81
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Llz;->Q:Llz;

    .line 89
    .line 90
    iget-object p1, v5, Lapp/flux/tv/data/local/c;->I:Lo44;

    .line 91
    .line 92
    iput-object v1, v0, Li42;->q:Llz;

    .line 93
    .line 94
    iput v4, v0, Li42;->w:I

    .line 95
    .line 96
    invoke-static {p1, v0}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p1, v6, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    :goto_1
    check-cast p1, Ljava/util/Set;

    .line 104
    .line 105
    iget-object v4, v5, Lapp/flux/tv/data/local/c;->K:Lo44;

    .line 106
    .line 107
    iput-object v1, v0, Li42;->q:Llz;

    .line 108
    .line 109
    move-object v7, p1

    .line 110
    check-cast v7, Ljava/util/Set;

    .line 111
    .line 112
    iput-object v7, v0, Li42;->r:Ljava/util/Set;

    .line 113
    .line 114
    iput v3, v0, Li42;->w:I

    .line 115
    .line 116
    invoke-static {v4, v0}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-ne v3, v6, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move-object v10, v3

    .line 124
    move-object v3, p1

    .line 125
    move-object p1, v10

    .line 126
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iget-object p0, p0, Lb52;->b:Landroid/content/Context;

    .line 133
    .line 134
    invoke-static {p0}, Lb51;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    iget-object v4, v5, Lapp/flux/tv/data/local/c;->u:Lo44;

    .line 139
    .line 140
    iput-object v1, v0, Li42;->q:Llz;

    .line 141
    .line 142
    move-object v5, v3

    .line 143
    check-cast v5, Ljava/util/Set;

    .line 144
    .line 145
    iput-object v5, v0, Li42;->r:Ljava/util/Set;

    .line 146
    .line 147
    iput-object p0, v0, Li42;->s:Ljava/lang/String;

    .line 148
    .line 149
    iput-boolean p1, v0, Li42;->t:Z

    .line 150
    .line 151
    iput v2, v0, Li42;->w:I

    .line 152
    .line 153
    invoke-static {v4, v0}, Lu41;->w(Ldi1;Lfk0;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-ne v0, v6, :cond_7

    .line 158
    .line 159
    :goto_3
    return-object v6

    .line 160
    :cond_7
    move-object v2, v1

    .line 161
    move-object v1, p0

    .line 162
    move p0, p1

    .line 163
    move-object p1, v0

    .line 164
    move-object v0, v2

    .line 165
    move-object v2, v3

    .line 166
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    check-cast v2, Ljava/lang/Iterable;

    .line 182
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    .line 184
    .line 185
    const/16 v3, 0xa

    .line 186
    .line 187
    invoke-static {v2, v3}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_8

    .line 203
    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Lx02;

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_8
    invoke-static {v0}, Lxa0;->K0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const/4 v8, 0x0

    .line 223
    const/16 v9, 0x3e

    .line 224
    .line 225
    const-string v5, ","

    .line 226
    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v7, 0x0

    .line 229
    invoke-static/range {v4 .. v9}, Lxa0;->x0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lqs1;I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v3, "v1|"

    .line 236
    .line 237
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v0, "|theaters:"

    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string p0, "|lang:"

    .line 252
    .line 253
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string p0, "|imdb:"

    .line 260
    .line 261
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    return-object p0
.end method

.method public final q(Z)V
    .locals 10

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :cond_0
    iget-object p1, p0, Lb52;->z:Lt55;

    .line 4
    .line 5
    invoke-virtual {p1}, Lt55;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lu32;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/16 v9, 0x3e

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-static/range {v1 .. v9}, Lu32;->a(Lu32;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;ZLjava/lang/String;I)Lu32;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lt55;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lb52;->B:Lb55;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lpl2;->g(Ljava/util/concurrent/CancellationException;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Lpc;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-direct {v1, p0, v0, v2}, Lpc;-><init>(Lnb6;Lfk0;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0, v1, v2}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lb52;->B:Lb55;

    .line 54
    .line 55
    new-instance v0, Lt;

    .line 56
    .line 57
    const/16 v1, 0x13

    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, Lt;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lpl2;->T(Lqs1;)Lsz0;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final r(Ljava/util/List;Ljava/util/List;Lgk0;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    instance-of v2, v0, Lm42;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lm42;

    .line 9
    .line 10
    iget v3, v2, Lm42;->x:I

    .line 11
    .line 12
    const/high16 v4, -0x80000000

    .line 13
    .line 14
    and-int v5, v3, v4

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    iput v3, v2, Lm42;->x:I

    .line 20
    .line 21
    :goto_0
    move-object v7, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v2, Lm42;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lm42;-><init>(Lb52;Lgk0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v0, v7, Lm42;->v:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v7, Lm42;->x:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    sget-object v10, Lbm0;->n:Lbm0;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v3, :cond_2

    .line 41
    .line 42
    if-ne v2, v9, :cond_1

    .line 43
    .line 44
    iget-object v2, v7, Lm42;->u:Lb52;

    .line 45
    .line 46
    iget-object v3, v7, Lm42;->t:Ljava/util/List;

    .line 47
    .line 48
    iget-object v4, v7, Lm42;->s:Lzh5;

    .line 49
    .line 50
    iget-object v5, v7, Lm42;->r:Ljava/util/List;

    .line 51
    .line 52
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lkk;->i(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v8

    .line 63
    :cond_2
    iget-object v2, v7, Lm42;->s:Lzh5;

    .line 64
    .line 65
    iget-object v3, v7, Lm42;->r:Ljava/util/List;

    .line 66
    .line 67
    iget-object v4, v7, Lm42;->q:Ljava/util/List;

    .line 68
    .line 69
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v12, v2

    .line 73
    move-object v2, v0

    .line 74
    move-object v0, v4

    .line 75
    move-object v4, v12

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-static {v0}, Le41;->S(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lb52;->b:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lb51;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v2, Lzh5;->n:Len4;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Len4;->k(Ljava/lang/String;)Lzh5;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object p1, v7, Lm42;->q:Ljava/util/List;

    .line 96
    .line 97
    iput-object p2, v7, Lm42;->r:Ljava/util/List;

    .line 98
    .line 99
    iput-object v2, v7, Lm42;->s:Lzh5;

    .line 100
    .line 101
    iput v3, v7, Lm42;->x:I

    .line 102
    .line 103
    iget-object v3, p0, Lb52;->v:Ljd5;

    .line 104
    .line 105
    invoke-virtual {v3, v7}, Ljd5;->b(Lgk0;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-ne v3, v10, :cond_4

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move-object v0, p1

    .line 113
    move-object v4, v2

    .line 114
    move-object v2, v3

    .line 115
    move-object v3, p2

    .line 116
    :goto_2
    check-cast v2, Lfd5;

    .line 117
    .line 118
    iget-object v2, v2, Lfd5;->a:Lgd5;

    .line 119
    .line 120
    const/4 v5, 0x4

    .line 121
    invoke-static {v2, v5}, Lgd5;->b(Lgd5;I)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move-object v0, v2

    .line 133
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    sget-object v0, Lb52;->o0:Ljava/util/List;

    .line 140
    .line 141
    :cond_6
    move-object v2, v0

    .line 142
    sget-object v11, Lo55;->a:Lo55;

    .line 143
    .line 144
    new-instance v0, Lep0;

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v6, 0x3

    .line 148
    move-object v1, p0

    .line 149
    invoke-direct/range {v0 .. v6}, Lep0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;Ljava/io/Serializable;Lfk0;I)V

    .line 150
    .line 151
    .line 152
    iput-object v8, v7, Lm42;->q:Ljava/util/List;

    .line 153
    .line 154
    iput-object v3, v7, Lm42;->r:Ljava/util/List;

    .line 155
    .line 156
    iput-object v4, v7, Lm42;->s:Lzh5;

    .line 157
    .line 158
    iput-object v2, v7, Lm42;->t:Ljava/util/List;

    .line 159
    .line 160
    iput-object p0, v7, Lm42;->u:Lb52;

    .line 161
    .line 162
    iput v9, v7, Lm42;->x:I

    .line 163
    .line 164
    const-string v5, "\u0442\u0435\u043c\u0438"

    .line 165
    .line 166
    invoke-virtual {v11, v5, v0, v7}, Lo55;->a(Ljava/lang/String;Lqs1;Lgk0;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-ne v0, v10, :cond_7

    .line 171
    .line 172
    :goto_4
    return-object v10

    .line 173
    :cond_7
    move-object v5, v3

    .line 174
    move-object v3, v2

    .line 175
    move-object v2, p0

    .line 176
    :goto_5
    check-cast v0, Ljava/util/List;

    .line 177
    .line 178
    iput-object v0, v2, Lb52;->d0:Ljava/util/List;

    .line 179
    .line 180
    new-instance v0, Lf42;

    .line 181
    .line 182
    invoke-direct {v0, v3, v5, v4}, Lf42;-><init>(Ljava/util/List;Ljava/util/List;Lzh5;)V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Lb52;->P:Lf42;

    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lb52;->k(Z)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lq56;->a:Lq56;

    .line 192
    .line 193
    return-object v0
.end method

.method public final s(Lgk0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lw42;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lw42;

    .line 7
    .line 8
    iget v1, v0, Lw42;->v:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lw42;->v:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lw42;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lw42;-><init>(Lb52;Lgk0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lw42;->t:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lw42;->v:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lw42;->s:Ljava/util/List;

    .line 35
    .line 36
    iget-object v1, v0, Lw42;->r:Ljava/util/List;

    .line 37
    .line 38
    iget-object v0, v0, Lw42;->q:Lir1;

    .line 39
    .line 40
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lkk;->i(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p1}, Le41;->S(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lir1;->t:Lir1;

    .line 55
    .line 56
    iget-object v1, p0, Lb52;->L:Ljava/util/List;

    .line 57
    .line 58
    iget-object v3, p0, Lb52;->M:Ljava/util/List;

    .line 59
    .line 60
    iput-object p1, v0, Lw42;->q:Lir1;

    .line 61
    .line 62
    iput-object v1, v0, Lw42;->r:Ljava/util/List;

    .line 63
    .line 64
    iput-object v3, v0, Lw42;->s:Ljava/util/List;

    .line 65
    .line 66
    iput v2, v0, Lw42;->v:I

    .line 67
    .line 68
    iget-object p0, p0, Lb52;->f:Lxk4;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lxk4;->b(Lgk0;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object v0, Lbm0;->n:Lbm0;

    .line 75
    .line 76
    if-ne p0, v0, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    move-object v0, p1

    .line 80
    move-object p1, p0

    .line 81
    move-object p0, v3

    .line 82
    :goto_1
    check-cast p1, Ljava/util/Set;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v4, v3

    .line 116
    check-cast v4, Lz53;

    .line 117
    .line 118
    iget v5, v4, Lz53;->a:I

    .line 119
    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_4

    .line 129
    .line 130
    iget-object v4, v4, Lz53;->e:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    invoke-static {v4}, Lb75;->X(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_b

    .line 150
    .line 151
    const/4 p1, 0x3

    .line 152
    invoke-static {v0, p1}, Lxa0;->M0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v1, Ljava/util/HashSet;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_7

    .line 170
    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lz53;

    .line 176
    .line 177
    iget v4, v4, Lz53;->a:I

    .line 178
    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    new-instance v3, Lmg;

    .line 188
    .line 189
    invoke-direct {v3, v0, v2}, Lmg;-><init>(Ljava/lang/Object;I)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Ln02;

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    invoke-direct {v0, v1, v4}, Ln02;-><init>(Ljava/util/HashSet;I)V

    .line 196
    .line 197
    .line 198
    new-instance v1, Lyf1;

    .line 199
    .line 200
    invoke-direct {v1, v3, v2, v0}, Lyf1;-><init>(Lbu4;ZLqs1;)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Ljt;

    .line 204
    .line 205
    const/4 v2, 0x2

    .line 206
    invoke-direct {v0, p0, v2}, Ljt;-><init>(Ljava/lang/Object;I)V

    .line 207
    .line 208
    .line 209
    new-instance p0, Lmv0;

    .line 210
    .line 211
    const/4 v2, 0x4

    .line 212
    invoke-direct {p0, v1, v0, v2}, Lmv0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    const/4 v1, 0x6

    .line 220
    rsub-int/lit8 v0, v0, 0x6

    .line 221
    .line 222
    invoke-static {p0, v0}, Lfu4;->E(Lbu4;I)Lbu4;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {p0}, Lfu4;->F(Lbu4;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    add-int/2addr v3, v2

    .line 241
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    :goto_4
    if-ge v4, v2, :cond_a

    .line 257
    .line 258
    invoke-static {v4, p1}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Lz53;

    .line 263
    .line 264
    if-eqz v3, :cond_8

    .line 265
    .line 266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_8
    invoke-static {v4, p0}, Lxa0;->s0(ILjava/util/List;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Lz53;

    .line 274
    .line 275
    if-eqz v3, :cond_9

    .line 276
    .line 277
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_a
    invoke-static {v0, v1}, Lxa0;->M0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    :cond_b
    sget-object p0, Lm51;->n:Lm51;

    .line 289
    .line 290
    return-object p0
.end method

.method public final t(Lgk0;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lx42;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lx42;

    .line 11
    .line 12
    iget v3, v2, Lx42;->t:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lx42;->t:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lx42;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lx42;-><init>(Lb52;Lgk0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lx42;->r:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lx42;->t:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x2

    .line 36
    sget-object v7, Lq56;->a:Lq56;

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    sget-object v9, Lbm0;->n:Lbm0;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    if-eq v3, v8, :cond_2

    .line 44
    .line 45
    if-ne v3, v6, :cond_1

    .line 46
    .line 47
    iget-object v2, v2, Lx42;->q:Lb52;

    .line 48
    .line 49
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Lkk;->i(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v5

    .line 59
    :cond_2
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {v1}, Le41;->S(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lb52;->L:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iput v8, v2, Lx42;->t:I

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lb52;->s(Lgk0;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-ne v1, v9, :cond_5

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_5
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    :goto_2
    return-object v7

    .line 93
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    check-cast v10, Lz53;

    .line 113
    .line 114
    iget v10, v10, Lz53;->a:I

    .line 115
    .line 116
    new-instance v11, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    iput-object v3, v0, Lb52;->N:Ljava/util/Set;

    .line 126
    .line 127
    iput-object v0, v2, Lx42;->q:Lb52;

    .line 128
    .line 129
    iput v6, v2, Lx42;->t:I

    .line 130
    .line 131
    new-instance v3, Lj42;

    .line 132
    .line 133
    invoke-direct {v3, v1, v0, v5, v4}, Lj42;-><init>(Ljava/util/List;Lb52;Lfk0;I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v2}, Ls63;->F(Let1;Lfk0;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-ne v1, v9, :cond_8

    .line 141
    .line 142
    :goto_4
    return-object v9

    .line 143
    :cond_8
    move-object v2, v0

    .line 144
    :goto_5
    check-cast v1, Ljava/util/List;

    .line 145
    .line 146
    iput-object v1, v2, Lb52;->k0:Ljava/util/List;

    .line 147
    .line 148
    iget-boolean v1, v0, Lb52;->g0:Z

    .line 149
    .line 150
    if-nez v1, :cond_a

    .line 151
    .line 152
    :cond_9
    iget-object v1, v0, Lb52;->z:Lt55;

    .line 153
    .line 154
    invoke-virtual {v1}, Lt55;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object v8, v2

    .line 159
    check-cast v8, Lu32;

    .line 160
    .line 161
    iget-object v10, v0, Lb52;->k0:Ljava/util/List;

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    const/16 v16, 0x7d

    .line 165
    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v11, 0x0

    .line 168
    const/4 v12, 0x0

    .line 169
    const/4 v13, 0x0

    .line 170
    const/4 v14, 0x0

    .line 171
    invoke-static/range {v8 .. v16}, Lu32;->a(Lu32;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;ZLjava/lang/String;I)Lu32;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v1, v2, v3}, Lt55;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    :cond_a
    invoke-virtual {v0, v4}, Lb52;->k(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lb52;->v()V

    .line 185
    .line 186
    .line 187
    return-object v7
.end method

.method public final u()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb52;->R:Lj40;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lj40;->b:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0, v2}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lq43;

    .line 36
    .line 37
    iget v4, v4, Lq43;->e:I

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v3, v1

    .line 48
    :cond_1
    sget-object v0, Lm51;->n:Lm51;

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    move-object v3, v0

    .line 53
    :cond_2
    iget-object v4, p0, Lb52;->S:Ljava/util/List;

    .line 54
    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lj40;

    .line 75
    .line 76
    iget-object v6, v6, Lj40;->b:Ljava/util/List;

    .line 77
    .line 78
    invoke-static {v6, v5}, Lxa0;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-static {v5, v2}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lq43;

    .line 106
    .line 107
    iget v6, v6, Lq43;->e:I

    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    iget-object v5, p0, Lb52;->T:Lj40;

    .line 118
    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    iget-object v5, v5, Lj40;->b:Ljava/util/List;

    .line 122
    .line 123
    if-eqz v5, :cond_5

    .line 124
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-static {v5, v2}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lq43;

    .line 149
    .line 150
    iget v6, v6, Lq43;->e:I

    .line 151
    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    if-nez v1, :cond_6

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    move-object v0, v1

    .line 164
    :goto_4
    iget-object v1, p0, Lb52;->z:Lt55;

    .line 165
    .line 166
    invoke-virtual {v1}, Lt55;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lu32;

    .line 171
    .line 172
    iget-object v1, v1, Lu32;->d:Ljava/util/List;

    .line 173
    .line 174
    new-instance v5, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-static {v1, v2}, Lya0;->F(Ljava/lang/Iterable;I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_7

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Ljk0;

    .line 198
    .line 199
    iget v2, v2, Ljk0;->g:I

    .line 200
    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    invoke-static {v4, v3}, Lxa0;->D0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lxa0;->D0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v1, p0, Lb52;->E:Ljava/util/Set;

    .line 218
    .line 219
    check-cast v1, Ljava/lang/Iterable;

    .line 220
    .line 221
    invoke-static {v1, v0}, Lxa0;->D0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v5, v0}, Lxa0;->D0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0}, Lxa0;->V0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iput-object v0, p0, Lb52;->D:Ljava/util/Set;

    .line 234
    .line 235
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb52;->l()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lb52;->l0:Lv02;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lti4;->X(Ljava/util/List;Lv02;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-boolean v2, p0, Lb52;->Q:Z

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    const/16 v2, 0x14

    .line 29
    .line 30
    if-lt v1, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lb52;->P:Lf42;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lb52;->Q:Z

    .line 40
    .line 41
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v5, Lm;

    .line 46
    .line 47
    const/16 v6, 0x19

    .line 48
    .line 49
    invoke-direct {v5, p0, v1, v4, v6}, Lm;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfk0;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v4, v5, v3}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    invoke-static {p0}, Lup0;->u(Lnb6;)Lo90;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lm;

    .line 60
    .line 61
    const/16 v5, 0x1a

    .line 62
    .line 63
    invoke-direct {v2, p0, v0, v4, v5}, Lm;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfk0;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v4, v2, v3}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 67
    .line 68
    .line 69
    return-void
.end method


