.class final LwS;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:LwP;

.field private final c:LwT;


# direct methods
.method private constructor <init>(LwP;LwT;)V
    .locals 4

    .prologue
    .line 128
    iput-object p1, p0, LwS;->a:LwP;

    .line 129
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, LwP;->b:Lxt;

    invoke-virtual {v3}, Lxt;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-object p2, p0, LwS;->c:LwT;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(LwP;LwT;LwQ;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, LwS;-><init>(LwP;LwT;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, LwS;->a:LwP;

    iget-object v0, v0, LwP;->b:Lxt;

    invoke-virtual {v0}, Lxt;->a()Ljava/net/URL;

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
    iget-object v0, p0, LwS;->a:LwP;

    invoke-static {v0}, LwP;->a(LwP;)Lxz;

    move-result-object v0

    .line 157
    iget-object v3, p0, LwS;->a:LwP;

    iget-boolean v2, v3, LwP;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 159
    :try_start_1
    iget-object v0, p0, LwS;->c:LwT;

    iget-object v2, p0, LwS;->a:LwP;

    iget-object v2, v2, LwP;->b:Lxt;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, LwT;->a(Lxt;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    iget-object v0, p0, LwS;->a:LwP;

    invoke-static {v0}, LwP;->c(LwP;)Lxo;

    move-result-object v0

    invoke-virtual {v0}, Lxo;->r()Lxg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxg;->b(LwS;)V

    .line 174
    :goto_1
    return-void

    .line 162
    :cond_0
    :try_start_2
    iget-object v2, p0, LwS;->c:LwT;

    invoke-interface {v2, v0}, LwT;->a(Lxz;)V
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
    sget-object v1, LxM;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LwS;->a:LwP;

    invoke-static {v4}, LwP;->b(LwP;)Ljava/lang/String;

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
    iget-object v0, p0, LwS;->a:LwP;

    invoke-static {v0}, LwP;->c(LwP;)Lxo;

    move-result-object v0

    invoke-virtual {v0}, Lxo;->r()Lxg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxg;->b(LwS;)V

    goto :goto_1

    .line 169
    :cond_1
    :try_start_4
    iget-object v1, p0, LwS;->c:LwT;

    iget-object v2, p0, LwS;->a:LwP;

    iget-object v2, v2, LwP;->c:Lyr;

    invoke-virtual {v2}, Lyr;->g()Lxt;

    move-result-object v2

    invoke-interface {v1, v2, v0}, LwT;->a(Lxt;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, LwS;->a:LwP;

    invoke-static {v1}, LwP;->c(LwP;)Lxo;

    move-result-object v1

    invoke-virtual {v1}, Lxo;->r()Lxg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxg;->b(LwS;)V

    throw v0

    .line 164
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
