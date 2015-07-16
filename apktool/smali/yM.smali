.class public final LyM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LwM;

.field private final b:Ljava/net/URI;

.field private final c:LxZ;

.field private final d:Lxy;

.field private final e:Lxj;

.field private final f:Lyh;

.field private final g:LxD;

.field private h:Ljava/net/Proxy;

.field private i:Ljava/net/InetSocketAddress;

.field private j:Lxl;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxl;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LxN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(LwM;Ljava/net/URI;Lxy;LxD;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LyM;->k:Ljava/util/List;

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LyM;->m:Ljava/util/List;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LyM;->o:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LyM;->q:Ljava/util/List;

    .line 83
    iput-object p1, p0, LyM;->a:LwM;

    .line 84
    iput-object p2, p0, LyM;->b:Ljava/net/URI;

    .line 85
    iput-object p3, p0, LyM;->d:Lxy;

    .line 86
    invoke-virtual {p3}, Lxy;->m()Lxj;

    move-result-object v0

    iput-object v0, p0, LyM;->e:Lxj;

    .line 87
    sget-object v0, LxW;->b:LxW;

    invoke-virtual {v0, p3}, LxW;->b(Lxy;)Lyh;

    move-result-object v0

    iput-object v0, p0, LyM;->f:Lyh;

    .line 88
    sget-object v0, LxW;->b:LxW;

    invoke-virtual {v0, p3}, LxW;->c(Lxy;)LxZ;

    move-result-object v0

    iput-object v0, p0, LyM;->c:LxZ;

    .line 89
    iput-object p4, p0, LyM;->g:LxD;

    .line 91
    invoke-virtual {p1}, LwM;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, LyM;->a(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 92
    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(LxD;Lxy;)LyM;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p0}, LxD;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p1}, Lxy;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lxy;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    .line 106
    invoke-virtual {p1}, Lxy;->k()Lxd;

    move-result-object v6

    .line 109
    :goto_0
    new-instance v0, LwM;

    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lyi;->a(Ljava/net/URL;)I

    move-result v2

    .line 110
    invoke-virtual {p1}, Lxy;->h()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 111
    invoke-virtual {p1}, Lxy;->l()LwN;

    move-result-object v7

    invoke-virtual {p1}, Lxy;->d()Ljava/net/Proxy;

    move-result-object v8

    invoke-virtual {p1}, Lxy;->s()Ljava/util/List;

    move-result-object v9

    .line 112
    invoke-virtual {p1}, Lxy;->t()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p1}, Lxy;->e()Ljava/net/ProxySelector;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, LwM;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lxd;LwN;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 114
    new-instance v1, LyM;

    invoke-virtual {p0}, LxD;->b()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1, p0}, LyM;-><init>(LwM;Ljava/net/URI;Lxy;LxD;)V

    return-object v1

    :cond_2
    move-object v5, v6

    move-object v4, v6

    goto :goto_0
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LyM;->m:Ljava/util/List;

    .line 251
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, LyM;->a:LwM;

    invoke-virtual {v0}, LwM;->a()Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v0, p0, LyM;->b:Ljava/net/URI;

    invoke-static {v0}, Lyi;->a(Ljava/net/URI;)I

    move-result v0

    .line 266
    :goto_0
    iget-object v3, p0, LyM;->c:LxZ;

    invoke-interface {v3, v1}, LxZ;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 267
    iget-object v6, p0, LyM;->m:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 256
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2

    .line 257
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_2
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 261
    invoke-static {v0}, LyM;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0

    .line 269
    :cond_3
    iput v2, p0, LyM;->n:I

    .line 270
    return-void
.end method

