.class final Lxb;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:LwY;

.field private final c:Lxc;


# direct methods
.method private constructor <init>(LwY;Lxc;)V
    .locals 4

    .prologue
    .line 128
    iput-object p1, p0, Lxb;->a:LwY;

    .line 129
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, LwY;->b:LxD;

    invoke-virtual {v3}, LxD;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-object p2, p0, Lxb;->c:Lxc;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(LwY;Lxc;LwZ;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lxb;-><init>(LwY;Lxc;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lxb;->a:LwY;

    iget-object v0, v0, LwY;->b:LxD;

    invoke-virtual {v0}, LxD;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 154
    const/4 v2, 0x0

    .line 156
    :try_start_0
    iget-object v0, p0, Lxb;->a:LwY;

    invoke-static {v0}, LwY;->a(LwY;)LxJ;

    move-result-object v0

    .line 157
    iget-object v3, p0, Lxb;->a:LwY;

    iget-boolean v2, v3, LwY;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 159
    :try_start_1
    iget-object v0, p0, Lxb;->c:Lxc;

    iget-object v2, p0, Lxb;->a:LwY;

    iget-object v2, v2, LwY;->b:LxD;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lxc;->a(LxD;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    iget-object v0, p0, Lxb;->a:LwY;

    invoke-static {v0}, LwY;->c(LwY;)Lxy;

    move-result-object v0

    invoke-virtual {v0}, Lxy;->r()Lxp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxp;->b(Lxb;)V

    .line 174
    :goto_1
    return-void

    .line 162
    :cond_0
    :try_start_2
    iget-object v2, p0, Lxb;->c:Lxc;

    invoke-interface {v2, v0}, Lxc;->a(LxJ;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :goto_2
    if-eqz v1, :cond_1

    .line 167
    :try_start_3
    sget-object v1, LxW;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lxb;->a:LwY;

    invoke-static {v4}, LwY;->b(LwY;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :goto_3
    iget-object v0, p0, Lxb;->a:LwY;

    invoke-static {v0}, LwY;->c(LwY;)Lxy;

    move-result-object v0

    invoke-virtual {v0}, Lxy;->r()Lxp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxp;->b(Lxb;)V

    goto :goto_1

    .line 169
    :cond_1
    :try_start_4
    iget-object v1, p0, Lxb;->c:Lxc;

    iget-object v2, p0, Lxb;->a:LwY;

    iget-object v2, v2, LwY;->c:LyB;

    invoke-virtual {v2}, LyB;->g()LxD;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lxc;->a(LxD;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lxb;->a:LwY;

    invoke-static {v1}, LwY;->c(LwY;)Lxy;

    move-result-object v1

    invoke-virtual {v1}, Lxy;->r()Lxp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxp;->b(Lxb;)V

    throw v0

    .line 164
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
