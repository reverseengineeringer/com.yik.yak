.class public LwY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field b:LxD;

.field c:LyB;

.field private final d:Lxy;

.field private e:Z


# direct methods
.method protected constructor <init>(Lxy;LxD;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lxy;->w()Lxy;

    move-result-object v0

    iput-object v0, p0, LwY;->d:Lxy;

    .line 49
    iput-object p2, p0, LwY;->b:LxD;

    .line 50
    return-void
.end method

.method static synthetic a(LwY;)LxJ;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, LwY;->c()LxJ;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    iget-boolean v0, p0, LwY;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    .line 184
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, LwY;->b:LxD;

    invoke-virtual {v2}, LxD;->a()Ljava/net/URL;

    move-result-object v2

    const-string v3, "/..."

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_1
    return-object v0

    .line 182
    :cond_0
    const-string v0, "call"

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(LwY;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, LwY;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()LxJ;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lxa;

    const/4 v1, 0x0

    iget-object v2, p0, LwY;->b:LxD;

    invoke-direct {v0, p0, v1, v2}, Lxa;-><init>(LwY;ILxD;)V

    iget-object v1, p0, LwY;->b:LxD;

    invoke-virtual {v0, v1}, Lxa;->a(LxD;)LxJ;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LwY;)Lxy;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LwY;->d:Lxy;

    return-object v0
.end method


# virtual methods
.method public a()LxJ;
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, LwY;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, LwY;->e:Z

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v0, p0, LwY;->d:Lxy;

    invoke-virtual {v0}, Lxy;->r()Lxp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxp;->a(LwY;)V

    .line 79
    invoke-direct {p0}, LwY;->c()LxJ;

    move-result-object v0

    .line 80
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :catchall_1
    move-exception v0

    iget-object v1, p0, LwY;->d:Lxy;

    invoke-virtual {v1}, Lxy;->r()Lxp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxp;->b(LwY;)V

    throw v0

    :cond_1
    iget-object v1, p0, LwY;->d:Lxy;

    invoke-virtual {v1}, Lxy;->r()Lxp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxp;->b(LwY;)V

    return-object v0
.end method

.method a(LxD;Z)LxJ;
    .locals 11

    .prologue
    .line 230
    invoke-virtual {p1}, LxD;->f()LxG;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    invoke-virtual {p1}, LxD;->g()LxF;

    move-result-object v1

    .line 234
    invoke-virtual {v0}, LxG;->a()Lxx;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_0

    .line 236
    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lxx;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 239
    :cond_0
    invoke-virtual {v0}, LxG;->b()J

    move-result-wide v2

    .line 240
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 242
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, LxF;->b(Ljava/lang/String;)LxF;

    .line 248
    :goto_0
    invoke-virtual {v1}, LxF;->b()LxD;

    move-result-object v2

    .line 252
    :goto_1
    new-instance v0, LyB;

    iget-object v1, p0, LwY;->d:Lxy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, LyB;-><init>(Lxy;LxD;ZZZLxi;LyM;LyL;LxJ;)V

    iput-object v0, p0, LwY;->c:LyB;

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_2
    iget-boolean v1, p0, LwY;->a:Z

    if-eqz v1, :cond_3

    .line 257
    iget-object v0, p0, LwY;->c:LyB;

    invoke-virtual {v0}, LyB;->k()V

    .line 258
    const/4 v9, 0x0

    .line 282
    :cond_1
    :goto_3
    return-object v9

    .line 244
    :cond_2
    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v1, v0, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 245
    const-string v0, "Content-Length"

    invoke-virtual {v1, v0}, LxF;->b(Ljava/lang/String;)LxF;

    goto :goto_0

    .line 262
    :cond_3
    :try_start_0
    iget-object v1, p0, LwY;->c:LyB;

    invoke-virtual {v1}, LyB;->a()V

    .line 263
    iget-object v1, p0, LwY;->c:LyB;

    invoke-virtual {v1}, LyB;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-object v1, p0, LwY;->c:LyB;

    invoke-virtual {v1}, LyB;->h()LxJ;

    move-result-object v9

    .line 276
    iget-object v1, p0, LwY;->c:LyB;

    invoke-virtual {v1}, LyB;->o()LxD;

    move-result-object v2

    .line 278
    if-nez v2, :cond_5

    .line 279
    if-nez p2, :cond_1

    .line 280
    iget-object v0, p0, LwY;->c:LyB;

    invoke-virtual {v0}, LyB;->k()V

    goto :goto_3

    .line 264
    :catch_0
    move-exception v1

    .line 265
    iget-object v2, p0, LwY;->c:LyB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, LyB;->a(Ljava/io/IOException;LKS;)LyB;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_4

    .line 267
    iput-object v2, p0, LwY;->c:LyB;

    goto :goto_2

    .line 272
    :cond_4
    throw v1

    .line 285
    :cond_5
    add-int/lit8 v10, v0, 0x1

    const/16 v0, 0x14

    if-le v10, v0, :cond_6

    .line 286
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_6
    iget-object v0, p0, LwY;->c:LyB;

    invoke-virtual {v2}, LxD;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, LyB;->b(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 290
    iget-object v0, p0, LwY;->c:LyB;

    invoke-virtual {v0}, LyB;->k()V

    .line 293
    :cond_7
    iget-object v0, p0, LwY;->c:LyB;

    invoke-virtual {v0}, LyB;->m()Lxi;

    move-result-object v6

    .line 295
    new-instance v0, LyB;

    iget-object v1, p0, LwY;->d:Lxy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, LyB;-><init>(Lxy;LxD;ZZZLxi;LyM;LyL;LxJ;)V

    iput-object v0, p0, LwY;->c:LyB;

    move v0, v10

    .line 297
    goto/16 :goto_2

    :cond_8
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public a(Lxc;)V
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, LwY;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, LwY;->e:Z

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, LwY;->d:Lxy;

    invoke-virtual {v0}, Lxy;->r()Lxp;

    move-result-object v0

    new-instance v1, Lxb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lxb;-><init>(LwY;Lxc;LwZ;)V

    invoke-virtual {v0, v1}, Lxp;->a(Lxb;)V

    .line 110
    return-void
.end method
