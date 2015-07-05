.class public final LwZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lxa;

.field private final b:LxD;

.field private c:Ljava/net/Socket;

.field private d:Z

.field private e:Lyh;

.field private f:Lzl;

.field private g:Lxs;

.field private h:J

.field private i:Lxh;

.field private j:I

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lxa;LxD;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, LwZ;->d:Z

    .line 77
    sget-object v0, Lxs;->b:Lxs;

    iput-object v0, p0, LwZ;->g:Lxs;

    .line 90
    iput-object p1, p0, LwZ;->a:Lxa;

    .line 91
    iput-object p2, p0, LwZ;->b:LxD;

    .line 92
    return-void
.end method

.method private a(Lxt;)Lxt;
    .locals 7

    .prologue
    .line 193
    iget-object v0, p0, LwZ;->b:LxD;

    invoke-virtual {v0}, LxD;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p1}, Lxt;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lxt;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, LxY;->a(Ljava/net/URL;)I

    move-result v2

    .line 197
    const-string v0, "https"

    invoke-static {v0}, LxY;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3

    move-object v0, v1

    .line 198
    :goto_1
    new-instance v3, Lxv;

    invoke-direct {v3}, Lxv;-><init>()V

    new-instance v4, Ljava/net/URL;

    const-string v5, "https"

    const-string v6, "/"

    invoke-direct {v4, v5, v1, v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    invoke-virtual {v3, v4}, Lxv;->a(Ljava/net/URL;)Lxv;

    move-result-object v1

    const-string v2, "Host"

    .line 200
    invoke-virtual {v1, v2, v0}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 201
    invoke-virtual {v0, v1, v2}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    move-result-object v0

    .line 204
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    .line 206
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 210
    :cond_1
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_2

    .line 212
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v0, v2, v1}, Lxv;->a(Ljava/lang/String;Ljava/lang/String;)Lxv;

    .line 215
    :cond_2
    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lxt;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    invoke-static {}, LxS;->a()LxS;

    move-result-object v2

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0, p1, p2, p3}, LwZ;->b(Lxt;II)V

    .line 232
    :cond_0
    iget-object v0, p0, LwZ;->b:LxD;

    iget-object v0, v0, LxD;->a:LwD;

    iget-object v0, v0, LwD;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, LwZ;->c:Ljava/net/Socket;

    iget-object v3, p0, LwZ;->b:LxD;

    iget-object v3, v3, LxD;->a:LwD;

    iget-object v3, v3, LwD;->b:Ljava/lang/String;

    iget-object v4, p0, LwZ;->b:LxD;

    iget-object v4, v4, LxD;->a:LwD;

    iget v4, v4, LwD;->c:I

    .line 233
    invoke-virtual {v0, v1, v3, v4, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, LwZ;->c:Ljava/net/Socket;

    .line 234
    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 237
    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->d:Lxc;

    iget-object v3, p0, LwZ;->b:LxD;

    invoke-virtual {v1, v0, v3}, Lxc;->a(Ljavax/net/ssl/SSLSocket;LxD;)V

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 244
    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->d:Lxc;

    invoke-virtual {v1}, Lxc;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v2, v0}, LxS;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    invoke-static {v1}, Lxs;->a(Ljava/lang/String;)Lxs;

    move-result-object v1

    iput-object v1, p0, LwZ;->g:Lxs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    invoke-virtual {v2, v0}, LxS;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 252
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lxh;->a(Ljavax/net/ssl/SSLSession;)Lxh;

    move-result-object v1

    iput-object v1, p0, LwZ;->i:Lxh;

    .line 255
    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->a:LwD;

    iget-object v1, v1, LwD;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p0, LwZ;->b:LxD;

    iget-object v2, v2, LxD;->a:LwD;

    iget-object v2, v2, LwD;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 257
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LwZ;->b:LxD;

    iget-object v3, v3, LxD;->a:LwD;

    iget-object v3, v3, LwD;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not verified:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-static {v0}, LwU;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    subjectAltNames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    invoke-static {v0}, LzE;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :catchall_0
    move-exception v1

    invoke-virtual {v2, v0}, LxS;->a(Ljavax/net/ssl/SSLSocket;)V

    throw v1

    .line 264
    :cond_2
    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->a:LwD;

    iget-object v1, v1, LwD;->g:LwU;

    iget-object v2, p0, LwZ;->b:LxD;

    iget-object v2, v2, LxD;->a:LwD;

    iget-object v2, v2, LwD;->b:Ljava/lang/String;

    iget-object v3, p0, LwZ;->i:Lxh;

    invoke-virtual {v3}, Lxh;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LwU;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 266
    iget-object v1, p0, LwZ;->g:Lxs;

    sget-object v2, Lxs;->c:Lxs;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, LwZ;->g:Lxs;

    sget-object v2, Lxs;->d:Lxs;

    if-ne v1, v2, :cond_4

    .line 267
    :cond_3
    invoke-virtual {v0, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 268
    new-instance v0, Lzt;

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->a:LwD;

    invoke-virtual {v1}, LwD;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LwZ;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, v6, v2}, Lzt;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object v1, p0, LwZ;->g:Lxs;

    .line 269
    invoke-virtual {v0, v1}, Lzt;->a(Lxs;)Lzt;

    move-result-object v0

    invoke-virtual {v0}, Lzt;->a()Lzl;

    move-result-object v0

    iput-object v0, p0, LwZ;->f:Lzl;

    .line 270
    iget-object v0, p0, LwZ;->f:Lzl;

    invoke-virtual {v0}, Lzl;->e()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_4
    new-instance v0, Lyh;

    iget-object v1, p0, LwZ;->a:Lxa;

    iget-object v2, p0, LwZ;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lyh;-><init>(Lxa;LwZ;Ljava/net/Socket;)V

    iput-object v0, p0, LwZ;->e:Lyh;

    goto :goto_0
