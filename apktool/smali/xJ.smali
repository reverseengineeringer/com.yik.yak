.class LxJ;
.super LJW;
.source "SourceFile"


# instance fields
.field final synthetic a:LxI;


# direct methods
.method public constructor <init>(LxI;LKk;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, LxJ;->a:LxI;

    .line 930
    invoke-direct {p0, p2}, LJW;-><init>(LKk;)V

    .line 931
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 945
    :try_start_0
    invoke-super {p0}, LJW;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    iget-object v0, p0, LxJ;->a:LxI;

    iget-object v1, v0, LxI;->a:LxF;

    monitor-enter v1

    .line 948
    :try_start_1
    iget-object v0, p0, LxJ;->a:LxI;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LxI;->a(LxI;Z)Z

    .line 949
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a_(LJP;J)V
    .locals 4

    .prologue
    .line 935
    :try_start_0
    invoke-super {p0, p1, p2, p3}, LJW;->a_(LJP;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    iget-object v0, p0, LxJ;->a:LxI;

    iget-object v1, v0, LxI;->a:LxF;

    monitor-enter v1

    .line 938
    :try_start_1
    iget-object v0, p0, LxJ;->a:LxI;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LxI;->a(LxI;Z)Z

    .line 939
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 955
    :try_start_0
    invoke-super {p0}, LJW;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    iget-object v0, p0, LxJ;->a:LxI;

    iget-object v1, v0, LxI;->a:LxF;

    monitor-enter v1

    .line 958
    :try_start_1
    iget-object v0, p0, LxJ;->a:LxI;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LxI;->a(LxI;Z)Z

    .line 959
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
