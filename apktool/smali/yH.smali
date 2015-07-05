.class public LyH;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lxo;

.field protected b:Ljava/io/IOException;

.field protected c:Lyr;

.field d:Lxh;

.field private f:Lxk;

.field private g:J

.field private h:I

.field private i:Lxi;

.field private j:LxD;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "OPTIONS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "POST"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "PUT"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "DELETE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TRACE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PATCH"

    aput-object v3, v1, v2

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, LyH;->e:Ljava/util/Set;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lxo;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 79
    new-instance v0, Lxk;

    invoke-direct {v0}, Lxk;-><init>()V

    iput-object v0, p0, LyH;->f:Lxk;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LyH;->g:J

    .line 103
    iput-object p2, p0, LyH;->a:Lxo;

    .line 104
    return-void
.end method

.method private static a(Lxz;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lxz;->j()Lxz;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lxz;->k()Lxz;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "NONE"

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lxz;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lxz;->k()Lxz;

    move-result-object v0

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lxz;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lxz;->j()Lxz;

    move-result-object v1

    invoke-virtual {v1}, Lxz;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Lxi;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, LyH;->i:Lxi;

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->h()Lxz;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lxz;->g()Lxi;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lxi;->b()Lxk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-static {}, LxS;->a()LxS;

    move-result-object v3

    invoke-virtual {v3}, LxS;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Response-Source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, LyH;->a(Lxz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lxk;->a()Lxi;

    move-result-object v0

    iput-object v0, p0, LyH;->i:Lxi;

    .line 153
    :cond_0
    iget-object v0, p0, LyH;->i:Lxi;

    return-object v0
.end method

.method private a(Ljava/lang/String;LwZ;LyB;Lxz;)Lyr;
    .locals 10

    .prologue
    .line 317
    new-instance v0, Lxv;

    invoke-direct {v0}, Lxv;-><init>()V

    .line 318
    invoke-virtual {p0}, LyH;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxv;->a(Ljava/net/URL;)Lxv;

    move-result-object v0

    const/4 v1, 0x0

    .line 319
    invoke-virtual {v0, p1, v1}, Lxv;->a(Ljava/lang/String;Lxw;)Lxv;

    move-result-object v1

    .line 320
    iget-object v0, p0, LyH;->f:Lxk;

    invoke-virtual {v0}, Lxk;->a()Lxi;

    move-result-object v2

    .line 321
    const/4 v0, 0x0

    invoke-virtual {v2}, Lxi;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 322
    invoke-virtual {v2, v0}, Lxi;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Lxi;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lxv;->b(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 326
    invoke-static {p1}, Lyv;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    iget-wide v4, p0, LyH;->g:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 329
    const-string v3, "Content-Length"

    iget-wide v4, p0, LyH;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 337
    :goto_1
    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 338
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v3, v4}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    :cond_1
    move v3, v0

    .line 342
    const-string v0, "User-Agent"

    invoke-virtual {v2, v0}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 343
    const-string v0, "User-Agent"

    invoke-direct {p0}, LyH;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 346
    :cond_2
    invoke-virtual {v1}, Lxv;->b()Lxt;

    move-result-object v2

    .line 349
    iget-object v1, p0, LyH;->a:Lxo;

    .line 350
    sget-object v0, LxM;->b:LxM;

    invoke-virtual {v0, v1}, LxM;->a(Lxo;)LxN;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LyH;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 351
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0}, Lxo;->x()Lxo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxo;->a(LwF;)Lxo;

    move-result-object v1

    .line 354
    :cond_3
    new-instance v0, Lyr;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lyr;-><init>(Lxo;Lxt;ZZZLwZ;LyC;LyB;Lxz;)V

    return-object v0

    .line 330
    :cond_4
    iget v3, p0, LyH;->chunkLength:I

    if-lez v3, :cond_5

    .line 331
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v1, v3, v4}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    goto :goto_1

    .line 333
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0}, Lxo;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 544
    :cond_0
    const-string v0, ","

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 546
    :try_start_0
    invoke-static {v4}, Lxs;->a(Ljava/lang/String;)Lxs;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 551
    :cond_1
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0, v1}, Lxo;->a(Ljava/util/List;)Lxo;

    .line 552
    return-void
.end method