.end method

.method private b(Lxt;II)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 392
    new-instance v4, Lyh;

    iget-object v0, p0, LwZ;->a:Lxa;

    iget-object v1, p0, LwZ;->c:Ljava/net/Socket;

    invoke-direct {v4, v0, p0, v1}, Lyh;-><init>(Lxa;LwZ;Ljava/net/Socket;)V

    .line 393
    invoke-virtual {v4, p2, p3}, Lyh;->a(II)V

    .line 394
    invoke-virtual {p1}, Lxt;->a()Ljava/net/URL;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECT "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_0
    invoke-virtual {p1}, Lxt;->e()Lxi;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lyh;->a(Lxi;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v4}, Lyh;->d()V

    .line 399
    invoke-virtual {v4}, Lyh;->g()LxB;

    move-result-object v0

    invoke-virtual {v0, p1}, LxB;->a(Lxt;)LxB;

    move-result-object v0

    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v6

    .line 402
    invoke-static {v6}, Lyx;->a(Lxz;)J

    move-result-wide v0

    .line 403
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    move-wide v0, v2

    .line 406
    :cond_1
    invoke-virtual {v4, v0, v1}, Lyh;->b(J)LKl;

    move-result-object v0

    .line 407
    const v1, 0x7fffffff

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v7}, LxY;->b(LKl;ILjava/util/concurrent/TimeUnit;)Z

    .line 408
    invoke-interface {v0}, LKl;->close()V

    .line 410
    invoke-virtual {v6}, Lxz;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 428
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {v6}, Lxz;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :sswitch_0
    invoke-virtual {v4}, Lyh;->e()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 417
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :sswitch_1
    iget-object v0, p0, LwZ;->b:LxD;

    iget-object v0, v0, LxD;->a:LwD;

    iget-object v0, v0, LwD;->h:LwE;

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->b:Ljava/net/Proxy;

    invoke-static {v0, v6, v1}, Lyx;->a(LwE;Lxz;Ljava/net/Proxy;)Lxt;

    move-result-object p1

    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_2
    return-void

    .line 410
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method a(Lyr;)LyF;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, LwZ;->f:Lzl;

    if-eqz v0, :cond_0

    new-instance v0, LyD;

    iget-object v1, p0, LwZ;->f:Lzl;

    invoke-direct {v0, p1, v1}, LyD;-><init>(Lyr;Lzl;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lyw;

    iget-object v1, p0, LwZ;->e:Lyh;

    invoke-direct {v0, p1, v1}, Lyw;-><init>(Lyr;Lyh;)V

    goto :goto_0
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 364
    iget-boolean v0, p0, LwZ;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, LwZ;->e:Lyh;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 369
    iget-object v0, p0, LwZ;->e:Lyh;

    invoke-virtual {v0, p1, p2}, Lyh;->a(II)V

    .line 371
    :cond_1
    return-void
.end method

.method a(IIILxt;)V
    .locals 3

    .prologue
    .line 146
    iget-boolean v0, p0, LwZ;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, LwZ;->b:LxD;

    iget-object v0, v0, LxD;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LwZ;->b:LxD;

    iget-object v0, v0, LxD;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, LwZ;->b:LxD;

    iget-object v0, v0, LxD;->a:LwD;

    iget-object v0, v0, LwD;->d:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, LwZ;->c:Ljava/net/Socket;

    .line 154
    :goto_0
    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 155
    invoke-static {}, LxS;->a()LxS;

    move-result-object v0

    iget-object v1, p0, LwZ;->c:Ljava/net/Socket;

    iget-object v2, p0, LwZ;->b:LxD;

    iget-object v2, v2, LxD;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, LxS;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 157
    iget-object v0, p0, LwZ;->b:LxD;

    iget-object v0, v0, LxD;->a:LwD;

    iget-object v0, v0, LwD;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0, p4, p2, p3}, LwZ;->a(Lxt;II)V

    .line 162
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LwZ;->d:Z

    .line 163
    return-void

    .line 151
    :cond_2
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->b:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, LwZ;->c:Ljava/net/Socket;

    goto :goto_0

    .line 160
    :cond_3
    new-instance v0, Lyh;

    iget-object v1, p0, LwZ;->a:Lxa;

    iget-object v2, p0, LwZ;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lyh;-><init>(Lxa;LwZ;Ljava/net/Socket;)V

    iput-object v0, p0, LwZ;->e:Lyh;

    goto :goto_1
