.class public LwP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field b:Lxt;

.field c:Lyr;

.field private final d:Lxo;

.field private e:Z


# direct methods
.method protected constructor <init>(Lxo;Lxt;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lxo;->w()Lxo;

    move-result-object v0

    iput-object v0, p0, LwP;->d:Lxo;

    .line 49
    iput-object p2, p0, LwP;->b:Lxt;

    .line 50
    return-void
.end method

.method static synthetic a(LwP;)Lxz;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, LwP;->c()Lxz;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    iget-boolean v0, p0, LwP;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    .line 184
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, LwP;->b:Lxt;

    invoke-virtual {v2}, Lxt;->a()Ljava/net/URL;

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

.method static synthetic b(LwP;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, LwP;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LwP;)Lxo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LwP;->d:Lxo;

    return-object v0
.end method

.method private c()Lxz;
    .locals 3

    .prologue
    .line 192
    new-instance v0, LwR;

    const/4 v1, 0x0

    iget-object v2, p0, LwP;->b:Lxt;

    invoke-direct {v0, p0, v1, v2}, LwR;-><init>(LwP;ILxt;)V

    iget-object v1, p0, LwP;->b:Lxt;

    invoke-virtual {v0, v1}, LwR;->a(Lxt;)Lxz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lxz;
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, LwP;->e:Z

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
    iput-boolean v0, p0, LwP;->e:Z

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v0, p0, LwP;->d:Lxo;

    invoke-virtual {v0}, Lxo;->r()Lxg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxg;->a(LwP;)V

    .line 79
    invoke-direct {p0}, LwP;->c()Lxz;

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

    iget-object v1, p0, LwP;->d:Lxo;

    invoke-virtual {v1}, Lxo;->r()Lxg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxg;->b(LwP;)V

    throw v0

    :cond_1
    iget-object v1, p0, LwP;->d:Lxo;

    invoke-virtual {v1}, Lxo;->r()Lxg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxg;->b(LwP;)V

    return-object v0
.end method

.method a(Lxt;Z)Lxz;
    .locals 11

    .prologue
    .line 230
    invoke-virtual {p1}, Lxt;->f()Lxw;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    invoke-virtual {p1}, Lxt;->g()Lxv;

    move-result-object v1

    .line 234
    invoke-virtual {v0}, Lxw;->a()Lxn;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_0

    .line 236
    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lxn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 239
    :cond_0
    invoke-virtual {v0}, Lxw;->b()J

    move-result-wide v2

    .line 240
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 242
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lxv;->b(Ljava/lang/String;)Lxv;

    .line 248
    :goto_0
    invoke-virtual {v1}, Lxv;->b()Lxt;

    move-result-object v2

    .line 252
    :goto_1
    new-instance v0, Lyr;

    iget-object v1, p0, LwP;->d:Lxo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lyr;-><init>(Lxo;Lxt;ZZZLwZ;LyC;LyB;Lxz;)V

    iput-object v0, p0, LwP;->c:Lyr;

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_2
    iget-boolean v1, p0, LwP;->a:Z

    if-eqz v1, :cond_3

    .line 257
    iget-object v0, p0, LwP;->c:Lyr;

    invoke-virtual {v0}, Lyr;->k()V

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

    invoke-virtual {v1, v0, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 245
    const-string v0, "Content-Length"

    invoke-virtual {v1, v0}, Lxv;->b(Ljava/lang/String;)Lxv;

    goto :goto_0

    .line 262
    :cond_3
    :try_start_0
    iget-object v1, p0, LwP;->c:Lyr;

    invoke-virtual {v1}, Lyr;->a()V

    .line 263
    iget-object v1, p0, LwP;->c:Lyr;

    invoke-virtual {v1}, Lyr;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-object v1, p0, LwP;->c:Lyr;

    invoke-virtual {v1}, Lyr;->h()Lxz;

    move-result-object v9

    .line 276
    iget-object v1, p0, LwP;->c:Lyr;

    invoke-virtual {v1}, Lyr;->o()Lxt;

    move-result-object v2

    .line 278
    if-nez v2, :cond_5

    .line 279
    if-nez p2, :cond_1

    .line 280
    iget-object v0, p0, LwP;->c:Lyr;

    invoke-virtual {v0}, Lyr;->k()V

    goto :goto_3

    .line 264
    :catch_0
    move-exception v1

    .line 265
    iget-object v2, p0, LwP;->c:Lyr;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lyr;->a(Ljava/io/IOException;LKk;)Lyr;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_4

    .line 267
    iput-object v2, p0, LwP;->c:Lyr;

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
    iget-object v0, p0, LwP;->c:Lyr;

    invoke-virtual {v2}, Lxt;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyr;->b(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 290
    iget-object v0, p0, LwP;->c:Lyr;

    invoke-virtual {v0}, Lyr;->k()V

    .line 293
    :cond_7
    iget-object v0, p0, LwP;->c:Lyr;

    invoke-virtual {v0}, Lyr;->m()LwZ;

    move-result-object v6

    .line 295
    new-instance v0, Lyr;

    iget-object v1, p0, LwP;->d:Lxo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lyr;-><init>(Lxo;Lxt;ZZZLwZ;LyC;LyB;Lxz;)V

    iput-object v0, p0, LwP;->c:Lyr;

    move v0, v10

    .line 297
    goto/16 :goto_2

    :cond_8
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public a(LwT;)V
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, LwP;->e:Z

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
    iput-boolean v0, p0, LwP;->e:Z

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, LwP;->d:Lxo;

    invoke-virtual {v0}, Lxo;->r()Lxg;

    move-result-object v0

    new-instance v1, LwS;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LwS;-><init>(LwP;LwT;LwQ;)V

    invoke-virtual {v0, v1}, Lxg;->a(LwS;)V

    .line 110
    return-void
.end method
