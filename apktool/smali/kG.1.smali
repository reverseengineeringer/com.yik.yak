.class public LKg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LKm;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:LKl;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LKg;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LKg;->b:Ljava/util/concurrent/CountDownLatch;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, LKg;->d:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(LKh;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, LKg;-><init>()V

    return-void
.end method

.method public static a()LKg;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, LKi;->a()LKg;

    move-result-object v0

    return-object v0
.end method

.method private a(LKm;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, LKg;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, LKg;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 164
    return-void
.end method


# virtual methods
.method public declared-synchronized a(LHK;LIq;LJI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LKg;
    .locals 14

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, LKg;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 93
    :goto_0
    monitor-exit p0

    return-object v2

    .line 65
    :cond_0
    :try_start_1
    iget-object v2, p0, LKg;->c:LKl;

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p1}, LHK;->C()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-virtual/range {p2 .. p2}, LIq;->c()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v3, LIc;

    invoke-direct {v3}, LIc;-><init>()V

    invoke-virtual {v3, v2}, LIc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual/range {p2 .. p2}, LIq;->h()Ljava/lang/String;

    move-result-object v6

    .line 70
    new-instance v10, LIA;

    invoke-direct {v10}, LIA;-><init>()V

    .line 71
    new-instance v11, LKa;

    invoke-direct {v11}, LKa;-><init>()V

    .line 72
    new-instance v12, LJY;

    invoke-direct {v12, p1}, LJY;-><init>(LHK;)V

    .line 73
    invoke-static {v2}, LIe;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 74
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v8, v13

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 76
    new-instance v13, LKb;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {v13, p1, v0, v5, v1}, LKb;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;)V

    .line 79
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, LIq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, LIe;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v5}, LIe;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v6}, LIk;->a(Ljava/lang/String;)LIk;

    move-result-object v2

    invoke-virtual {v2}, LIk;->a()I

    move-result v8

    .line 85
    new-instance v2, LKp;

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v9}, LKp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    new-instance v3, LJZ;

    move-object v4, p1

    move-object v5, v2

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, LJZ;-><init>(LHK;LKp;LIj;LKo;LJW;LKq;)V

    iput-object v3, p0, LKg;->c:LKl;

    .line 92
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, LKg;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p0

    .line 93
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public a(LKj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LKj",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, LKg;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKm;

    .line 114
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p1, v0}, LKj;->b(LKm;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public b()LKm;
    .locals 1

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, LKg;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 126
    iget-object v0, p0, LKg;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKm;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LKg;->c:LKl;

    invoke-interface {v0}, LKl;->a()LKm;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, LKg;->a(LKm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LKg;->c:LKl;

    sget-object v1, LKk;->b:LKk;

    invoke-interface {v0, v1}, LKl;->a(LKk;)LKm;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, LKg;->a(LKm;)V

    .line 153
    if-nez v0, :cond_0

    .line 154
    invoke-static {}, LHA;->g()LHM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