.method private a(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 2

    .prologue
    .line 212
    if-eqz p2, :cond_0

    .line 214
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LyM;->k:Ljava/util/List;

    .line 225
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LyM;->l:I

    .line 226
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LyM;->k:Ljava/util/List;

    .line 219
    iget-object v0, p0, LyM;->d:Lxy;

    invoke-virtual {v0}, Lxy;->e()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    iget-object v1, p0, LyM;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    :cond_1
    iget-object v0, p0, LyM;->k:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v0, p0, LyM;->k:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lxl;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, LyM;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lxl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 230
    iget v0, p0, LyM;->l:I

    iget-object v1, p0, LyM;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/net/Proxy;
    .locals 3

    .prologue
    .line 235
    invoke-direct {p0}, LyM;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyM;->a:LwM;

    invoke-virtual {v2}, LwM;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyM;->k:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, LyM;->k:Ljava/util/List;

    iget v1, p0, LyM;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LyM;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 240
    invoke-direct {p0, v0}, LyM;->a(Ljava/net/Proxy;)V

    .line 241
    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, LyM;->n:I

    iget-object v1, p0, LyM;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 297
    invoke-direct {p0}, LyM;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyM;->a:LwM;

    invoke-virtual {v2}, LwM;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyM;->m:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, LyM;->m:Ljava/util/List;

    iget v1, p0, LyM;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LyM;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 302
    invoke-direct {p0}, LyM;->g()V

    .line 303
    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LyM;->o:Ljava/util/List;

    .line 309
    iget-object v0, p0, LyM;->a:LwM;

    invoke-virtual {v0}, LwM;->c()Ljava/util/List;

    move-result-object v3

    .line 310
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    .line 311
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl;

    .line 312
    iget-object v5, p0, LyM;->g:LxD;

    invoke-virtual {v5}, LxD;->i()Z

    move-result v5

    invoke-virtual {v0}, Lxl;->a()Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 313
    iget-object v5, p0, LyM;->o:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 316
    :cond_1
    iput v2, p0, LyM;->p:I

    .line 317
    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, LyM;->p:I

    iget-object v1, p0, LyM;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Lxl;
    .locals 3

    .prologue
    .line 326
    invoke-direct {p0}, LyM;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyM;->a:LwM;

    invoke-virtual {v2}, LwM;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted connection specs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyM;->o:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, LyM;->o:Ljava/util/List;

    iget v1, p0, LyM;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LyM;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, LyM;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()LxN;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, LyM;->q:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxN;

    return-object v0
.end method


# virtual methods
.method public a(LyB;)Lxi;
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, LyM;->b()Lxi;

    move-result-object v0

    .line 131
    sget-object v1, LxW;->b:LxW;

    iget-object v2, p0, LyM;->d:Lxy;

    iget-object v3, p0, LyM;->g:LxD;

    invoke-virtual {v1, v2, v0, p1, v3}, LxW;->a(Lxy;Lxi;LyB;LxD;)V

    .line 132
    return-object v0
.end method

.method public a(Lxi;Ljava/io/IOException;)V
    .locals 6

    .prologue
    .line 185
    sget-object v0, LxW;->b:LxW;

    invoke-virtual {v0, p1}, LxW;->b(Lxi;)I

    move-result v0

    if-lez v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p1}, Lxi;->c()LxN;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, LxN;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, LyM;->a:LwM;

    invoke-virtual {v1}, LwM;->e()Ljava/net/ProxySelector;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, LyM;->a:LwM;

    invoke-virtual {v1}, LwM;->e()Ljava/net/ProxySelector;

    move-result-object v1

    iget-object v2, p0, LyM;->b:Ljava/net/URI;

    invoke-virtual {v0}, LxN;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 193
    :cond_2
    iget-object v1, p0, LyM;->f:Lyh;

    invoke-virtual {v1, v0}, Lyh;->a(LxN;)V

    .line 198
    instance-of v0, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljavax/net/ssl/SSLProtocolException;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    iget v0, p0, LyM;->p:I

    iget-object v1, p0, LyM;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v0, p0, LyM;->o:Ljava/util/List;

    iget v1, p0, LyM;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LyM;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxl;

    .line 202
    invoke-direct {p0, v4}, LyM;->a(Lxl;)Z

    move-result v5

    .line 203
    new-instance v0, LxN;

    iget-object v1, p0, LyM;->a:LwM;

    iget-object v2, p0, LyM;->h:Ljava/net/Proxy;

    iget-object v3, p0, LyM;->i:Ljava/net/InetSocketAddress;

    invoke-direct/range {v0 .. v5}, LxN;-><init>(LwM;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lxl;Z)V

    .line 205
    iget-object v1, p0, LyM;->f:Lyh;

    invoke-virtual {v1, v0}, Lyh;->a(LxN;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, LyM;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, LyM;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, LyM;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, LyM;->j()Z

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

.method b()Lxi;
    .locals 6

    .prologue
    .line 142
    :goto_0
    iget-object v0, p0, LyM;->e:Lxj;

    iget-object v1, p0, LyM;->a:LwM;

    invoke-virtual {v0, v1}, Lxj;->a(LwM;)Lxi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v1, p0, LyM;->g:LxD;

    invoke-virtual {v1}, LxD;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LxW;->b:LxW;

    invoke-virtual {v1, v0}, LxW;->c(Lxi;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_1
    return-object v0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lxi;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0}, LyM;->h()Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    invoke-direct {p0}, LyM;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 150
    invoke-direct {p0}, LyM;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
    invoke-direct {p0}, LyM;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 154
    :cond_3
    new-instance v0, Lxi;

    iget-object v1, p0, LyM;->e:Lxj;

    invoke-direct {p0}, LyM;->k()LxN;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lxi;-><init>(Lxj;LxN;)V

    goto :goto_1

    .line 156
    :cond_4
    invoke-direct {p0}, LyM;->d()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, LyM;->h:Ljava/net/Proxy;

    .line 158
    :cond_5
    invoke-direct {p0}, LyM;->f()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, LyM;->i:Ljava/net/InetSocketAddress;

    .line 160
    :cond_6
    invoke-direct {p0}, LyM;->i()Lxl;

    move-result-object v0

    iput-object v0, p0, LyM;->j:Lxl;

    .line 162
    iget-object v0, p0, LyM;->j:Lxl;

    invoke-direct {p0, v0}, LyM;->a(Lxl;)Z

    move-result v5

    .line 163
    new-instance v0, LxN;

    iget-object v1, p0, LyM;->a:LwM;

    iget-object v2, p0, LyM;->h:Ljava/net/Proxy;

    iget-object v3, p0, LyM;->i:Ljava/net/InetSocketAddress;

    iget-object v4, p0, LyM;->j:Lxl;

    invoke-direct/range {v0 .. v5}, LxN;-><init>(LwM;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lxl;Z)V

    .line 165
    iget-object v1, p0, LyM;->f:Lyh;

    invoke-virtual {v1, v0}, Lyh;->c(LxN;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    iget-object v1, p0, LyM;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, LyM;->b()Lxi;

    move-result-object v0

    goto :goto_1

    .line 171
    :cond_7
    new-instance v1, Lxi;

    iget-object v2, p0, LyM;->e:Lxj;

    invoke-direct {v1, v2, v0}, Lxi;-><init>(Lxj;LxN;)V

    move-object v0, v1

    goto :goto_1
.end method
