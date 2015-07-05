.class LwI;
.super LJW;
.source "SourceFile"


# instance fields
.field final synthetic a:LwF;

.field final synthetic b:LxI;

.field final synthetic c:LwH;


# direct methods
.method constructor <init>(LwH;LKk;LwF;LxI;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, LwI;->c:LwH;

    iput-object p3, p0, LwI;->a:LwF;

    iput-object p4, p0, LwI;->b:LxI;

    invoke-direct {p0, p2}, LJW;-><init>(LKk;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, LwI;->c:LwH;

    iget-object v1, v0, LwH;->a:LwF;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, LwI;->c:LwH;

    invoke-static {v0}, LwH;->a(LwH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    monitor-exit v1

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, LwI;->c:LwH;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LwH;->a(LwH;Z)Z

    .line 393
    iget-object v0, p0, LwI;->c:LwH;

    iget-object v0, v0, LwH;->a:LwF;

    invoke-static {v0}, LwF;->b(LwF;)I

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-super {p0}, LJW;->close()V

    .line 396
    iget-object v0, p0, LwI;->b:LxI;

    invoke-virtual {v0}, LxI;->a()V

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
