.class public final LyB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:LxM;


# instance fields
.field final a:Lxy;

.field b:J

.field public final c:Z

.field private e:Lxi;

.field private f:LyM;

.field private g:LxN;

.field private final h:LxJ;

.field private i:LyP;

.field private j:Z

.field private final k:LxD;

.field private l:LxD;

.field private m:LxJ;

.field private n:LxJ;

.field private o:LKS;

.field private p:LKA;

.field private final q:Z

.field private final r:Z

.field private s:Lym;

.field private t:Lyn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, LyC;

    invoke-direct {v0}, LyC;-><init>()V

    sput-object v0, LyB;->d:LxM;

    return-void
.end method

.method public constructor <init>(Lxy;LxD;ZZZLxi;LyM;LyL;LxJ;)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LyB;->b:J

    .line 185
    iput-object p1, p0, LyB;->a:Lxy;

    .line 186
    iput-object p2, p0, LyB;->k:LxD;

    .line 187
    iput-boolean p3, p0, LyB;->c:Z

    .line 188
    iput-boolean p4, p0, LyB;->q:Z

    .line 189
    iput-boolean p5, p0, LyB;->r:Z

    .line 190
    iput-object p6, p0, LyB;->e:Lxi;

    .line 191
    iput-object p7, p0, LyB;->f:LyM;

    .line 192
    iput-object p8, p0, LyB;->o:LKS;

    .line 193
    iput-object p9, p0, LyB;->h:LxJ;

    .line 195
    if-eqz p6, :cond_0

    .line 196
    sget-object v0, LxW;->b:LxW;

    invoke-virtual {v0, p6, p0}, LxW;->b(Lxi;LyB;)V

    .line 197
    invoke-virtual {p6}, Lxi;->c()LxN;

    move-result-object v0

    iput-object v0, p0, LyB;->g:LxN;

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LyB;->g:LxN;

    goto :goto_0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    invoke-static {p0}, Lyi;->a(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyi;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lym;LxJ;)LxJ;
    .locals 4

    .prologue
    .line 816
    if-nez p1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-object p2

    .line 817
    :cond_1
    invoke-interface {p1}, Lym;->b()LKS;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p2}, LxJ;->h()LxM;

    move-result-object v1

    invoke-virtual {v1}, LxM;->c()LKB;

    move-result-object v1

    .line 821
    invoke-static {v0}, LKI;->a(LKS;)LKA;

    move-result-object v0

    .line 823
    new-instance v2, LyD;

    invoke-direct {v2, p0, v1, p1, v0}, LyD;-><init>(LyB;LKB;Lym;LKA;)V

    .line 865
    invoke-virtual {p2}, LxJ;->i()LxL;

    move-result-object v0

    new-instance v1, LyJ;

    .line 866
    invoke-virtual {p2}, LxJ;->g()Lxs;

    move-result-object v3

    invoke-static {v2}, LKI;->a(LKT;)LKB;

    move-result-object v2

    invoke-direct {v1, v3, v2}, LyJ;-><init>(Lxs;LKB;)V

    invoke-virtual {v0, v1}, LxL;->a(LxM;)LxL;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic a(LyB;)Lxi;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, LyB;->e:Lxi;

    return-object v0
.end method

.method private static a(Lxs;Lxs;)Lxs;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 899
    new-instance v2, Lxu;

    invoke-direct {v2}, Lxu;-><init>()V

    .line 901
    invoke-virtual {p0}, Lxs;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 902
    invoke-virtual {p0, v1}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 903
    invoke-virtual {p0, v1}, Lxs;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 904
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 901
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    :cond_1
    invoke-static {v4}, LyH;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lxs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 908
    :cond_2
    invoke-virtual {v2, v4, v5}, Lxu;->a(Ljava/lang/String;Ljava/lang/String;)Lxu;

    goto :goto_1

    .line 912
    :cond_3
    invoke-virtual {p1}, Lxs;->a()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    .line 913
    invoke-virtual {p1, v0}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 912
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 917
    :cond_5
    invoke-static {v3}, LyH;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 918
    invoke-virtual {p1, v0}, Lxs;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lxu;->a(Ljava/lang/String;Ljava/lang/String;)Lxu;

    goto :goto_3

    .line 922
    :cond_6
    invoke-virtual {v2}, Lxu;->a()Lxs;

    move-result-object v0

    return-object v0
.end method

