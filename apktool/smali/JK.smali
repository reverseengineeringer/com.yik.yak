.class public LJK;
.super LKm;
.source "SourceFile"


# static fields
.field private static a:LJK;


# instance fields
.field private c:Z

.field private d:LJK;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, LKm;-><init>()V

    .line 263
    return-void
.end method

.method private static declared-synchronized a(LJK;JZ)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 75
    const-class v1, LJK;

    monitor-enter v1

    :try_start_0
    sget-object v0, LJK;->a:LJK;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, LJK;

    invoke-direct {v0}, LJK;-><init>()V

    sput-object v0, LJK;->a:LJK;

    .line 77
    new-instance v0, LJN;

    invoke-direct {v0}, LJN;-><init>()V

    invoke-virtual {v0}, LJN;->start()V

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 81
    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 84
    invoke-virtual {p0}, LJK;->h()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, LJK;->e:J

    .line 94
    :goto_0
    invoke-direct {p0, v2, v3}, LJK;->b(J)J

    move-result-wide v4

    .line 95
    sget-object v0, LJK;->a:LJK;

    .line 96
    :goto_1
    iget-object v6, v0, LJK;->d:LJK;

    if-eqz v6, :cond_1

    iget-object v6, v0, LJK;->d:LJK;

    invoke-direct {v6, v2, v3}, LJK;->b(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 97
    :cond_1
    iget-object v2, v0, LJK;->d:LJK;

    iput-object v2, p0, LJK;->d:LJK;

    .line 98
    iput-object p0, v0, LJK;->d:LJK;

    .line 99
    sget-object v2, LJK;->a:LJK;

    if-ne v0, v2, :cond_2

    .line 100
    const-class v0, LJK;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_2
    monitor-exit v1

    return-void

    .line 85
    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    .line 86
    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, LJK;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 87
    :cond_4
    if-eqz p3, :cond_5

    .line 88
    :try_start_2
    invoke-virtual {p0}, LJK;->h()J

    move-result-wide v4

    iput-wide v4, p0, LJK;->e:J

    goto :goto_0

    .line 90
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_6
    iget-object v0, v0, LJK;->d:LJK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized a(LJK;)Z
    .locals 3

    .prologue
    .line 117
    const-class v1, LJK;

    monitor-enter v1

    :try_start_0
    sget-object v0, LJK;->a:LJK;

    :goto_0
    if-eqz v0, :cond_1

    .line 118
    iget-object v2, v0, LJK;->d:LJK;

    if-ne v2, p0, :cond_0

    .line 119
    iget-object v2, p0, LJK;->d:LJK;

    iput-object v2, v0, LJK;->d:LJK;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, LJK;->d:LJK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v0, 0x0

    .line 126
    :goto_1
    monitor-exit v1

    return v0

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, v0, LJK;->d:LJK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)J
    .locals 3

    .prologue
    .line 134
    iget-wide v0, p0, LJK;->e:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized b()LJK;
    .locals 10

    .prologue
    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    .line 293
    const-class v2, LJK;

    monitor-enter v2

    :try_start_0
    sget-object v1, LJK;->a:LJK;

    iget-object v1, v1, LJK;->d:LJK;

    .line 296
    if-nez v1, :cond_0

    .line 297
    const-class v1, LJK;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :goto_0
    monitor-exit v2

    return-object v0

    .line 301
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, LJK;->b(J)J

    move-result-wide v4

    .line 304
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 307
    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    .line 308
    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 309
    const-class v1, LJK;

    long-to-int v3, v4

    invoke-virtual {v1, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 314
    :cond_1
    :try_start_2
    sget-object v0, LJK;->a:LJK;

    iget-object v3, v1, LJK;->d:LJK;

    iput-object v3, v0, LJK;->d:LJK;

    .line 315
    const/4 v0, 0x0

    iput-object v0, v1, LJK;->d:LJK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 316
    goto :goto_0
.end method

.method static synthetic e()LJK;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, LJK;->b()LJK;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(LKk;)LKk;
    .locals 1

    .prologue
    .line 150
    new-instance v0, LJL;

    invoke-direct {v0, p0, p1}, LJL;-><init>(LJK;LKk;)V

    return-object v0
.end method

.method public final a(LKl;)LKl;
    .locals 1

    .prologue
    .line 206
    new-instance v0, LJM;

    invoke-direct {v0, p0, p1}, LJM;-><init>(LJK;LKl;)V

    return-object v0
.end method

.method final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, LJK;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-object p1

    .line 258
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p1, v0

    .line 260
    goto :goto_0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, LJK;->d()Z

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 62
    iget-boolean v0, p0, LJK;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p0}, LJK;->f()J

    move-result-wide v0

    .line 64
    invoke-virtual {p0}, LJK;->g()Z

    move-result v2

    .line 65
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, LJK;->c:Z

    .line 69
    invoke-static {p0, v0, v1, v2}, LJK;->a(LJK;JZ)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-boolean v1, p0, LJK;->c:Z

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    iput-boolean v0, p0, LJK;->c:Z

    .line 111
    invoke-static {p0}, LJK;->a(LJK;)Z

    move-result v0

    goto :goto_0
.end method
