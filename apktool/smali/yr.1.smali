.class public final Lyr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:LxC;


# instance fields
.field final a:Lxo;

.field b:J

.field public final c:Z

.field private e:LwZ;

.field private f:LyC;

.field private g:LxD;

.field private final h:Lxz;

.field private i:LyF;

.field private j:Z

.field private final k:Lxt;

.field private l:Lxt;

.field private m:Lxz;

.field private n:Lxz;

.field private o:LKk;

.field private p:LJS;

.field private final q:Z

.field private final r:Z

.field private s:Lyc;

.field private t:Lyd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lys;

    invoke-direct {v0}, Lys;-><init>()V

    sput-object v0, Lyr;->d:LxC;

    return-void
.end method

.method public constructor <init>(Lxo;Lxt;ZZZLwZ;LyC;LyB;Lxz;)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyr;->b:J

    .line 185
    iput-object p1, p0, Lyr;->a:Lxo;

    .line 186
    iput-object p2, p0, Lyr;->k:Lxt;

    .line 187
    iput-boolean p3, p0, Lyr;->c:Z

    .line 188
    iput-boolean p4, p0, Lyr;->q:Z

    .line 189
    iput-boolean p5, p0, Lyr;->r:Z

    .line 190
    iput-object p6, p0, Lyr;->e:LwZ;

    .line 191
    iput-object p7, p0, Lyr;->f:LyC;

    .line 192
    iput-object p8, p0, Lyr;->o:LKk;

    .line 193
    iput-object p9, p0, Lyr;->h:Lxz;

    .line 195
    if-eqz p6, :cond_0

    .line 196
    sget-object v0, LxM;->b:LxM;

    invoke-virtual {v0, p6, p0}, LxM;->b(LwZ;Lyr;)V

    .line 197
    invoke-virtual {p6}, LwZ;->c()LxD;

    move-result-object v0

    iput-object v0, p0, Lyr;->g:LxD;

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyr;->g:LxD;

    goto :goto_0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    invoke-static {p0}, LxY;->a(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LxY;->a(Ljava/lang/String;)I

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

.method static synthetic a(Lyr;)LwZ;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lyr;->e:LwZ;

    return-object v0
.end method

.method private static a(Lxi;Lxi;)Lxi;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 899
    new-instance v2, Lxk;

    invoke-direct {v2}, Lxk;-><init>()V

    .line 901
    invoke-virtual {p0}, Lxi;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 902
    invoke-virtual {p0, v1}, Lxi;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 903
    invoke-virtual {p0, v1}, Lxi;->b(I)Ljava/lang/String;

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
    invoke-static {v4}, Lyx;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 908
    :cond_2
    invoke-virtual {v2, v4, v5}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

    goto :goto_1

    .line 912
    :cond_3
    invoke-virtual {p1}, Lxi;->a()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    .line 913
    invoke-virtual {p1, v0}, Lxi;->a(I)Ljava/lang/String;

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
    invoke-static {v3}, Lyx;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 918
    invoke-virtual {p1, v0}, Lxi;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

    goto :goto_3

    .line 922
    :cond_6
    invoke-virtual {v2}, Lxk;->a()Lxi;

    move-result-object v0

    return-object v0
.end method

.method private a(Lyc;Lxz;)Lxz;
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
    invoke-interface {p1}, Lyc;->b()LKk;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p2}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->c()LJT;

    move-result-object v1

    .line 821
    invoke-static {v0}, LKa;->a(LKk;)LJS;

    move-result-object v0

    .line 823
    new-instance v2, Lyt;

    invoke-direct {v2, p0, v1, p1, v0}, Lyt;-><init>(Lyr;LJT;Lyc;LJS;)V

    .line 865
    invoke-virtual {p2}, Lxz;->i()LxB;

    move-result-object v0

    new-instance v1, Lyz;

    .line 866
    invoke-virtual {p2}, Lxz;->g()Lxi;

    move-result-object v3

    invoke-static {v2}, LKa;->a(LKl;)LJT;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lyz;-><init>(Lxi;LJT;)V

    invoke-virtual {v0, v1}, LxB;->a(LxC;)LxB;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Lxt;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lyr;->e:LwZ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lyr;->f:LyC;

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lyr;->a:Lxo;

    invoke-static {p1, v0}, LyC;->a(Lxt;Lxo;)LyC;

    move-result-object v0

    iput-object v0, p0, Lyr;->f:LyC;

    .line 312
    :cond_1
    iget-object v0, p0, Lyr;->f:LyC;

    invoke-virtual {v0, p0}, LyC;->a(Lyr;)LwZ;

    move-result-object v0

    iput-object v0, p0, Lyr;->e:LwZ;

    .line 313
    iget-object v0, p0, Lyr;->e:LwZ;

    invoke-virtual {v0}, LwZ;->c()LxD;

    move-result-object v0

    iput-object v0, p0, Lyr;->g:LxD;

    .line 314
    return-void
