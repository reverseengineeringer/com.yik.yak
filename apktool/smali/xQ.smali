.class LxQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LxP;


# direct methods
.method constructor <init>(LxP;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, LxQ;->a:LxP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, LxQ;->a:LxP;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, LxQ;->a:LxP;

    invoke-static {v0}, LxP;->a(LxP;)LKA;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, LxQ;->a:LxP;

    invoke-static {v0}, LxP;->b(LxP;)V

    .line 170
    iget-object v0, p0, LxQ;->a:LxP;

    invoke-static {v0}, LxP;->c(LxP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, LxQ;->a:LxP;

    invoke-static {v0}, LxP;->d(LxP;)V

    .line 172
    iget-object v0, p0, LxQ;->a:LxP;

    const/4 v2, 0x0

    invoke-static {v0, v2}, LxP;->a(LxP;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
