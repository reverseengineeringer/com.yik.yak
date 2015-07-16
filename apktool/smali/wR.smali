.class LwR;
.super LKE;
.source "SourceFile"


# instance fields
.field final synthetic a:LwO;

.field final synthetic b:LxS;

.field final synthetic c:LwQ;


# direct methods
.method constructor <init>(LwQ;LKS;LwO;LxS;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, LwR;->c:LwQ;

    iput-object p3, p0, LwR;->a:LwO;

    iput-object p4, p0, LwR;->b:LxS;

    invoke-direct {p0, p2}, LKE;-><init>(LKS;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, LwR;->c:LwQ;

    iget-object v1, v0, LwQ;->a:LwO;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, LwR;->c:LwQ;

    invoke-static {v0}, LwQ;->a(LwQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    monitor-exit v1

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, LwR;->c:LwQ;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LwQ;->a(LwQ;Z)Z

    .line 393
    iget-object v0, p0, LwR;->c:LwQ;

    iget-object v0, v0, LwQ;->a:LwO;

    invoke-static {v0}, LwO;->b(LwO;)I

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-super {p0}, LKE;->close()V

    .line 396
    iget-object v0, p0, LwR;->b:LxS;

    invoke-virtual {v0}, LxS;->a()V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