.end method

.method public static a(Lxz;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0}, Lxz;->a()Lxt;

    move-result-object v2

    invoke-virtual {v2}, Lxt;->d()Ljava/lang/String;

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
    invoke-virtual {p0}, Lxz;->c()I

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
    invoke-static {p0}, Lyx;->a(Lxz;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 567
    invoke-virtual {p0, v3}, Lxz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 568
    goto :goto_0
.end method

.method private static a(Lxz;Lxz;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 875
    invoke-virtual {p1}, Lxz;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 891
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    invoke-virtual {p0}, Lxz;->g()Lxi;

    move-result-object v1

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lxi;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 883
    if-eqz v1, :cond_2

    .line 884
    invoke-virtual {p1}, Lxz;->g()Lxi;

    move-result-object v2

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lxi;->b(Ljava/lang/String;)Ljava/util/Date;

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

.method private b(Lxt;)Lxt;
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p1}, Lxt;->g()Lxv;

    move-result-object v0

    .line 583
    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 584
    const-string v1, "Host"

    invoke-virtual {p1}, Lxt;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lyr;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 587
    :cond_0
    iget-object v1, p0, Lyr;->e:LwZ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyr;->e:LwZ;

    invoke-virtual {v1}, LwZ;->l()Lxs;

    move-result-object v1

    sget-object v2, Lxs;->a:Lxs;

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "Connection"

    .line 588
    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 589
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 592
    :cond_2
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lyr;->j:Z

    .line 594
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 597
    :cond_3
    iget-object v1, p0, Lyr;->a:Lxo;

    invoke-virtual {v1}, Lxo;->f()Ljava/net/CookieHandler;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_4

    .line 602
    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v2

    invoke-virtual {v2}, Lxt;->e()Lxi;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lyx;->a(Lxi;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 604
    invoke-virtual {p1}, Lxt;->b()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 607
    invoke-static {v0, v1}, Lyx;->a(Lxv;Ljava/util/Map;)V

    .line 610
    :cond_4
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 611
    const-string v1, "User-Agent"

    invoke-static {}, Lya;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 614
    :cond_5
    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lxz;)Lxz;
    .locals 2

    .prologue
    .line 299
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lxz;->h()LxC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lxz;->i()LxB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LxB;->a(LxC;)LxB;

    move-result-object v0

    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lyr;)LyF;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lyr;->i:LyF;

    return-object v0
.end method

