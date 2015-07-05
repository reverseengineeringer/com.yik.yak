.class public Lxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxs;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxc;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:I

.field private final d:LxX;

.field private e:Lxg;

.field private f:Ljava/net/Proxy;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxs;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxc;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxl;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lxl;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/net/ProxySelector;

.field private l:Ljava/net/CookieHandler;

.field private m:LxN;

.field private n:LwF;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/HostnameVerifier;

.field private r:LwU;

.field private s:LwE;

.field private t:Lxa;

.field private u:LxP;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v5, [Lxs;

    sget-object v1, Lxs;->d:Lxs;

    aput-object v1, v0, v2

    sget-object v1, Lxs;->c:Lxs;

    aput-object v1, v0, v3

    sget-object v1, Lxs;->b:Lxs;

    aput-object v1, v0, v4

    invoke-static {v0}, LxY;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lxo;->a:Ljava/util/List;

    .line 56
    new-array v0, v5, [Lxc;

    sget-object v1, Lxc;->a:Lxc;

    aput-object v1, v0, v2

    sget-object v1, Lxc;->b:Lxc;

    aput-object v1, v0, v3

    sget-object v1, Lxc;->c:Lxc;

    aput-object v1, v0, v4

    invoke-static {v0}, LxY;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lxo;->b:Ljava/util/List;

    .line 60
    new-instance v0, Lxp;

    invoke-direct {v0}, Lxp;-><init>()V

    sput-object v0, LxM;->b:LxM;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxo;->i:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxo;->j:Ljava/util/List;

    .line 179
    iput-boolean v1, p0, Lxo;->v:Z

    .line 180
    iput-boolean v1, p0, Lxo;->w:Z

    .line 181
    iput-boolean v1, p0, Lxo;->x:Z

    .line 187
    new-instance v0, LxX;

    invoke-direct {v0}, LxX;-><init>()V

    iput-object v0, p0, Lxo;->d:LxX;

    .line 188
    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    iput-object v0, p0, Lxo;->e:Lxg;

    .line 189
    return-void
.end method

.method private constructor <init>(Lxo;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxo;->i:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxo;->j:Ljava/util/List;

    .line 179
    iput-boolean v1, p0, Lxo;->v:Z

    .line 180
    iput-boolean v1, p0, Lxo;->w:Z

    .line 181
    iput-boolean v1, p0, Lxo;->x:Z

    .line 192
    iget-object v0, p1, Lxo;->d:LxX;

    iput-object v0, p0, Lxo;->d:LxX;

    .line 193
    iget-object v0, p1, Lxo;->e:Lxg;

    iput-object v0, p0, Lxo;->e:Lxg;

    .line 194
    iget-object v0, p1, Lxo;->f:Ljava/net/Proxy;

    iput-object v0, p0, Lxo;->f:Ljava/net/Proxy;

    .line 195
    iget-object v0, p1, Lxo;->g:Ljava/util/List;

    iput-object v0, p0, Lxo;->g:Ljava/util/List;

    .line 196
    iget-object v0, p1, Lxo;->h:Ljava/util/List;

    iput-object v0, p0, Lxo;->h:Ljava/util/List;

    .line 197
    iget-object v0, p0, Lxo;->i:Ljava/util/List;

    iget-object v1, p1, Lxo;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object v0, p0, Lxo;->j:Ljava/util/List;

    iget-object v1, p1, Lxo;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v0, p1, Lxo;->k:Ljava/net/ProxySelector;

    iput-object v0, p0, Lxo;->k:Ljava/net/ProxySelector;

    .line 200
    iget-object v0, p1, Lxo;->l:Ljava/net/CookieHandler;

    iput-object v0, p0, Lxo;->l:Ljava/net/CookieHandler;

    .line 201
    iget-object v0, p1, Lxo;->n:LwF;

    iput-object v0, p0, Lxo;->n:LwF;

    .line 202
    iget-object v0, p0, Lxo;->n:LwF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxo;->n:LwF;

    iget-object v0, v0, LwF;->a:LxN;

    :goto_0
    iput-object v0, p0, Lxo;->m:LxN;

    .line 203
    iget-object v0, p1, Lxo;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lxo;->o:Ljavax/net/SocketFactory;

    .line 204
    iget-object v0, p1, Lxo;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lxo;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 205
    iget-object v0, p1, Lxo;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lxo;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 206
    iget-object v0, p1, Lxo;->r:LwU;

    iput-object v0, p0, Lxo;->r:LwU;

    .line 207
    iget-object v0, p1, Lxo;->s:LwE;

    iput-object v0, p0, Lxo;->s:LwE;

    .line 208
    iget-object v0, p1, Lxo;->t:Lxa;

    iput-object v0, p0, Lxo;->t:Lxa;

    .line 209
    iget-object v0, p1, Lxo;->u:LxP;

    iput-object v0, p0, Lxo;->u:LxP;

    .line 210
    iget-boolean v0, p1, Lxo;->v:Z

    iput-boolean v0, p0, Lxo;->v:Z

    .line 211
    iget-boolean v0, p1, Lxo;->w:Z

    iput-boolean v0, p0, Lxo;->w:Z

    .line 212
    iget-boolean v0, p1, Lxo;->x:Z

    iput-boolean v0, p0, Lxo;->x:Z

    .line 213
    iget v0, p1, Lxo;->y:I

    iput v0, p0, Lxo;->y:I

    .line 214
    iget v0, p1, Lxo;->z:I

    iput v0, p0, Lxo;->z:I

    .line 215
    iget v0, p1, Lxo;->A:I

    iput v0, p0, Lxo;->A:I

    .line 216
    return-void

    .line 202
    :cond_0
    iget-object v0, p1, Lxo;->m:LxN;

    goto :goto_0
.end method

.method static synthetic a(Lxo;)LxP;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lxo;->u:LxP;

    return-object v0
.end method

.method private declared-synchronized y()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    sget-object v0, Lxo;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 646
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 647
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 648
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lxo;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    :cond_0
    :try_start_2
    sget-object v0, Lxo;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 650
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lxo;->y:I

    return v0
.end method

.method public a(Lxt;)LwP;
    .locals 1

    .prologue
    .line 578
    new-instance v0, LwP;

    invoke-direct {v0, p0, p1}, LwP;-><init>(Lxo;Lxt;)V

    return-object v0
.end method

.method public final a(Ljava/net/Proxy;)Lxo;
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lxo;->f:Ljava/net/Proxy;

    .line 278
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lxo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lxs;",
            ">;)",
            "Lxo;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {p1}, LxY;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 530
    sget-object v1, Lxs;->b:Lxs;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    sget-object v1, Lxs;->a:Lxs;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols must not contain http/1.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_2
    invoke-static {v0}, LxY;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lxo;->g:Ljava/util/List;

    .line 540
    return-object p0
.end method

.method public final a(Ljavax/net/ssl/HostnameVerifier;)Lxo;
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lxo;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 376
    return-object p0
.end method

.method public final a(Ljavax/net/ssl/SSLSocketFactory;)Lxo;
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lxo;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 361
    return-object p0
.end method

.method public final a(LwF;)Lxo;
    .locals 1

    .prologue
    .line 330
    iput-object p1, p0, Lxo;->n:LwF;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lxo;->m:LxN;

    .line 332
    return-object p0
.end method

.method public final a(LwU;)Lxo;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lxo;->r:LwU;

    .line 391
    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    .prologue
    .line 224
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 227
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lxo;->y:I

    .line 229
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 447
    iput-boolean p1, p0, Lxo;->w:Z

    .line 448
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lxo;->z:I

    return v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    .prologue
    .line 242
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 245
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lxo;->z:I

    .line 247
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lxo;->A:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lxo;->x()Lxo;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lxo;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public final e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lxo;->k:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final f()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lxo;->l:Ljava/net/CookieHandler;

    return-object v0
.end method

.method final g()LxN;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lxo;->m:LxN;

    return-object v0
.end method

.method public final h()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lxo;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lxo;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lxo;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final k()LwU;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lxo;->r:LwU;

    return-object v0
.end method

.method public final l()LwE;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lxo;->s:LwE;

    return-object v0
.end method

.method public final m()Lxa;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lxo;->t:Lxa;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lxo;->v:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lxo;->w:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lxo;->x:Z

    return v0
.end method

.method final q()LxX;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lxo;->d:LxX;

    return-object v0
.end method

.method public final r()Lxg;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lxo;->e:Lxg;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lxs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lxo;->g:Ljava/util/List;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lxc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lxo;->h:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lxl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lxo;->i:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lxl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lxo;->j:Ljava/util/List;

    return-object v0
.end method

.method final w()Lxo;
    .locals 2

    .prologue
    .line 595
    new-instance v0, Lxo;

    invoke-direct {v0, p0}, Lxo;-><init>(Lxo;)V

    .line 596
    iget-object v1, v0, Lxo;->k:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 597
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lxo;->k:Ljava/net/ProxySelector;

    .line 599
    :cond_0
    iget-object v1, v0, Lxo;->l:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 600
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lxo;->l:Ljava/net/CookieHandler;

    .line 602
    :cond_1
    iget-object v1, v0, Lxo;->o:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 603
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lxo;->o:Ljavax/net/SocketFactory;

    .line 605
    :cond_2
    iget-object v1, v0, Lxo;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 606
    invoke-direct {p0}, Lxo;->y()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lxo;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 608
    :cond_3
    iget-object v1, v0, Lxo;->q:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 609
    sget-object v1, LzE;->a:LzE;

    iput-object v1, v0, Lxo;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 611
    :cond_4
    iget-object v1, v0, Lxo;->r:LwU;

    if-nez v1, :cond_5

    .line 612
    sget-object v1, LwU;->a:LwU;

    iput-object v1, v0, Lxo;->r:LwU;

    .line 614
    :cond_5
    iget-object v1, v0, Lxo;->s:LwE;

    if-nez v1, :cond_6

    .line 615
    sget-object v1, Lyb;->a:LwE;

    iput-object v1, v0, Lxo;->s:LwE;

    .line 617
    :cond_6
    iget-object v1, v0, Lxo;->t:Lxa;

    if-nez v1, :cond_7

    .line 618
    invoke-static {}, Lxa;->a()Lxa;

    move-result-object v1

    iput-object v1, v0, Lxo;->t:Lxa;

    .line 620
    :cond_7
    iget-object v1, v0, Lxo;->g:Ljava/util/List;

    if-nez v1, :cond_8

    .line 621
    sget-object v1, Lxo;->a:Ljava/util/List;

    iput-object v1, v0, Lxo;->g:Ljava/util/List;

    .line 623
    :cond_8
    iget-object v1, v0, Lxo;->h:Ljava/util/List;

    if-nez v1, :cond_9

    .line 624
    sget-object v1, Lxo;->b:Ljava/util/List;

    iput-object v1, v0, Lxo;->h:Ljava/util/List;

    .line 626
    :cond_9
    iget-object v1, v0, Lxo;->u:LxP;

    if-nez v1, :cond_a

    .line 627
    sget-object v1, LxP;->a:LxP;

    iput-object v1, v0, Lxo;->u:LxP;

    .line 629
    :cond_a
    return-object v0
.end method

.method public final x()Lxo;
    .locals 1

    .prologue
    .line 659
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 661
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