.method private a(LxD;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, LyB;->e:Lxi;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, LyB;->f:LyM;

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, LyB;->a:Lxy;

    invoke-static {p1, v0}, LyM;->a(LxD;Lxy;)LyM;

    move-result-object v0

    iput-object v0, p0, LyB;->f:LyM;

    .line 312
    :cond_1
    iget-object v0, p0, LyB;->f:LyM;

    invoke-virtual {v0, p0}, LyM;->a(LyB;)Lxi;

    move-result-object v0

    iput-object v0, p0, LyB;->e:Lxi;

    .line 313
    iget-object v0, p0, LyB;->e:Lxi;

    invoke-virtual {v0}, Lxi;->c()LxN;

    move-result-object v0

    iput-object v0, p0, LyB;->g:LxN;

    .line 314
    return-void
.end method

.method public static a(LxJ;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0}, LxJ;->a()LxD;

    move-result-object v2

    invoke-virtual {v2}, LxD;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    invoke-virtual {p0}, LxJ;->c()I

    move-result v2

    .line 557
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 560
    goto :goto_0

    .line 566
    :cond_3
    invoke-static {p0}, LyH;->a(LxJ;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 567
    invoke-virtual {p0, v3}, LxJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 568
    goto :goto_0
.end method

.method private static a(LxJ;LxJ;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 875
    invoke-virtual {p1}, LxJ;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 891
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    invoke-virtual {p0}, LxJ;->g()Lxs;

    move-result-object v1

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lxs;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 883
    if-eqz v1, :cond_2

    .line 884
    invoke-virtual {p1}, LxJ;->g()Lxs;

    move-result-object v2

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lxs;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 885
    if-eqz v2, :cond_2

    .line 886
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 891
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(LxD;)LxD;
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p1}, LxD;->g()LxF;

    move-result-object v0

    .line 583
    const-string v1, "Host"

    invoke-virtual {p1, v1}, LxD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 584
    const-string v1, "Host"

    invoke-virtual {p1}, LxD;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, LyB;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 587
    :cond_0
    iget-object v1, p0, LyB;->e:Lxi;

    if-eqz v1, :cond_1

    iget-object v1, p0, LyB;->e:Lxi;

    invoke-virtual {v1}, Lxi;->l()LxC;

    move-result-object v1

    sget-object v2, LxC;->a:LxC;

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "Connection"

    .line 588
    invoke-virtual {p1, v1}, LxD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 589
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 592
    :cond_2
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, LxD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, LyB;->j:Z

    .line 594
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 597
    :cond_3
    iget-object v1, p0, LyB;->a:Lxy;

    invoke-virtual {v1}, Lxy;->f()Ljava/net/CookieHandler;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_4

    .line 602
    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v2

    invoke-virtual {v2}, LxD;->e()Lxs;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, LyH;->a(Lxs;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 604
    invoke-virtual {p1}, LxD;->b()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 607
    invoke-static {v0, v1}, LyH;->a(LxF;Ljava/util/Map;)V

    .line 610
    :cond_4
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, LxD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 611
    const-string v1, "User-Agent"

    invoke-static {}, Lyk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    .line 614
    :cond_5
    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    return-object v0
.end method

.method private static b(LxJ;)LxJ;
    .locals 2

    .prologue
    .line 299
    if-eqz p0, :cond_0

    invoke-virtual {p0}, LxJ;->h()LxM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, LxJ;->i()LxL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LxL;->a(LxM;)LxL;

    move-result-object v0

    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(LyB;)LyP;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, LyB;->i:LyP;

    return-object v0
.end method

.method private b(Ljava/io/IOException;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, LyB;->a:Lxy;

    invoke-virtual {v1}, Lxy;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_2

    .line 402
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-nez v1, :cond_0

    .line 407
    :cond_2
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-nez v1, :cond_0

    .line 412
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_0

    .line 416
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(LxJ;)LxJ;
    .locals 4

    .prologue
    .line 527
    iget-boolean v0, p0, LyB;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, LyB;->n:LxJ;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, LxJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-object p1

    .line 531
    :cond_1
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, LKG;

    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v1

    invoke-virtual {v1}, LxM;->c()LKB;

    move-result-object v1

    invoke-direct {v0, v1}, LKG;-><init>(LKT;)V

    .line 536
    invoke-virtual {p1}, LxJ;->g()Lxs;

    move-result-object v1

    invoke-virtual {v1}, Lxs;->b()Lxu;

    move-result-object v1

    const-string v2, "Content-Encoding"

    .line 537
    invoke-virtual {v1, v2}, Lxu;->b(Ljava/lang/String;)Lxu;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 538
    invoke-virtual {v1, v2}, Lxu;->b(Ljava/lang/String;)Lxu;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Lxu;->a()Lxs;

    move-result-object v1

    .line 540
    invoke-virtual {p1}, LxJ;->i()LxL;

    move-result-object v2

    .line 541
    invoke-virtual {v2, v1}, LxL;->a(Lxs;)LxL;

    move-result-object v2

    new-instance v3, LyJ;

    .line 542
    invoke-static {v0}, LKI;->a(LKT;)LKB;

    move-result-object v0

    invoke-direct {v3, v1, v0}, LyJ;-><init>(Lxs;LKB;)V

    invoke-virtual {v2, v3}, LxL;->a(LxM;)LxL;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic c(LyB;)LxJ;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, LyB;->q()LxJ;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 428
    sget-object v0, LxW;->b:LxW;

    iget-object v1, p0, LyB;->a:Lxy;

    invoke-virtual {v0, v1}, LxW;->a(Lxy;)LxX;

    move-result-object v0

    .line 429
    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, LyB;->n:LxJ;

    iget-object v2, p0, LyB;->l:LxD;

    invoke-static {v1, v2}, Lyn;->a(LxJ;LxD;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    iget-object v1, p0, LyB;->l:LxD;

    invoke-virtual {v1}, LxD;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LyF;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :try_start_0
    iget-object v1, p0, LyB;->l:LxD;

    invoke-interface {v0, v1}, LxX;->b(LxD;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, LyB;->n:LxJ;

    invoke-static {v1}, LyB;->b(LxJ;)LxJ;

    move-result-object v1

    invoke-interface {v0, v1}, LxX;->a(LxJ;)Lym;

    move-result-object v0

    iput-object v0, p0, LyB;->s:Lym;

    goto :goto_0
.end method

.method private q()LxJ;
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, LyB;->i:LyP;

    invoke-interface {v0}, LyP;->a()V

    .line 791
    iget-object v0, p0, LyB;->i:LyP;

    invoke-interface {v0}, LyP;->b()LxL;

    move-result-object v0

    iget-object v1, p0, LyB;->l:LxD;

    .line 792
    invoke-virtual {v0, v1}, LxL;->a(LxD;)LxL;

    move-result-object v0

    iget-object v1, p0, LyB;->e:Lxi;

    .line 793
    invoke-virtual {v1}, Lxi;->j()Lxr;

    move-result-object v1

    invoke-virtual {v0, v1}, LxL;->a(Lxr;)LxL;

    move-result-object v0

    sget-object v1, LyH;->b:Ljava/lang/String;

    iget-wide v2, p0, LyB;->b:J

    .line 794
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LxL;->a(Ljava/lang/String;Ljava/lang/String;)LxL;

    move-result-object v0

    sget-object v1, LyH;->c:Ljava/lang/String;

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LxL;->a(Ljava/lang/String;Ljava/lang/String;)LxL;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object v0

    .line 798
    iget-boolean v1, p0, LyB;->r:Z

    if-nez v1, :cond_0

    .line 799
    invoke-virtual {v0}, LxJ;->i()LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->i:LyP;

    .line 800
    invoke-interface {v2, v0}, LyP;->a(LxJ;)LxM;

    move-result-object v0

    invoke-virtual {v1, v0}, LxL;->a(LxM;)LxL;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object v0

    .line 804
    :cond_0
    sget-object v1, LxW;->b:LxW;

    iget-object v2, p0, LyB;->e:Lxi;

    invoke-virtual {v0}, LxJ;->b()LxC;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LxW;->a(Lxi;LxC;)V

    .line 805
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)LyB;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, LyB;->o:LKS;

    invoke-virtual {p0, p1, v0}, LyB;->a(Ljava/io/IOException;LKS;)LyB;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/IOException;LKS;)LyB;
    .locals 10

    .prologue
    .line 370
    iget-object v0, p0, LyB;->f:LyM;

    if-eqz v0, :cond_0

    iget-object v0, p0, LyB;->e:Lxi;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, LyB;->f:LyM;

    iget-object v1, p0, LyB;->e:Lxi;

    invoke-virtual {v0, v1, p1}, LyM;->a(Lxi;Ljava/io/IOException;)V

    .line 374
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, LyL;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 375
    :goto_0
    iget-object v1, p0, LyB;->f:LyM;

    if-nez v1, :cond_2

    iget-object v1, p0, LyB;->e:Lxi;

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, LyB;->f:LyM;

    if-eqz v1, :cond_3

    iget-object v1, p0, LyB;->f:LyM;

    .line 376
    invoke-virtual {v1}, LyM;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 377
    :cond_3
    invoke-direct {p0, p1}, LyB;->b(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_6

    .line 379
    :cond_4
    const/4 v0, 0x0

    .line 385
    :goto_1
    return-object v0

    .line 374
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_6
    invoke-virtual {p0}, LyB;->m()Lxi;

    move-result-object v6

    .line 385
    new-instance v0, LyB;

    iget-object v1, p0, LyB;->a:Lxy;

    iget-object v2, p0, LyB;->k:LxD;

    iget-boolean v3, p0, LyB;->c:Z

    iget-boolean v4, p0, LyB;->q:Z

    iget-boolean v5, p0, LyB;->r:Z

    iget-object v7, p0, LyB;->f:LyM;

    move-object v8, p2

    check-cast v8, LyL;

    iget-object v9, p0, LyB;->h:LxJ;

    invoke-direct/range {v0 .. v9}, LyB;-><init>(Lxy;LxD;ZZZLxi;LyM;LyL;LxJ;)V

    goto :goto_1
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, LyB;->t:Lyn;

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, LyB;->i:LyP;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 212
    :cond_2
    iget-object v0, p0, LyB;->k:LxD;

    invoke-direct {p0, v0}, LyB;->b(LxD;)LxD;

    move-result-object v2

    .line 214
    sget-object v0, LxW;->b:LxW;

    iget-object v3, p0, LyB;->a:Lxy;

    invoke-virtual {v0, v3}, LxW;->a(Lxy;)LxX;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_6

    .line 216
    invoke-interface {v3, v2}, LxX;->a(LxD;)LxJ;

    move-result-object v0

    .line 219
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 220
    new-instance v6, Lyp;

    invoke-direct {v6, v4, v5, v2, v0}, Lyp;-><init>(JLxD;LxJ;)V

    invoke-virtual {v6}, Lyp;->a()Lyn;

    move-result-object v4

    iput-object v4, p0, LyB;->t:Lyn;

    .line 221
    iget-object v4, p0, LyB;->t:Lyn;

    iget-object v4, v4, Lyn;->a:LxD;

    iput-object v4, p0, LyB;->l:LxD;

    .line 222
    iget-object v4, p0, LyB;->t:Lyn;

    iget-object v4, v4, Lyn;->b:LxJ;

    iput-object v4, p0, LyB;->m:LxJ;

    .line 224
    if-eqz v3, :cond_3

    .line 225
    iget-object v4, p0, LyB;->t:Lyn;

    invoke-interface {v3, v4}, LxX;->a(Lyn;)V

    .line 228
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, LyB;->m:LxJ;

    if-nez v3, :cond_4

    .line 229
    invoke-virtual {v0}, LxJ;->h()LxM;

    move-result-object v0

    invoke-static {v0}, Lyi;->a(Ljava/io/Closeable;)V

    .line 232
    :cond_4
    iget-object v0, p0, LyB;->l:LxD;

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, LyB;->e:Lxi;

    if-nez v0, :cond_5

    .line 235
    iget-object v0, p0, LyB;->l:LxD;

    invoke-direct {p0, v0}, LyB;->a(LxD;)V

    .line 238
    :cond_5
    sget-object v0, LxW;->b:LxW;

    iget-object v1, p0, LyB;->e:Lxi;

    invoke-virtual {v0, v1, p0}, LxW;->a(Lxi;LyB;)LyP;

    move-result-object v0

    iput-object v0, p0, LyB;->i:LyP;

    .line 244
    iget-boolean v0, p0, LyB;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LyB;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LyB;->o:LKS;

    if-nez v0, :cond_0

    .line 245
    invoke-static {v2}, LyH;->a(LxD;)J

    move-result-wide v0

    .line 246
    iget-boolean v2, p0, LyB;->c:Z

    if-eqz v2, :cond_9

    .line 247
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, v1

    .line 216
    goto :goto_1

    .line 252
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    .line 254
    iget-object v2, p0, LyB;->i:LyP;

    iget-object v3, p0, LyB;->l:LxD;

    invoke-interface {v2, v3}, LyP;->a(LxD;)V

    .line 255
    new-instance v2, LyL;

    long-to-int v0, v0

    invoke-direct {v2, v0}, LyL;-><init>(I)V

    iput-object v2, p0, LyB;->o:LKS;

    goto/16 :goto_0

    .line 260
    :cond_8
    new-instance v0, LyL;

    invoke-direct {v0}, LyL;-><init>()V

    iput-object v0, p0, LyB;->o:LKS;

    goto/16 :goto_0

    .line 263
    :cond_9
    iget-object v2, p0, LyB;->i:LyP;

    iget-object v3, p0, LyB;->l:LxD;

    invoke-interface {v2, v3}, LyP;->a(LxD;)V

    .line 264
    iget-object v2, p0, LyB;->i:LyP;

    iget-object v3, p0, LyB;->l:LxD;

    invoke-interface {v2, v3, v0, v1}, LyP;->a(LxD;J)LKS;

    move-result-object v0

    iput-object v0, p0, LyB;->o:LKS;

    goto/16 :goto_0

    .line 270
    :cond_a
    iget-object v0, p0, LyB;->e:Lxi;

    if-eqz v0, :cond_b

    .line 271
    sget-object v0, LxW;->b:LxW;

    iget-object v2, p0, LyB;->a:Lxy;

    invoke-virtual {v2}, Lxy;->m()Lxj;

    move-result-object v2

    iget-object v3, p0, LyB;->e:Lxi;

    invoke-virtual {v0, v2, v3}, LxW;->a(Lxj;Lxi;)V

    .line 272
    iput-object v1, p0, LyB;->e:Lxi;

    .line 275
    :cond_b
    iget-object v0, p0, LyB;->m:LxJ;

    if-eqz v0, :cond_c

    .line 277
    iget-object v0, p0, LyB;->m:LxJ;

    invoke-virtual {v0}, LxJ;->i()LxL;

    move-result-object v0

    iget-object v1, p0, LyB;->k:LxD;

    .line 278
    invoke-virtual {v0, v1}, LxL;->a(LxD;)LxL;

    move-result-object v0

    iget-object v1, p0, LyB;->h:LxJ;

    .line 279
    invoke-static {v1}, LyB;->b(LxJ;)LxJ;

    move-result-object v1

    invoke-virtual {v0, v1}, LxL;->c(LxJ;)LxL;

    move-result-object v0

    iget-object v1, p0, LyB;->m:LxJ;

    .line 280
    invoke-static {v1}, LyB;->b(LxJ;)LxJ;

    move-result-object v1

    invoke-virtual {v0, v1}, LxL;->b(LxJ;)LxL;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object v0

    iput-object v0, p0, LyB;->n:LxJ;

    .line 294
    :goto_2
    iget-object v0, p0, LyB;->n:LxJ;

    invoke-direct {p0, v0}, LyB;->c(LxJ;)LxJ;

    move-result-object v0

    iput-object v0, p0, LyB;->n:LxJ;

    goto/16 :goto_0

    .line 284
    :cond_c
    new-instance v0, LxL;

    invoke-direct {v0}, LxL;-><init>()V

    iget-object v1, p0, LyB;->k:LxD;

    .line 285
    invoke-virtual {v0, v1}, LxL;->a(LxD;)LxL;

    move-result-object v0

    iget-object v1, p0, LyB;->h:LxJ;

    .line 286
    invoke-static {v1}, LyB;->b(LxJ;)LxJ;

    move-result-object v1

    invoke-virtual {v0, v1}, LxL;->c(LxJ;)LxL;

    move-result-object v0

    sget-object v1, LxC;->b:LxC;

    .line 287
    invoke-virtual {v0, v1}, LxL;->a(LxC;)LxL;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 288
    invoke-virtual {v0, v1}, LxL;->a(I)LxL;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 289
    invoke-virtual {v0, v1}, LxL;->a(Ljava/lang/String;)LxL;

    move-result-object v0

    sget-object v1, LyB;->d:LxM;

    .line 290
    invoke-virtual {v0, v1}, LxL;->a(LxM;)LxL;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object v0

    iput-object v0, p0, LyB;->n:LxJ;

    goto :goto_2
.end method

.method public a(Lxs;)V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, LyB;->a:Lxy;

    invoke-virtual {v0}, Lxy;->f()Ljava/net/CookieHandler;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_0

    .line 928
    iget-object v1, p0, LyB;->k:LxD;

    invoke-virtual {v1}, LxD;->b()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, LyH;->a(Lxs;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 930
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 321
    iget-wide v0, p0, LyB;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 322
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LyB;->b:J

    .line 323
    return-void
.end method

.method public b(Ljava/net/URL;)Z
    .locals 3

    .prologue
    .line 1007
    iget-object v0, p0, LyB;->k:LxD;

    invoke-virtual {v0}, LxD;->a()Ljava/net/URL;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-static {v0}, Lyi;->a(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, Lyi;->a(Ljava/net/URL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1010
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, LyB;->k:LxD;

    invoke-virtual {v0}, LxD;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LyF;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()LKS;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, LyB;->t:Lyn;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, LyB;->o:LKS;

    return-object v0
.end method

.method public e()LKA;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, LyB;->p:LKA;

    .line 337
    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, LyB;->d()LKS;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1

    .line 340
    invoke-static {v0}, LKI;->a(LKS;)LKA;

    move-result-object v0

    iput-object v0, p0, LyB;->p:LKA;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, LyB;->n:LxJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()LxD;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, LyB;->k:LxD;

    return-object v0
.end method

.method public h()LxJ;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, LyB;->n:LxJ;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, LyB;->n:LxJ;

    return-object v0
.end method

.method public i()Lxi;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, LyB;->e:Lxi;

    return-object v0
.end method

.method public j()LxN;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, LyB;->g:LxN;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, LyB;->i:LyP;

    if-eqz v0, :cond_0

    iget-object v0, p0, LyB;->e:Lxi;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, LyB;->i:LyP;

    invoke-interface {v0}, LyP;->c()V

    .line 456
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LyB;->e:Lxi;

    .line 457
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, LyB;->i:LyP;

    if-eqz v0, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, LyB;->i:LyP;

    invoke-interface {v0, p0}, LyP;->a(LyB;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public m()Lxi;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, LyB;->p:LKA;

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, LyB;->p:LKA;

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    .line 487
    :cond_0
    :goto_0
    iget-object v1, p0, LyB;->n:LxJ;

    if-nez v1, :cond_3

    .line 488
    iget-object v1, p0, LyB;->e:Lxi;

    if-eqz v1, :cond_1

    iget-object v1, p0, LyB;->e:Lxi;

    invoke-virtual {v1}, Lxi;->d()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lyi;->a(Ljava/net/Socket;)V

    .line 489
    :cond_1
    iput-object v0, p0, LyB;->e:Lxi;

    .line 510
    :goto_1
    return-object v0

    .line 482
    :cond_2
    iget-object v1, p0, LyB;->o:LKS;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, LyB;->o:LKS;

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v1, p0, LyB;->n:LxJ;

    invoke-virtual {v1}, LxJ;->h()LxM;

    move-result-object v1

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    .line 497
    iget-object v1, p0, LyB;->i:LyP;

    if-eqz v1, :cond_4

    iget-object v1, p0, LyB;->e:Lxi;

    if-eqz v1, :cond_4

    iget-object v1, p0, LyB;->i:LyP;

    invoke-interface {v1}, LyP;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 498
    iget-object v1, p0, LyB;->e:Lxi;

    invoke-virtual {v1}, Lxi;->d()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lyi;->a(Ljava/net/Socket;)V

    .line 499
    iput-object v0, p0, LyB;->e:Lxi;

    goto :goto_1

    .line 504
    :cond_4
    iget-object v1, p0, LyB;->e:Lxi;

    if-eqz v1, :cond_5

    sget-object v1, LxW;->b:LxW;

    iget-object v2, p0, LyB;->e:Lxi;

    invoke-virtual {v1, v2}, LxW;->a(Lxi;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 505
    iput-object v0, p0, LyB;->e:Lxi;

    .line 508
    :cond_5
    iget-object v1, p0, LyB;->e:Lxi;

    .line 509
    iput-object v0, p0, LyB;->e:Lxi;

    move-object v0, v1

    .line 510
    goto :goto_1
.end method

.method public n()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 628
    iget-object v0, p0, LyB;->n:LxJ;

    if-eqz v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, LyB;->l:LxD;

    if-nez v0, :cond_2

    iget-object v0, p0, LyB;->m:LxJ;

    if-nez v0, :cond_2

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_2
    iget-object v0, p0, LyB;->l:LxD;

    if-eqz v0, :cond_0

    .line 640
    iget-boolean v0, p0, LyB;->r:Z

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, LyB;->i:LyP;

    iget-object v1, p0, LyB;->l:LxD;

    invoke-interface {v0, v1}, LyP;->a(LxD;)V

    .line 642
    invoke-direct {p0}, LyB;->q()LxJ;

    move-result-object v0

    .line 681
    :goto_1
    invoke-virtual {v0}, LxJ;->g()Lxs;

    move-result-object v1

    invoke-virtual {p0, v1}, LyB;->a(Lxs;)V

    .line 684
    iget-object v1, p0, LyB;->m:LxJ;

    if-eqz v1, :cond_b

    .line 685
    iget-object v1, p0, LyB;->m:LxJ;

    invoke-static {v1, v0}, LyB;->a(LxJ;LxJ;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 686
    iget-object v1, p0, LyB;->m:LxJ;

    invoke-virtual {v1}, LxJ;->i()LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->k:LxD;

    .line 687
    invoke-virtual {v1, v2}, LxL;->a(LxD;)LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->h:LxJ;

    .line 688
    invoke-static {v2}, LyB;->b(LxJ;)LxJ;

    move-result-object v2

    invoke-virtual {v1, v2}, LxL;->c(LxJ;)LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->m:LxJ;

    .line 689
    invoke-virtual {v2}, LxJ;->g()Lxs;

    move-result-object v2

    invoke-virtual {v0}, LxJ;->g()Lxs;

    move-result-object v3

    invoke-static {v2, v3}, LyB;->a(Lxs;Lxs;)Lxs;

    move-result-object v2

    invoke-virtual {v1, v2}, LxL;->a(Lxs;)LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->m:LxJ;

    .line 690
    invoke-static {v2}, LyB;->b(LxJ;)LxJ;

    move-result-object v2

    invoke-virtual {v1, v2}, LxL;->b(LxJ;)LxL;

    move-result-object v1

    .line 691
    invoke-static {v0}, LyB;->b(LxJ;)LxJ;

    move-result-object v2

    invoke-virtual {v1, v2}, LxL;->a(LxJ;)LxL;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, LxL;->a()LxJ;

    move-result-object v1

    iput-object v1, p0, LyB;->n:LxJ;

    .line 693
    invoke-virtual {v0}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->close()V

    .line 694
    invoke-virtual {p0}, LyB;->k()V

    .line 698
    sget-object v0, LxW;->b:LxW;

    iget-object v1, p0, LyB;->a:Lxy;

    invoke-virtual {v0, v1}, LxW;->a(Lxy;)LxX;

    move-result-object v0

    .line 699
    invoke-interface {v0}, LxX;->a()V

    .line 700
    iget-object v1, p0, LyB;->m:LxJ;

    iget-object v2, p0, LyB;->n:LxJ;

    invoke-static {v2}, LyB;->b(LxJ;)LxJ;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LxX;->a(LxJ;LxJ;)V

    .line 701
    iget-object v0, p0, LyB;->n:LxJ;

    invoke-direct {p0, v0}, LyB;->c(LxJ;)LxJ;

    move-result-object v0

    iput-object v0, p0, LyB;->n:LxJ;

    goto/16 :goto_0

    .line 644
    :cond_3
    iget-boolean v0, p0, LyB;->q:Z

    if-nez v0, :cond_4

    .line 645
    new-instance v0, LyE;

    const/4 v1, 0x0

    iget-object v2, p0, LyB;->l:LxD;

    invoke-direct {v0, p0, v1, v2}, LyE;-><init>(LyB;ILxD;)V

    iget-object v1, p0, LyB;->l:LxD;

    invoke-virtual {v0, v1}, LyE;->a(LxD;)LxJ;

    move-result-object v0

    goto/16 :goto_1

    .line 649
    :cond_4
    iget-object v0, p0, LyB;->p:LKA;

    if-eqz v0, :cond_5

    iget-object v0, p0, LyB;->p:LKA;

    invoke-interface {v0}, LKA;->d()LKx;

    move-result-object v0

    invoke-virtual {v0}, LKx;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 650
    iget-object v0, p0, LyB;->p:LKA;

    invoke-interface {v0}, LKA;->g()LKA;

    .line 654
    :cond_5
    iget-wide v0, p0, LyB;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 655
    iget-object v0, p0, LyB;->l:LxD;

    invoke-static {v0}, LyH;->a(LxD;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, LyB;->o:LKS;

    instance-of v0, v0, LyL;

    if-eqz v0, :cond_6

    .line 657
    iget-object v0, p0, LyB;->o:LKS;

    check-cast v0, LyL;

    invoke-virtual {v0}, LyL;->c()J

    move-result-wide v0

    .line 658
    iget-object v2, p0, LyB;->l:LxD;

    invoke-virtual {v2}, LxD;->g()LxF;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 659
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LxF;->a(Ljava/lang/String;Ljava/lang/String;)LxF;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    iput-object v0, p0, LyB;->l:LxD;

    .line 662
    :cond_6
    iget-object v0, p0, LyB;->i:LyP;

    iget-object v1, p0, LyB;->l:LxD;

    invoke-interface {v0, v1}, LyP;->a(LxD;)V

    .line 666
    :cond_7
    iget-object v0, p0, LyB;->o:LKS;

    if-eqz v0, :cond_8

    .line 667
    iget-object v0, p0, LyB;->p:LKA;

    if-eqz v0, :cond_9

    .line 669
    iget-object v0, p0, LyB;->p:LKA;

    invoke-interface {v0}, LKA;->close()V

    .line 673
    :goto_2
    iget-object v0, p0, LyB;->o:LKS;

    instance-of v0, v0, LyL;

    if-eqz v0, :cond_8

    .line 674
    iget-object v1, p0, LyB;->i:LyP;

    iget-object v0, p0, LyB;->o:LKS;

    check-cast v0, LyL;

    invoke-interface {v1, v0}, LyP;->a(LyL;)V

    .line 678
    :cond_8
    invoke-direct {p0}, LyB;->q()LxJ;

    move-result-object v0

    goto/16 :goto_1

    .line 671
    :cond_9
    iget-object v0, p0, LyB;->o:LKS;

    invoke-interface {v0}, LKS;->close()V

    goto :goto_2

    .line 704
    :cond_a
    iget-object v1, p0, LyB;->m:LxJ;

    invoke-virtual {v1}, LxJ;->h()LxM;

    move-result-object v1

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    .line 708
    :cond_b
    invoke-virtual {v0}, LxJ;->i()LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->k:LxD;

    .line 709
    invoke-virtual {v1, v2}, LxL;->a(LxD;)LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->h:LxJ;

    .line 710
    invoke-static {v2}, LyB;->b(LxJ;)LxJ;

    move-result-object v2

    invoke-virtual {v1, v2}, LxL;->c(LxJ;)LxL;

    move-result-object v1

    iget-object v2, p0, LyB;->m:LxJ;

    .line 711
    invoke-static {v2}, LyB;->b(LxJ;)LxJ;

    move-result-object v2

    invoke-virtual {v1, v2}, LxL;->b(LxJ;)LxL;

    move-result-object v1

    .line 712
    invoke-static {v0}, LyB;->b(LxJ;)LxJ;

    move-result-object v0

    invoke-virtual {v1, v0}, LxL;->a(LxJ;)LxL;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object v0

    iput-object v0, p0, LyB;->n:LxJ;

    .line 715
    iget-object v0, p0, LyB;->n:LxJ;

    invoke-static {v0}, LyB;->a(LxJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, LyB;->p()V

    .line 717
    iget-object v0, p0, LyB;->s:Lym;

    iget-object v1, p0, LyB;->n:LxJ;

    invoke-direct {p0, v0, v1}, LyB;->a(Lym;LxJ;)LxJ;

    move-result-object v0

    invoke-direct {p0, v0}, LyB;->c(LxJ;)LxJ;

    move-result-object v0

    iput-object v0, p0, LyB;->n:LxJ;

    goto/16 :goto_0
.end method

.method public o()LxD;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 938
    iget-object v0, p0, LyB;->n:LxJ;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 939
    :cond_0
    invoke-virtual {p0}, LyB;->j()LxN;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {p0}, LyB;->j()LxN;

    move-result-object v0

    invoke-virtual {v0}, LxN;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 942
    :goto_0
    iget-object v2, p0, LyB;->n:LxJ;

    invoke-virtual {v2}, LxJ;->c()I

    move-result v2

    .line 944
    sparse-switch v2, :sswitch_data_0

    move-object v0, v1

    .line 998
    :goto_1
    return-object v0

    .line 940
    :cond_1
    iget-object v0, p0, LyB;->a:Lxy;

    .line 941
    invoke-virtual {v0}, Lxy;->d()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 946
    :sswitch_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    .line 947
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_2
    :sswitch_1
    iget-object v1, p0, LyB;->a:Lxy;

    invoke-virtual {v1}, Lxy;->l()LwN;

    move-result-object v1

    iget-object v2, p0, LyB;->n:LxJ;

    invoke-static {v1, v2, v0}, LyH;->a(LwN;LxJ;Ljava/net/Proxy;)LxD;

    move-result-object v0

    goto :goto_1

    .line 957
    :sswitch_2
    iget-object v0, p0, LyB;->k:LxD;

    invoke-virtual {v0}, LxD;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LyB;->k:LxD;

    invoke-virtual {v0}, LxD;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 958
    goto :goto_1

    .line 966
    :cond_3
    :sswitch_3
    iget-object v0, p0, LyB;->a:Lxy;

    invoke-virtual {v0}, Lxy;->o()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 968
    :cond_4
    iget-object v0, p0, LyB;->n:LxJ;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, LxJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 970
    :cond_5
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, LyB;->k:LxD;

    invoke-virtual {v3}, LxD;->a()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_1

    .line 976
    :cond_6
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, LyB;->k:LxD;

    invoke-virtual {v3}, LxD;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 977
    if-nez v0, :cond_7

    iget-object v0, p0, LyB;->a:Lxy;

    invoke-virtual {v0}, Lxy;->n()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto/16 :goto_1

    .line 980
    :cond_7
    iget-object v0, p0, LyB;->k:LxD;

    invoke-virtual {v0}, LxD;->g()LxF;

    move-result-object v0

    .line 981
    iget-object v3, p0, LyB;->k:LxD;

    invoke-virtual {v3}, LxD;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LyF;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 982
    const-string v3, "GET"

    invoke-virtual {v0, v3, v1}, LxF;->a(Ljava/lang/String;LxG;)LxF;

    .line 983
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, LxF;->b(Ljava/lang/String;)LxF;

    .line 984
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, LxF;->b(Ljava/lang/String;)LxF;

    .line 985
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, LxF;->b(Ljava/lang/String;)LxF;

    .line 991
    :cond_8
    invoke-virtual {p0, v2}, LyB;->b(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 992
    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, LxF;->b(Ljava/lang/String;)LxF;

    .line 995
    :cond_9
    invoke-virtual {v0, v2}, LxF;->a(Ljava/net/URL;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    goto/16 :goto_1

    .line 944
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method
