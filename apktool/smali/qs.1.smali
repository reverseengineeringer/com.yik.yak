.class Lqs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lqy;

.field private final b:Lqa;

.field private c:LpT;

.field private volatile d:Lqy;


# direct methods
.method private b()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lqs;->d:Lqy;

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lqs;->d:Lqy;

    if-eqz v0, :cond_1

    .line 105
    monitor-exit p0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lqs;->c:LpT;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lqs;->a:Lqy;

    invoke-interface {v0}, Lqy;->c()LqC;

    move-result-object v0

    iget-object v1, p0, Lqs;->c:LpT;

    iget-object v2, p0, Lqs;->b:Lqa;

    invoke-interface {v0, v1, v2}, LqC;->c(LpT;Lqa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy;

    iput-object v0, p0, Lqs;->d:Lqy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a()Lqy;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lqs;->b()V

    .line 40
    iget-object v0, p0, Lqs;->d:Lqy;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lqs;->b()V

    .line 90
    iget-object v0, p0, Lqs;->d:Lqy;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lqs;->b()V

    .line 84
    iget-object v0, p0, Lqs;->d:Lqy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lqs;->b()V

    .line 96
    iget-object v0, p0, Lqs;->d:Lqy;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
