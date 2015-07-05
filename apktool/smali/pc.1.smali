.class Lpc;
.super Ljava/lang/Object;

# interfaces
.implements LnS;


# instance fields
.field private a:LnR;

.field private b:LnR;

.field private c:Lcom/google/android/gms/common/api/Status;

.field private d:Lpe;

.field private e:Lpd;

.field private f:Z

.field private g:Lob;


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpc;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Refreshing a released ContainerHolder."

    invoke-static {v0}, Lop;->a(Ljava/lang/String;)V
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
    iget-boolean v0, p0, Lpc;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lpc;->a:LnR;

    invoke-virtual {v0, p1}, LnR;->a(Ljava/lang/String;)V
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

    iget-boolean v0, p0, Lpc;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "getContainerId called on a released ContainerHolder."

    invoke-static {v0}, Lop;->a(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpc;->a:LnR;

    invoke-virtual {v0}, LnR;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lpc;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lop;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lpc;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lop;->a(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpc;->e:Lpd;

    invoke-interface {v0}, Lpd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lpc;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpc;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Releasing a released ContainerHolder."

    invoke-static {v0}, Lop;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lpc;->f:Z

    iget-object v0, p0, Lpc;->g:Lob;

    invoke-virtual {v0, p0}, Lob;->a(Lpc;)Z

    iget-object v0, p0, Lpc;->a:LnR;

    invoke-virtual {v0}, LnR;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->a:LnR;

    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->b:LnR;

    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->e:Lpd;

    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->d:Lpe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