.method private a(Z)Z
    .locals 2

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 426
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->j()LxD;

    move-result-object v0

    iput-object v0, p0, LyH;->j:LxD;

    .line 427
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->i()LwZ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LyH;->c:Lyr;

    .line 428
    invoke-virtual {v0}, Lyr;->i()LwZ;

    move-result-object v0

    invoke-virtual {v0}, LwZ;->j()Lxh;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LyH;->d:Lxh;

    .line 430
    if-eqz p1, :cond_0

    .line 431
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    const/4 v0, 0x1

    .line 439
    :goto_1
    return v0

    .line 428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    iget-object v1, p0, LyH;->c:Lyr;

    invoke-virtual {v1, v0}, Lyr;->a(Ljava/io/IOException;)Lyr;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_2

    .line 438
    iput-object v1, p0, LyH;->c:Lyr;

    .line 439
    const/4 v0, 0x0

    goto :goto_1

    .line 443
    :cond_2
    iput-object v0, p0, LyH;->b:Ljava/io/IOException;

    .line 444
    throw v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, LyH;->b:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, LyH;->b:Ljava/io/IOException;

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, LyH;->c:Lyr;

    if-eqz v0, :cond_1

    .line 313
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LyH;->connected:Z

    .line 299
    :try_start_0
    iget-boolean v0, p0, LyH;->doOutput:Z

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, LyH;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    const-string v0, "POST"

    iput-object v0, p0, LyH;->method:Ljava/lang/String;

    .line 308
    :cond_2
    iget-object v0, p0, LyH;->method:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, LyH;->a(Ljava/lang/String;LwZ;LyB;Lxz;)Lyr;

    move-result-object v0

    iput-object v0, p0, LyH;->c:Lyr;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    iput-object v0, p0, LyH;->b:Ljava/io/IOException;

    .line 311
    throw v0

    .line 303
    :cond_3
    :try_start_1
    iget-object v0, p0, LyH;->method:Ljava/lang/String;

    invoke-static {v0}, Lyv;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LyH;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Lyr;
    .locals 5

    .prologue
    .line 369
    invoke-direct {p0}, LyH;->b()V

    .line 371
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, LyH;->c:Lyr;

    .line 385
    :goto_0
    return-object v0

    .line 376
    :cond_0
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LyH;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->h()Lxz;

    move-result-object v1

    .line 381
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->o()Lxt;

    move-result-object v2

    .line 383
    if-nez v2, :cond_1

    .line 384
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->k()V

    .line 385
    iget-object v0, p0, LyH;->c:Lyr;

    goto :goto_0

    .line 388
    :cond_1
    iget v0, p0, LyH;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LyH;->h:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    .line 389
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LyH;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_2
    invoke-virtual {v2}, Lxt;->a()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, LyH;->url:Ljava/net/URL;

    .line 394
    invoke-virtual {v2}, Lxt;->e()Lxi;

    move-result-object v0

    invoke-virtual {v0}, Lxi;->b()Lxk;

    move-result-object v0

    iput-object v0, p0, LyH;->f:Lxk;

    .line 399
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->d()LKk;

    move-result-object v0

    .line 400
    invoke-virtual {v2}, Lxt;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LyH;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 401
    const/4 v0, 0x0

    .line 404
    :cond_3
    if-eqz v0, :cond_4

    instance-of v3, v0, LyB;

    if-nez v3, :cond_4

    .line 405
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    iget v2, p0, LyH;->responseCode:I

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 408
    :cond_4
    iget-object v3, p0, LyH;->c:Lyr;

    invoke-virtual {v2}, Lxt;->a()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Lyr;->b(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 409
    iget-object v3, p0, LyH;->c:Lyr;

    invoke-virtual {v3}, Lyr;->k()V

    .line 412
    :cond_5
    iget-object v3, p0, LyH;->c:Lyr;

    invoke-virtual {v3}, Lyr;->m()LwZ;

    move-result-object v3

    .line 413
    invoke-virtual {v2}, Lxt;->d()Ljava/lang/String;

    move-result-object v2

    check-cast v0, LyB;

    invoke-direct {p0, v2, v3, v0, v1}, LyH;->a(Ljava/lang/String;LwZ;LyB;Lxz;)Lyr;

    move-result-object v0

    iput-object v0, p0, LyH;->c:Lyr;

    goto/16 :goto_1
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 509
    iget-boolean v0, p0, LyH;->connected:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    if-nez p1, :cond_1

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    if-nez p2, :cond_2

    .line 521
    invoke-static {}, LxS;->a()LxS;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LxS;->a(Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 526
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, LyH;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 529
    :cond_4
    iget-object v0, p0, LyH;->f:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

    goto :goto_0
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, LyH;->b()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LyH;->a(Z)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LyH;->c:Lyr;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->l()V

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0}, Lxo;->a()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    :try_start_0
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lyr;->h()Lxz;

    move-result-object v2

    invoke-static {v2}, Lyr;->a(Lxz;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v1}, Lyr;->h()Lxz;

    move-result-object v2

    invoke-virtual {v2}, Lxz;->c()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 136
    invoke-virtual {v1}, Lyr;->h()Lxz;

    move-result-object v1

    invoke-virtual {v1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->d()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, LyH;->a()Lxi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxi;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    :try_start_0
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->h()Lxz;

    move-result-object v0

    invoke-static {v0}, LyE;->a(Lxz;)LyE;

    move-result-object v0

    invoke-virtual {v0}, LyE;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-direct {p0}, LyH;->a()Lxi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    :try_start_0
    invoke-direct {p0}, LyH;->a()Lxi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxi;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, LyH;->a()Lxi;

    move-result-object v0

    .line 207
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->h()Lxz;

    move-result-object v1

    invoke-static {v1}, LyE;->a(Lxz;)LyE;

    move-result-object v1

    invoke-virtual {v1}, LyE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lyx;->a(Lxi;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 223
    iget-boolean v0, p0, LyH;->doInput:Z

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, LyH;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 234
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, LyH;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    invoke-virtual {v0}, Lyr;->h()Lxz;

    move-result-object v0

    invoke-virtual {v0}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, LyH;->connect()V

    .line 243
    iget-object v0, p0, LyH;->c:Lyr;

    invoke-virtual {v0}, Lyr;->e()LJS;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method does not support a request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyH;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iget-object v1, p0, LyH;->c:Lyr;

    invoke-virtual {v1}, Lyr;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    invoke-interface {v0}, LJS;->e()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p0}, LyH;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, LyH;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, LxY;->a(Ljava/net/URL;)I

    move-result v0

    .line 256
    invoke-virtual {p0}, LyH;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0}, Lxo;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 258
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 261
    :cond_0
    new-instance v2, Ljava/net/SocketPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect, resolve"

    invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0}, Lxo;->b()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, LyH;->connected:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, LyH;->f:Lxk;

    invoke-virtual {v0}, Lxk;->a()Lxi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyx;->a(Lxi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LyH;->f:Lxk;

    invoke-virtual {v0, p1}, Lxk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->h()Lxz;

    move-result-object v0

    invoke-virtual {v0}, Lxz;->c()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, LyH;->d()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->h()Lxz;

    move-result-object v0

    invoke-virtual {v0}, Lxz;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, LyH;->a:Lxo;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lxo;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 271
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2

    .prologue
    .line 562
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, LyH;->setFixedLengthStreamingMode(J)V

    .line 563
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3

    .prologue
    .line 566
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget v0, p0, LyH;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2
    iput-wide p1, p0, LyH;->g:J

    .line 570
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 571
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 7

    .prologue
    .line 500
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 501
    iget-wide v0, p0, LyH;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, LyH;->f:Lxk;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, LyH;->ifModifiedSince:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lyp;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxk;->b(Ljava/lang/String;Ljava/lang/String;)Lxk;

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, LyH;->f:Lxk;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lxk;->b(Ljava/lang/String;)Lxk;

    goto :goto_0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, LyH;->a:Lxo;

    invoke-virtual {v0, p1}, Lxo;->a(Z)V

    .line 276
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, LyH;->a:Lxo;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lxo;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 284
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 555
    sget-object v0, LyH;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LyH;->e:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iput-object p1, p0, LyH;->method:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 475
    iget-boolean v0, p0, LyH;->connected:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    if-nez p1, :cond_1

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    if-nez p2, :cond_2

    .line 487
    invoke-static {}, LxS;->a()LxS;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LxS;->a(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, LyH;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 495
    :cond_4
    iget-object v0, p0, LyH;->f:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->b(Ljava/lang/String;Ljava/lang/String;)Lxk;

    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, LyH;->j:LxD;

    if-eqz v0, :cond_0

    iget-object v0, p0, LyH;->j:LxD;

    .line 461
    invoke-virtual {v0}, LxD;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 463
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 461
    :cond_0
    iget-object v0, p0, LyH;->a:Lxo;

    .line 462
    invoke-virtual {v0}, Lxo;->d()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
