.class Lpf;
.super Ljava/lang/Object;

# interfaces
.implements LnV;


# instance fields
.field private a:LnU;

.field private b:LnU;

.field private c:Lcom/google/android/gms/common/api/Status;

.field private d:Lph;

.field private e:Lpg;

.field private f:Z

.field private g:Loe;


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpf;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Refreshing a released ContainerHolder."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpf;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lpf;->a:LnU;

    invoke-virtual {v0, p1}, LnU;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lpf;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "getContainerId called on a released ContainerHolder."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpf;->a:LnU;

    invoke-virtual {v0}, LnU;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lpf;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lpf;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpf;->e:Lpg;

    invoke-interface {v0}, Lpg;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lpf;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpf;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Releasing a released ContainerHolder."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lpf;->f:Z

    iget-object v0, p0, Lpf;->g:Loe;

    invoke-virtual {v0, p0}, Loe;->a(Lpf;)Z

    iget-object v0, p0, Lpf;->a:LnU;

    invoke-virtual {v0}, LnU;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpf;->a:LnU;

    const/4 v0, 0x0

    iput-object v0, p0, Lpf;->b:LnU;

    const/4 v0, 0x0

    iput-object v0, p0, Lpf;->e:Lpg;

    const/4 v0, 0x0

    iput-object v0, p0, Lpf;->d:Lph;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