.end method

.method a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, LwZ;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, LwZ;->a:Lxa;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, LwZ;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_1
    :try_start_1
    iput-object p1, p0, LwZ;->k:Ljava/lang/Object;

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method a(Lxo;Ljava/lang/Object;Lxt;)V
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0, p2}, LwZ;->a(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, LwZ;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0, p3}, LwZ;->a(Lxt;)Lxt;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lxo;->a()I

    move-result v1

    invoke-virtual {p1}, Lxo;->b()I

    move-result v2

    .line 175
    invoke-virtual {p1}, Lxo;->c()I

    move-result v3

    .line 174
    invoke-virtual {p0, v1, v2, v3, v0}, LwZ;->a(IIILxt;)V

    .line 176
    invoke-virtual {p0}, LwZ;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lxo;->m()Lxa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxa;->b(LwZ;)V

    .line 179
    :cond_0
    invoke-virtual {p1}, Lxo;->q()LxX;

    move-result-object v0

    invoke-virtual {p0}, LwZ;->c()LxD;

    move-result-object v1

    invoke-virtual {v0, v1}, LxX;->b(LxD;)V

    .line 182
    :cond_1
    invoke-virtual {p1}, Lxo;->b()I

    move-result v0

    invoke-virtual {p1}, Lxo;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LwZ;->a(II)V

    .line 183
    return-void
.end method

.method a(Lxs;)V
    .locals 2

    .prologue
    .line 359
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    iput-object p1, p0, LwZ;->g:Lxs;

    .line 361
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, LwZ;->a:Lxa;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, LwZ;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    monitor-exit v1

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LwZ;->k:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, LwZ;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v1, p0, LwZ;->a:Lxa;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, LwZ;->k:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 134
    monitor-exit v1

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, LwZ;->k:Ljava/lang/Object;

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, LwZ;->d:Z

    return v0
.end method

.method public c()LxD;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, LwZ;->b:LxD;

    return-object v0
.end method

.method public d()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LwZ;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, LwZ;->e:Lyh;

    if-eqz v0, :cond_0

    iget-object v0, p0, LwZ;->e:Lyh;

    invoke-virtual {v0}, Lyh;->f()Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, LwZ;->f:Lzl;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, LwZ;->h:J

    .line 312
    return-void
.end method

.method h()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, LwZ;->f:Lzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, LwZ;->f:Lzl;

    invoke-virtual {v0}, Lzl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()J
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, LwZ;->f:Lzl;

    if-nez v0, :cond_0

    iget-wide v0, p0, LwZ;->h:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, LwZ;->f:Lzl;

    invoke-virtual {v0}, Lzl;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public j()Lxh;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, LwZ;->i:Lxh;

    return-object v0
.end method

.method k()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, LwZ;->f:Lzl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lxs;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, LwZ;->g:Lxs;

    return-object v0
.end method

.method m()V
    .locals 1

    .prologue
    .line 374
    iget v0, p0, LwZ;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwZ;->j:I

    .line 375
    return-void
.end method

.method n()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, LwZ;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->a:LwD;

    iget-object v1, v1, LwD;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->a:LwD;

    iget v1, v1, LwD;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LwZ;->b:LxD;

    iget-object v1, v1, LxD;->c:Ljava/net/InetSocketAddress;

    .line 440
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LwZ;->i:Lxh;

    if-eqz v0, :cond_0

    iget-object v0, p0, LwZ;->i:Lxh;

    .line 442
    invoke-virtual {v0}, Lxh;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LwZ;->g:Lxs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