.method private b(Ljava/io/IOException;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lyr;->a:Lxo;

    invoke-virtual {v1}, Lxo;->p()Z

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

.method private c(Lxz;)Lxz;
    .locals 4

    .prologue
    .line 527
    iget-boolean v0, p0, Lyr;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lyr;->n:Lxz;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lxz;->a(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, LJY;

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->c()LJT;

    move-result-object v1

    invoke-direct {v0, v1}, LJY;-><init>(LKl;)V

    .line 536
    invoke-virtual {p1}, Lxz;->g()Lxi;

    move-result-object v1

    invoke-virtual {v1}, Lxi;->b()Lxk;

    move-result-object v1

    const-string v2, "Content-Encoding"

    .line 537
    invoke-virtual {v1, v2}, Lxk;->b(Ljava/lang/String;)Lxk;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 538
    invoke-virtual {v1, v2}, Lxk;->b(Ljava/lang/String;)Lxk;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Lxk;->a()Lxi;

    move-result-object v1

    .line 540
    invoke-virtual {p1}, Lxz;->i()LxB;

    move-result-object v2

    .line 541
    invoke-virtual {v2, v1}, LxB;->a(Lxi;)LxB;

    move-result-object v2

    new-instance v3, Lyz;

    .line 542
    invoke-static {v0}, LKa;->a(LKl;)LJT;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lyz;-><init>(Lxi;LJT;)V

    invoke-virtual {v2, v3}, LxB;->a(LxC;)LxB;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic c(Lyr;)Lxz;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lyr;->q()Lxz;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 428
    sget-object v0, LxM;->b:LxM;

    iget-object v1, p0, Lyr;->a:Lxo;

    invoke-virtual {v0, v1}, LxM;->a(Lxo;)LxN;

    move-result-object v0

    .line 429
    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lyr;->n:Lxz;

    iget-object v2, p0, Lyr;->l:Lxt;

    invoke-static {v1, v2}, Lyd;->a(Lxz;Lxt;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    iget-object v1, p0, Lyr;->l:Lxt;

    invoke-virtual {v1}, Lxt;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyv;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :try_start_0
    iget-object v1, p0, Lyr;->l:Lxt;

    invoke-interface {v0, v1}, LxN;->b(Lxt;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, Lyr;->n:Lxz;

    invoke-static {v1}, Lyr;->b(Lxz;)Lxz;

    move-result-object v1

    invoke-interface {v0, v1}, LxN;->a(Lxz;)Lyc;

    move-result-object v0

    iput-object v0, p0, Lyr;->s:Lyc;

    goto :goto_0
.end method

.method private q()Lxz;
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, Lyr;->i:LyF;

    invoke-interface {v0}, LyF;->a()V

    .line 791
    iget-object v0, p0, Lyr;->i:LyF;

    invoke-interface {v0}, LyF;->b()LxB;

    move-result-object v0

    iget-object v1, p0, Lyr;->l:Lxt;

    .line 792
    invoke-virtual {v0, v1}, LxB;->a(Lxt;)LxB;

    move-result-object v0

    iget-object v1, p0, Lyr;->e:LwZ;

    .line 793
    invoke-virtual {v1}, LwZ;->j()Lxh;

    move-result-object v1

    invoke-virtual {v0, v1}, LxB;->a(Lxh;)LxB;

    move-result-object v0

    sget-object v1, Lyx;->b:Ljava/lang/String;

    iget-wide v2, p0, Lyr;->b:J

    .line 794
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LxB;->a(Ljava/lang/String;Ljava/lang/String;)LxB;

    move-result-object v0

    sget-object v1, Lyx;->c:Ljava/lang/String;

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LxB;->a(Ljava/lang/String;Ljava/lang/String;)LxB;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v0

    .line 798
    iget-boolean v1, p0, Lyr;->r:Z

    if-nez v1, :cond_0

    .line 799
    invoke-virtual {v0}, Lxz;->i()LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->i:LyF;

    .line 800
    invoke-interface {v2, v0}, LyF;->a(Lxz;)LxC;

    move-result-object v0

    invoke-virtual {v1, v0}, LxB;->a(LxC;)LxB;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v0

    .line 804
    :cond_0
    sget-object v1, LxM;->b:LxM;

    iget-object v2, p0, Lyr;->e:LwZ;

    invoke-virtual {v0}, Lxz;->b()Lxs;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LxM;->a(LwZ;Lxs;)V

    .line 805
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)Lyr;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lyr;->o:LKk;

    invoke-virtual {p0, p1, v0}, Lyr;->a(Ljava/io/IOException;LKk;)Lyr;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/IOException;LKk;)Lyr;
    .locals 10

    .prologue
    .line 370
    iget-object v0, p0, Lyr;->f:LyC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyr;->e:LwZ;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lyr;->f:LyC;

    iget-object v1, p0, Lyr;->e:LwZ;

    invoke-virtual {v0, v1, p1}, LyC;->a(LwZ;Ljava/io/IOException;)V

    .line 374
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, LyB;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 375
    :goto_0
    iget-object v1, p0, Lyr;->f:LyC;

    if-nez v1, :cond_2

    iget-object v1, p0, Lyr;->e:LwZ;

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lyr;->f:LyC;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lyr;->f:LyC;

    .line 376
    invoke-virtual {v1}, LyC;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 377
    :cond_3
    invoke-direct {p0, p1}, Lyr;->b(Ljava/io/IOException;)Z

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
    invoke-virtual {p0}, Lyr;->m()LwZ;

    move-result-object v6

    .line 385
    new-instance v0, Lyr;

    iget-object v1, p0, Lyr;->a:Lxo;

    iget-object v2, p0, Lyr;->k:Lxt;

    iget-boolean v3, p0, Lyr;->c:Z

    iget-boolean v4, p0, Lyr;->q:Z

    iget-boolean v5, p0, Lyr;->r:Z

    iget-object v7, p0, Lyr;->f:LyC;

    move-object v8, p2

    check-cast v8, LyB;

    iget-object v9, p0, Lyr;->h:Lxz;

    invoke-direct/range {v0 .. v9}, Lyr;-><init>(Lxo;Lxt;ZZZLwZ;LyC;LyB;Lxz;)V

    goto :goto_1
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lyr;->t:Lyd;

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lyr;->i:LyF;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 212
    :cond_2
    iget-object v0, p0, Lyr;->k:Lxt;

    invoke-direct {p0, v0}, Lyr;->b(Lxt;)Lxt;

    move-result-object v2

    .line 214
    sget-object v0, LxM;->b:LxM;

    iget-object v3, p0, Lyr;->a:Lxo;

    invoke-virtual {v0, v3}, LxM;->a(Lxo;)LxN;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_6

    .line 216
    invoke-interface {v3, v2}, LxN;->a(Lxt;)Lxz;

    move-result-object v0

    .line 219
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 220
    new-instance v6, Lyf;

    invoke-direct {v6, v4, v5, v2, v0}, Lyf;-><init>(JLxt;Lxz;)V

    invoke-virtual {v6}, Lyf;->a()Lyd;

    move-result-object v4

    iput-object v4, p0, Lyr;->t:Lyd;

    .line 221
    iget-object v4, p0, Lyr;->t:Lyd;

    iget-object v4, v4, Lyd;->a:Lxt;

    iput-object v4, p0, Lyr;->l:Lxt;

    .line 222
    iget-object v4, p0, Lyr;->t:Lyd;

    iget-object v4, v4, Lyd;->b:Lxz;

    iput-object v4, p0, Lyr;->m:Lxz;

    .line 224
    if-eqz v3, :cond_3

    .line 225
    iget-object v4, p0, Lyr;->t:Lyd;

    invoke-interface {v3, v4}, LxN;->a(Lyd;)V

    .line 228
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lyr;->m:Lxz;

    if-nez v3, :cond_4

    .line 229
    invoke-virtual {v0}, Lxz;->h()LxC;

    move-result-object v0

    invoke-static {v0}, LxY;->a(Ljava/io/Closeable;)V

    .line 232
    :cond_4
    iget-object v0, p0, Lyr;->l:Lxt;

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lyr;->e:LwZ;

    if-nez v0, :cond_5

    .line 235
    iget-object v0, p0, Lyr;->l:Lxt;

    invoke-direct {p0, v0}, Lyr;->a(Lxt;)V

    .line 238
    :cond_5
    sget-object v0, LxM;->b:LxM;

    iget-object v1, p0, Lyr;->e:LwZ;

    invoke-virtual {v0, v1, p0}, LxM;->a(LwZ;Lyr;)LyF;

    move-result-object v0

    iput-object v0, p0, Lyr;->i:LyF;

    .line 244
    iget-boolean v0, p0, Lyr;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyr;->o:LKk;

    if-nez v0, :cond_0

    .line 245
    invoke-static {v2}, Lyx;->a(Lxt;)J

    move-result-wide v0

    .line 246
    iget-boolean v2, p0, Lyr;->c:Z

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
    iget-object v2, p0, Lyr;->i:LyF;

    iget-object v3, p0, Lyr;->l:Lxt;

    invoke-interface {v2, v3}, LyF;->a(Lxt;)V

    .line 255
    new-instance v2, LyB;

    long-to-int v0, v0

    invoke-direct {v2, v0}, LyB;-><init>(I)V

    iput-object v2, p0, Lyr;->o:LKk;

    goto/16 :goto_0

    .line 260
    :cond_8
    new-instance v0, LyB;

    invoke-direct {v0}, LyB;-><init>()V

    iput-object v0, p0, Lyr;->o:LKk;

    goto/16 :goto_0

    .line 263
    :cond_9
    iget-object v2, p0, Lyr;->i:LyF;

    iget-object v3, p0, Lyr;->l:Lxt;

    invoke-interface {v2, v3}, LyF;->a(Lxt;)V

    .line 264
    iget-object v2, p0, Lyr;->i:LyF;

    iget-object v3, p0, Lyr;->l:Lxt;

    invoke-interface {v2, v3, v0, v1}, LyF;->a(Lxt;J)LKk;

    move-result-object v0

    iput-object v0, p0, Lyr;->o:LKk;

    goto/16 :goto_0

    .line 270
    :cond_a
    iget-object v0, p0, Lyr;->e:LwZ;

    if-eqz v0, :cond_b

    .line 271
    sget-object v0, LxM;->b:LxM;

    iget-object v2, p0, Lyr;->a:Lxo;

    invoke-virtual {v2}, Lxo;->m()Lxa;

    move-result-object v2

    iget-object v3, p0, Lyr;->e:LwZ;

    invoke-virtual {v0, v2, v3}, LxM;->a(Lxa;LwZ;)V

    .line 272
    iput-object v1, p0, Lyr;->e:LwZ;

    .line 275
    :cond_b
    iget-object v0, p0, Lyr;->m:Lxz;

    if-eqz v0, :cond_c

    .line 277
    iget-object v0, p0, Lyr;->m:Lxz;

    invoke-virtual {v0}, Lxz;->i()LxB;

    move-result-object v0

    iget-object v1, p0, Lyr;->k:Lxt;

    .line 278
    invoke-virtual {v0, v1}, LxB;->a(Lxt;)LxB;

    move-result-object v0

    iget-object v1, p0, Lyr;->h:Lxz;

    .line 279
    invoke-static {v1}, Lyr;->b(Lxz;)Lxz;

    move-result-object v1

    invoke-virtual {v0, v1}, LxB;->c(Lxz;)LxB;

    move-result-object v0

    iget-object v1, p0, Lyr;->m:Lxz;

    .line 280
    invoke-static {v1}, Lyr;->b(Lxz;)Lxz;

    move-result-object v1

    invoke-virtual {v0, v1}, LxB;->b(Lxz;)LxB;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v0

    iput-object v0, p0, Lyr;->n:Lxz;

    .line 294
    :goto_2
    iget-object v0, p0, Lyr;->n:Lxz;

    invoke-direct {p0, v0}, Lyr;->c(Lxz;)Lxz;

    move-result-object v0

    iput-object v0, p0, Lyr;->n:Lxz;

    goto/16 :goto_0

    .line 284
    :cond_c
    new-instance v0, LxB;

    invoke-direct {v0}, LxB;-><init>()V

    iget-object v1, p0, Lyr;->k:Lxt;

    .line 285
    invoke-virtual {v0, v1}, LxB;->a(Lxt;)LxB;

    move-result-object v0

    iget-object v1, p0, Lyr;->h:Lxz;

    .line 286
    invoke-static {v1}, Lyr;->b(Lxz;)Lxz;

    move-result-object v1

    invoke-virtual {v0, v1}, LxB;->c(Lxz;)LxB;

    move-result-object v0

    sget-object v1, Lxs;->b:Lxs;

    .line 287
    invoke-virtual {v0, v1}, LxB;->a(Lxs;)LxB;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 288
    invoke-virtual {v0, v1}, LxB;->a(I)LxB;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 289
    invoke-virtual {v0, v1}, LxB;->a(Ljava/lang/String;)LxB;

    move-result-object v0

    sget-object v1, Lyr;->d:LxC;

    .line 290
    invoke-virtual {v0, v1}, LxB;->a(LxC;)LxB;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v0

    iput-object v0, p0, Lyr;->n:Lxz;

    goto :goto_2
.end method

.method public a(Lxi;)V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lyr;->a:Lxo;

    invoke-virtual {v0}, Lxo;->f()Ljava/net/CookieHandler;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_0

    .line 928
    iget-object v1, p0, Lyr;->k:Lxt;

    invoke-virtual {v1}, Lxt;->b()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lyx;->a(Lxi;Ljava/lang/String;)Ljava/util/Map;

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
    iget-wide v0, p0, Lyr;->b:J

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

    iput-wide v0, p0, Lyr;->b:J

    .line 323
    return-void
.end method

.method public b(Ljava/net/URL;)Z
    .locals 3

    .prologue
    .line 1007
    iget-object v0, p0, Lyr;->k:Lxt;

    invoke-virtual {v0}, Lxt;->a()Ljava/net/URL;

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
    invoke-static {v0}, LxY;->a(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, LxY;->a(Ljava/net/URL;)I

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
    iget-object v0, p0, Lyr;->k:Lxt;

    invoke-virtual {v0}, Lxt;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyv;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()LKk;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lyr;->t:Lyd;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lyr;->o:LKk;

    return-object v0
.end method

.method public e()LJS;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lyr;->p:LJS;

    .line 337
    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lyr;->d()LKk;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1

    .line 340
    invoke-static {v0}, LKa;->a(LKk;)LJS;

    move-result-object v0

    iput-object v0, p0, Lyr;->p:LJS;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lyr;->n:Lxz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lxt;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lyr;->k:Lxt;

    return-object v0
.end method

.method public h()Lxz;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lyr;->n:Lxz;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, Lyr;->n:Lxz;

    return-object v0
.end method

.method public i()LwZ;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lyr;->e:LwZ;

    return-object v0
.end method

.method public j()LxD;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lyr;->g:LxD;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lyr;->i:LyF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyr;->e:LwZ;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lyr;->i:LyF;

    invoke-interface {v0}, LyF;->c()V

    .line 456
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyr;->e:LwZ;

    .line 457
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lyr;->i:LyF;

    if-eqz v0, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, Lyr;->i:LyF;

    invoke-interface {v0, p0}, LyF;->a(Lyr;)V
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

.method public m()LwZ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, Lyr;->p:LJS;

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lyr;->p:LJS;

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    .line 487
    :cond_0
    :goto_0
    iget-object v1, p0, Lyr;->n:Lxz;

    if-nez v1, :cond_3

    .line 488
    iget-object v1, p0, Lyr;->e:LwZ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyr;->e:LwZ;

    invoke-virtual {v1}, LwZ;->d()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, LxY;->a(Ljava/net/Socket;)V

    .line 489
    :cond_1
    iput-object v0, p0, Lyr;->e:LwZ;

    .line 510
    :goto_1
    return-object v0

    .line 482
    :cond_2
    iget-object v1, p0, Lyr;->o:LKk;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lyr;->o:LKk;

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v1, p0, Lyr;->n:Lxz;

    invoke-virtual {v1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    .line 497
    iget-object v1, p0, Lyr;->i:LyF;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lyr;->e:LwZ;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lyr;->i:LyF;

    invoke-interface {v1}, LyF;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 498
    iget-object v1, p0, Lyr;->e:LwZ;

    invoke-virtual {v1}, LwZ;->d()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, LxY;->a(Ljava/net/Socket;)V

    .line 499
    iput-object v0, p0, Lyr;->e:LwZ;

    goto :goto_1

    .line 504
    :cond_4
    iget-object v1, p0, Lyr;->e:LwZ;

    if-eqz v1, :cond_5

    sget-object v1, LxM;->b:LxM;

    iget-object v2, p0, Lyr;->e:LwZ;

    invoke-virtual {v1, v2}, LxM;->a(LwZ;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 505
    iput-object v0, p0, Lyr;->e:LwZ;

    .line 508
    :cond_5
    iget-object v1, p0, Lyr;->e:LwZ;

    .line 509
    iput-object v0, p0, Lyr;->e:LwZ;

    move-object v0, v1

    .line 510
    goto :goto_1
.end method

.method public n()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 628
    iget-object v0, p0, Lyr;->n:Lxz;

    if-eqz v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lyr;->l:Lxt;

    if-nez v0, :cond_2

    iget-object v0, p0, Lyr;->m:Lxz;

    if-nez v0, :cond_2

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_2
    iget-object v0, p0, Lyr;->l:Lxt;

    if-eqz v0, :cond_0

    .line 640
    iget-boolean v0, p0, Lyr;->r:Z

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lyr;->i:LyF;

    iget-object v1, p0, Lyr;->l:Lxt;

    invoke-interface {v0, v1}, LyF;->a(Lxt;)V

    .line 642
    invoke-direct {p0}, Lyr;->q()Lxz;

    move-result-object v0

    .line 681
    :goto_1
    invoke-virtual {v0}, Lxz;->g()Lxi;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyr;->a(Lxi;)V

    .line 684
    iget-object v1, p0, Lyr;->m:Lxz;

    if-eqz v1, :cond_b

    .line 685
    iget-object v1, p0, Lyr;->m:Lxz;

    invoke-static {v1, v0}, Lyr;->a(Lxz;Lxz;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 686
    iget-object v1, p0, Lyr;->m:Lxz;

    invoke-virtual {v1}, Lxz;->i()LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->k:Lxt;

    .line 687
    invoke-virtual {v1, v2}, LxB;->a(Lxt;)LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->h:Lxz;

    .line 688
    invoke-static {v2}, Lyr;->b(Lxz;)Lxz;

    move-result-object v2

    invoke-virtual {v1, v2}, LxB;->c(Lxz;)LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->m:Lxz;

    .line 689
    invoke-virtual {v2}, Lxz;->g()Lxi;

    move-result-object v2

    invoke-virtual {v0}, Lxz;->g()Lxi;

    move-result-object v3

    invoke-static {v2, v3}, Lyr;->a(Lxi;Lxi;)Lxi;

    move-result-object v2

    invoke-virtual {v1, v2}, LxB;->a(Lxi;)LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->m:Lxz;

    .line 690
    invoke-static {v2}, Lyr;->b(Lxz;)Lxz;

    move-result-object v2

    invoke-virtual {v1, v2}, LxB;->b(Lxz;)LxB;

    move-result-object v1

    .line 691
    invoke-static {v0}, Lyr;->b(Lxz;)Lxz;

    move-result-object v2

    invoke-virtual {v1, v2}, LxB;->a(Lxz;)LxB;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, LxB;->a()Lxz;

    move-result-object v1

    iput-object v1, p0, Lyr;->n:Lxz;

    .line 693
    invoke-virtual {v0}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->close()V

    .line 694
    invoke-virtual {p0}, Lyr;->k()V

    .line 698
    sget-object v0, LxM;->b:LxM;

    iget-object v1, p0, Lyr;->a:Lxo;

    invoke-virtual {v0, v1}, LxM;->a(Lxo;)LxN;

    move-result-object v0

    .line 699
    invoke-interface {v0}, LxN;->a()V

    .line 700
    iget-object v1, p0, Lyr;->m:Lxz;

    iget-object v2, p0, Lyr;->n:Lxz;

    invoke-static {v2}, Lyr;->b(Lxz;)Lxz;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LxN;->a(Lxz;Lxz;)V

    .line 701
    iget-object v0, p0, Lyr;->n:Lxz;

    invoke-direct {p0, v0}, Lyr;->c(Lxz;)Lxz;

    move-result-object v0

    iput-object v0, p0, Lyr;->n:Lxz;

    goto/16 :goto_0

    .line 644
    :cond_3
    iget-boolean v0, p0, Lyr;->q:Z

    if-nez v0, :cond_4

    .line 645
    new-instance v0, Lyu;

    const/4 v1, 0x0

    iget-object v2, p0, Lyr;->l:Lxt;

    invoke-direct {v0, p0, v1, v2}, Lyu;-><init>(Lyr;ILxt;)V

    iget-object v1, p0, Lyr;->l:Lxt;

    invoke-virtual {v0, v1}, Lyu;->a(Lxt;)Lxz;

    move-result-object v0

    goto/16 :goto_1

    .line 649
    :cond_4
    iget-object v0, p0, Lyr;->p:LJS;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyr;->p:LJS;

    invoke-interface {v0}, LJS;->d()LJP;

    move-result-object v0

    invoke-virtual {v0}, LJP;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 650
    iget-object v0, p0, Lyr;->p:LJS;

    invoke-interface {v0}, LJS;->g()LJS;

    .line 654
    :cond_5
    iget-wide v0, p0, Lyr;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 655
    iget-object v0, p0, Lyr;->l:Lxt;

    invoke-static {v0}, Lyx;->a(Lxt;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lyr;->o:LKk;

    instance-of v0, v0, LyB;

    if-eqz v0, :cond_6

    .line 657
    iget-object v0, p0, Lyr;->o:LKk;

    check-cast v0, LyB;

    invoke-virtual {v0}, LyB;->c()J

    move-result-wide v0

    .line 658
    iget-object v2, p0, Lyr;->l:Lxt;

    invoke-virtual {v2}, Lxt;->g()Lxv;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 659
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    iput-object v0, p0, Lyr;->l:Lxt;

    .line 662
    :cond_6
    iget-object v0, p0, Lyr;->i:LyF;

    iget-object v1, p0, Lyr;->l:Lxt;

    invoke-interface {v0, v1}, LyF;->a(Lxt;)V

    .line 666
    :cond_7
    iget-object v0, p0, Lyr;->o:LKk;

    if-eqz v0, :cond_8

    .line 667
    iget-object v0, p0, Lyr;->p:LJS;

    if-eqz v0, :cond_9

    .line 669
    iget-object v0, p0, Lyr;->p:LJS;

    invoke-interface {v0}, LJS;->close()V

    .line 673
    :goto_2
    iget-object v0, p0, Lyr;->o:LKk;

    instance-of v0, v0, LyB;

    if-eqz v0, :cond_8

    .line 674
    iget-object v1, p0, Lyr;->i:LyF;

    iget-object v0, p0, Lyr;->o:LKk;

    check-cast v0, LyB;

    invoke-interface {v1, v0}, LyF;->a(LyB;)V

    .line 678
    :cond_8
    invoke-direct {p0}, Lyr;->q()Lxz;

    move-result-object v0

    goto/16 :goto_1

    .line 671
    :cond_9
    iget-object v0, p0, Lyr;->o:LKk;

    invoke-interface {v0}, LKk;->close()V

    goto :goto_2

    .line 704
    :cond_a
    iget-object v1, p0, Lyr;->m:Lxz;

    invoke-virtual {v1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    .line 708
    :cond_b
    invoke-virtual {v0}, Lxz;->i()LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->k:Lxt;

    .line 709
    invoke-virtual {v1, v2}, LxB;->a(Lxt;)LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->h:Lxz;

    .line 710
    invoke-static {v2}, Lyr;->b(Lxz;)Lxz;

    move-result-object v2

    invoke-virtual {v1, v2}, LxB;->c(Lxz;)LxB;

    move-result-object v1

    iget-object v2, p0, Lyr;->m:Lxz;

    .line 711
    invoke-static {v2}, Lyr;->b(Lxz;)Lxz;

    move-result-object v2

    invoke-virtual {v1, v2}, LxB;->b(Lxz;)LxB;

    move-result-object v1

    .line 712
    invoke-static {v0}, Lyr;->b(Lxz;)Lxz;

    move-result-object v0

    invoke-virtual {v1, v0}, LxB;->a(Lxz;)LxB;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v0

    iput-object v0, p0, Lyr;->n:Lxz;

    .line 715
    iget-object v0, p0, Lyr;->n:Lxz;

    invoke-static {v0}, Lyr;->a(Lxz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lyr;->p()V

    .line 717
    iget-object v0, p0, Lyr;->s:Lyc;

    iget-object v1, p0, Lyr;->n:Lxz;

    invoke-direct {p0, v0, v1}, Lyr;->a(Lyc;Lxz;)Lxz;

    move-result-object v0

    invoke-direct {p0, v0}, Lyr;->c(Lxz;)Lxz;

    move-result-object v0

    iput-object v0, p0, Lyr;->n:Lxz;

    goto/16 :goto_0
.end method

.method public o()Lxt;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 938
    iget-object v0, p0, Lyr;->n:Lxz;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 939
    :cond_0
    invoke-virtual {p0}, Lyr;->j()LxD;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {p0}, Lyr;->j()LxD;

    move-result-object v0

    invoke-virtual {v0}, LxD;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 942
    :goto_0
    iget-object v2, p0, Lyr;->n:Lxz;

    invoke-virtual {v2}, Lxz;->c()I

    move-result v2

    .line 944
    sparse-switch v2, :sswitch_data_0

    move-object v0, v1

    .line 998
    :goto_1
    return-object v0

    .line 940
    :cond_1
    iget-object v0, p0, Lyr;->a:Lxo;

    .line 941
    invoke-virtual {v0}, Lxo;->d()Ljava/net/Proxy;

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
    iget-object v1, p0, Lyr;->a:Lxo;

    invoke-virtual {v1}, Lxo;->l()LwE;

    move-result-object v1

    iget-object v2, p0, Lyr;->n:Lxz;

    invoke-static {v1, v2, v0}, Lyx;->a(LwE;Lxz;Ljava/net/Proxy;)Lxt;

    move-result-object v0

    goto :goto_1

    .line 957
    :sswitch_2
    iget-object v0, p0, Lyr;->k:Lxt;

    invoke-virtual {v0}, Lxt;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lyr;->k:Lxt;

    invoke-virtual {v0}, Lxt;->d()Ljava/lang/String;

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
    iget-object v0, p0, Lyr;->a:Lxo;

    invoke-virtual {v0}, Lxo;->o()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 968
    :cond_4
    iget-object v0, p0, Lyr;->n:Lxz;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lxz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 970
    :cond_5
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lyr;->k:Lxt;

    invoke-virtual {v3}, Lxt;->a()Ljava/net/URL;

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

    iget-object v3, p0, Lyr;->k:Lxt;

    invoke-virtual {v3}, Lxt;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 977
    if-nez v0, :cond_7

    iget-object v0, p0, Lyr;->a:Lxo;

    invoke-virtual {v0}, Lxo;->n()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto/16 :goto_1

    .line 980
    :cond_7
    iget-object v0, p0, Lyr;->k:Lxt;

    invoke-virtual {v0}, Lxt;->g()Lxv;

    move-result-object v0

    .line 981
    iget-object v3, p0, Lyr;->k:Lxt;

    invoke-virtual {v3}, Lxt;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyv;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 982
    const-string v3, "GET"

    invoke-virtual {v0, v3, v1}, Lxv;->a(Ljava/lang/String;Lxw;)Lxv;

    .line 983
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lxv;->b(Ljava/lang/String;)Lxv;

    .line 984
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lxv;->b(Ljava/lang/String;)Lxv;

    .line 985
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lxv;->b(Ljava/lang/String;)Lxv;

    .line 991
    :cond_8
    invoke-virtual {p0, v2}, Lyr;->b(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 992
    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lxv;->b(Ljava/lang/String;)Lxv;

    .line 995
    :cond_9
    invoke-virtual {v0, v2}, Lxv;->a(Ljava/net/URL;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

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
