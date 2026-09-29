.class public final Lapp/flux/tv/MainActivity;
.super Lce0;
.source "r8-map-id-3359b042b52c63b926898b5dccea97bde7ae04781d34f528a0d9bcb63f546733"

# interfaces
.implements Liu1;


# instance fields
.field public volatile H:Lq3;

.field public final I:Ljava/lang/Object;

.field public J:Z

.field public K:Lt32;

.field public L:Ldb5;

.field public M:Lxa5;

.field public N:Lza5;

.field public O:Lapp/flux/tv/data/local/c;

.field public P:Lh15;

.field public Q:Ln76;

.field public volatile R:Z

.field public S:Z

.field public T:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lce0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lapp/flux/tv/MainActivity;->I:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lapp/flux/tv/MainActivity;->J:Z

    .line 13
    .line 14
    new-instance v0, Le12;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Le12;-><init>(Lapp/flux/tv/MainActivity;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lce0;->o:Lvj0;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lvj0;->b:Lce0;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Le12;->a(Lce0;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, v1, Lvj0;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lapp/flux/tv/MainActivity;->R:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lb51;->G(Landroid/content/Context;)Ljf;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lb51;->D(Ljf;)Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/content/res/Configuration;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->l()Lq3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lq3;->c()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final d()Lrb6;
    .locals 5

    .line 1
    iget-object v0, p0, Lce0;->F:Lub5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lub5;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lrb6;

    .line 8
    .line 9
    const-class v1, Lsu0;

    .line 10
    .line 11
    invoke-static {p0, v1}, Li31;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lsu0;

    .line 16
    .line 17
    check-cast p0, Lpn0;

    .line 18
    .line 19
    invoke-virtual {p0}, Lpn0;->a()Lhs0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lrf2;

    .line 24
    .line 25
    iget-object v3, p0, Lpn0;->a:Lun0;

    .line 26
    .line 27
    iget-object p0, p0, Lpn0;->b:Lrn0;

    .line 28
    .line 29
    const/16 v4, 0xd

    .line 30
    .line 31
    invoke-direct {v2, v3, p0, v4}, Lrf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Lb12;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1, v0, v2}, Lb12;-><init>(Lhs0;Lrb6;Lrf2;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->m()Ln76;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Ln76;->a:J

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    sput-wide v0, Ly31;->d:J

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x4

    .line 43
    if-ne v0, v1, :cond_6

    .line 44
    .line 45
    iget-boolean v0, p0, Lapp/flux/tv/MainActivity;->R:Z

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    if-eq v0, v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v0, p0, Lapp/flux/tv/MainActivity;->S:Z

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    iput-boolean v1, p0, Lapp/flux/tv/MainActivity;->S:Z

    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    iput-wide v2, p0, Lapp/flux/tv/MainActivity;->T:J

    .line 78
    .line 79
    iput-boolean v1, p0, Lapp/flux/tv/MainActivity;->S:Z

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-boolean v0, p0, Lapp/flux/tv/MainActivity;->S:Z

    .line 86
    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    iget-wide v3, p0, Lapp/flux/tv/MainActivity;->T:J

    .line 100
    .line 101
    sub-long/2addr v0, v3

    .line 102
    const-wide/16 v3, 0x258

    .line 103
    .line 104
    cmp-long v0, v0, v3

    .line 105
    .line 106
    if-ltz v0, :cond_6

    .line 107
    .line 108
    :cond_5
    iput-boolean v2, p0, Lapp/flux/tv/MainActivity;->S:Z

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 111
    .line 112
    .line 113
    return v2

    .line 114
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lbe0;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    return p0
.end method

.method public final l()Lq3;
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/flux/tv/MainActivity;->H:Lq3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lapp/flux/tv/MainActivity;->I:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lapp/flux/tv/MainActivity;->H:Lq3;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lq3;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lq3;-><init>(Lapp/flux/tv/MainActivity;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lapp/flux/tv/MainActivity;->H:Lq3;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    iget-object p0, p0, Lapp/flux/tv/MainActivity;->H:Lq3;

    .line 27
    .line 28
    return-object p0
.end method

.method public final m()Ln76;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/flux/tv/MainActivity;->Q:Ln76;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "userBusy"

    .line 7
    .line 8
    invoke-static {p0}, Lni2;->N(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lce0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->l()Lq3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p1, p0, Lq3;->q:Li4;

    .line 9
    .line 10
    iget-object v0, p1, Li4;->n:Lapp/flux/tv/MainActivity;

    .line 11
    .line 12
    iget-object p1, p1, Li4;->o:Lapp/flux/tv/MainActivity;

    .line 13
    .line 14
    invoke-static {v0, p1}, Li4;->a(Lapp/flux/tv/MainActivity;Lapp/flux/tv/MainActivity;)Lh23;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-class v0, Lg4;

    .line 19
    .line 20
    invoke-static {v0}, Lae4;->a(Ljava/lang/Class;)Lo80;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lh23;->E(Lo80;)Lnb6;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lg4;

    .line 29
    .line 30
    iget-object p1, p1, Lg4;->c:Lcg0;

    .line 31
    .line 32
    iput-object p1, p0, Lq3;->r:Lcg0;

    .line 33
    .line 34
    iget-object v0, p1, Lcg0;->o:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lmc3;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lq3;->p:Lapp/flux/tv/MainActivity;

    .line 41
    .line 42
    invoke-virtual {p0}, Lce0;->e()Lmc3;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-boolean v0, p1, Lcg0;->n:Z

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iput-object p0, p1, Lcg0;->o:Ljava/lang/Object;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    const-string p0, "setExtras should only be called for an Activity that extends ComponentActivity"

    .line 54
    .line 55
    invoke-static {p0}, Lkk;->i(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const v0, 0x7f0f002c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lapp/flux/tv/MainActivity;->n(Landroid/os/Bundle;)V

    invoke-static {p0}, LSmartTubeBridge;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, LSmartTubeBridge;->applyAppLanguage(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lx13;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lx13;-><init>(Lapp/flux/tv/MainActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lapp/flux/tv/MainActivity;->P:Lh15;

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    iget-object v4, p0, Lbe0;->n:Llu2;

    .line 72
    .line 73
    invoke-static {v0, v3, v4}, Lvg6;->a(Landroid/view/View;Lrl0;Llu2;)Lkc4;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const v3, 0x7f09002d

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lq56;->a:Lq56;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string p1, "smoothMotion"

    .line 89
    .line 90
    invoke-static {p1}, Lni2;->N(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    new-instance v0, Lnh4;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lnh4;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    move-object p1, v0

    .line 100
    :goto_1
    invoke-static {p1}, Loh4;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    const-string v0, "FluxMain"

    .line 107
    .line 108
    const-string v3, "smooth motion not installed"

    .line 109
    .line 110
    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    :cond_1
    sget-object p1, Lm86;->a:Lme0;

    .line 114
    .line 115
    sget-object v0, Lde0;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const v3, 0x1020002

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    instance-of v2, v0, Lwf0;

    .line 139
    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    check-cast v0, Lwf0;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    move-object v0, v1

    .line 146
    :goto_2
    if-eqz v0, :cond_3

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ly;->setParentCompositionContext(Lrg0;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lwf0;->setContent(Let1;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    new-instance v0, Lwf0;

    .line 156
    .line 157
    invoke-direct {v0, p0}, Lwf0;-><init>(Lapp/flux/tv/MainActivity;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ly;->setParentCompositionContext(Lrg0;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Lwf0;->setContent(Let1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lnq4;->k(Landroid/view/View;)Lju2;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-nez v1, :cond_4

    .line 179
    .line 180
    const v1, 0x7f0900c2

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-static {p1}, Lpq4;->e(Landroid/view/View;)Ltb6;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-nez v1, :cond_5

    .line 191
    .line 192
    const v1, 0x7f0900c6

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_5
    invoke-static {p1}, Loq4;->u(Landroid/view/View;)Lkn4;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-nez v1, :cond_6

    .line 203
    .line 204
    const v1, 0x7f0900c5

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    sget-object p1, Lde0;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 211
    .line 212
    invoke-virtual {p0, v0, p1}, Lce0;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->l()Lq3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, Lq3;->r:Lcg0;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcg0;->o:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lc61;->z(Lapp/flux/tv/MainActivity;)Lcu2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lw13;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v1, p0, v3, v4}, Lw13;-><init>(Lapp/flux/tv/MainActivity;Lfk0;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v3, v1, v2}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->m()Ln76;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iput-wide v4, v0, Ln76;->b:J

    .line 41
    .line 42
    invoke-static {p0}, Lc61;->z(Lapp/flux/tv/MainActivity;)Lcu2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lw13;

    .line 47
    .line 48
    invoke-direct {v1, p0, v3, v2}, Lw13;-><init>(Lapp/flux/tv/MainActivity;Lfk0;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v3, v1, v2}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lc61;->z(Lapp/flux/tv/MainActivity;)Lcu2;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lw13;

    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    invoke-direct {v1, p0, v3, v4}, Lw13;-><init>(Lapp/flux/tv/MainActivity;Lfk0;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v3, v1, v2}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lc61;->z(Lapp/flux/tv/MainActivity;)Lcu2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lw13;

    .line 72
    .line 73
    const/4 v4, 0x5

    .line 74
    invoke-direct {v1, p0, v3, v4}, Lw13;-><init>(Lapp/flux/tv/MainActivity;Lfk0;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v3, v1, v2}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/flux/tv/MainActivity;->K:Lt32;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lt32;->g:Lek0;

    .line 10
    .line 11
    new-instance v2, Lo32;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, p0, v0, v3}, Lo32;-><init>(Lt32;Lfk0;I)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    invoke-static {v1, v0, v2, p0}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "homeScreenSync"

    .line 23
    .line 24
    invoke-static {p0}, Lni2;->N(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lce0;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_out

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_out

    const-string v1, "app.flux.tv.ACTION_SYNC_CHANNELS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_check_epg

    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->syncChannels()V

    goto :cond_out

    :cond_check_epg
    const-string v1, "app.flux.tv.ACTION_SYNC_EPG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_out

    invoke-virtual {p0}, Lapp/flux/tv/MainActivity;->syncEpg()V

    :cond_out
    return-void
.end method

.method public final syncChannels()V
    .locals 4

    invoke-static {p0}, Lc61;->z(Lapp/flux/tv/MainActivity;)Lcu2;

    move-result-object v0

    new-instance v1, Lw13;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lw13;-><init>(Lapp/flux/tv/MainActivity;Lfk0;I)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u0430 \u0438 \u043a\u0430\u043d\u0430\u043b\u043e\u0432..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final syncEpg()V
    .locals 4

    invoke-static {p0}, Lc61;->z(Lapp/flux/tv/MainActivity;)Lcu2;

    move-result-object v0

    new-instance v1, Lw13;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lw13;-><init>(Lapp/flux/tv/MainActivity;Lfk0;I)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lg7;->x0(Lam0;Lrl0;Let1;I)Lb55;

    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u0442\u0435\u043b\u0435\u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u044b (EPG)..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
