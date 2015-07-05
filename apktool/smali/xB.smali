.class public LxB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lxt;

.field private b:Lxs;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lxh;

.field private f:Lxk;

.field private g:LxC;

.field private h:Lxz;

.field private i:Lxz;

.field private j:Lxz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, LxB;->c:I

    .line 234
    new-instance v0, Lxk;

    invoke-direct {v0}, Lxk;-><init>()V

    iput-object v0, p0, LxB;->f:Lxk;

    .line 235
    return-void
.end method

.method private constructor <init>(Lxz;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, LxB;->c:I

    .line 238
    invoke-static {p1}, Lxz;->a(Lxz;)Lxt;

    move-result-object v0

    iput-object v0, p0, LxB;->a:Lxt;

    .line 239
    invoke-static {p1}, Lxz;->b(Lxz;)Lxs;

    move-result-object v0

    iput-object v0, p0, LxB;->b:Lxs;

    .line 240
    invoke-static {p1}, Lxz;->c(Lxz;)I

    move-result v0

    iput v0, p0, LxB;->c:I

    .line 241
    invoke-static {p1}, Lxz;->d(Lxz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxB;->d:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lxz;->e(Lxz;)Lxh;

    move-result-object v0

    iput-object v0, p0, LxB;->e:Lxh;

    .line 243
    invoke-static {p1}, Lxz;->f(Lxz;)Lxi;

    move-result-object v0

    invoke-virtual {v0}, Lxi;->b()Lxk;

    move-result-object v0

    iput-object v0, p0, LxB;->f:Lxk;

    .line 244
    invoke-static {p1}, Lxz;->g(Lxz;)LxC;

    move-result-object v0

    iput-object v0, p0, LxB;->g:LxC;

    .line 245
    invoke-static {p1}, Lxz;->h(Lxz;)Lxz;

    move-result-object v0

    iput-object v0, p0, LxB;->h:Lxz;

    .line 246
    invoke-static {p1}, Lxz;->i(Lxz;)Lxz;

    move-result-object v0

    iput-object v0, p0, LxB;->i:Lxz;

    .line 247
    invoke-static {p1}, Lxz;->j(Lxz;)Lxz;

    move-result-object v0

    iput-object v0, p0, LxB;->j:Lxz;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lxz;LxA;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, LxB;-><init>(Lxz;)V

    return-void
.end method

.method static synthetic a(LxB;)Lxt;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->a:Lxt;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lxz;)V
    .locals 3

    .prologue
    .line 322
    invoke-static {p2}, Lxz;->g(Lxz;)LxC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-static {p2}, Lxz;->h(Lxz;)Lxz;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    invoke-static {p2}, Lxz;->i(Lxz;)Lxz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    invoke-static {p2}, Lxz;->j(Lxz;)Lxz;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    return-void
.end method

.method static synthetic b(LxB;)Lxs;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->b:Lxs;

    return-object v0
.end method

.method static synthetic c(LxB;)I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, LxB;->c:I

    return v0
.end method

.method static synthetic d(LxB;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lxz;)V
    .locals 2

    .prologue
    .line 340
    invoke-static {p1}, Lxz;->g(Lxz;)LxC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    return-void
.end method

.method static synthetic e(LxB;)Lxh;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->e:Lxh;

    return-object v0
.end method

.method static synthetic f(LxB;)Lxk;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->f:Lxk;

    return-object v0
.end method

.method static synthetic g(LxB;)LxC;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->g:LxC;

    return-object v0
.end method

.method static synthetic h(LxB;)Lxz;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->h:Lxz;

    return-object v0
.end method

.method static synthetic i(LxB;)Lxz;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->i:Lxz;

    return-object v0
.end method

.method static synthetic j(LxB;)Lxz;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxB;->j:Lxz;

    return-object v0
.end method


# virtual methods
.method public a(I)LxB;
    .locals 0

    .prologue
    .line 261
    iput p1, p0, LxB;->c:I

    .line 262
    return-object p0
.end method

.method public a(Ljava/lang/String;)LxB;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, LxB;->d:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LxB;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, LxB;->f:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->b(Ljava/lang/String;Ljava/lang/String;)Lxk;

    .line 281
    return-object p0
.end method

.method public a(LxC;)LxB;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, LxB;->g:LxC;

    .line 306
    return-object p0
.end method

.method public a(Lxh;)LxB;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, LxB;->e:Lxh;

    .line 272
    return-object p0
.end method

.method public a(Lxi;)LxB;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Lxi;->b()Lxk;

    move-result-object v0

    iput-object v0, p0, LxB;->f:Lxk;

    .line 301
    return-object p0
.end method

.method public a(Lxs;)LxB;
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, LxB;->b:Lxs;

    .line 257
    return-object p0
.end method

.method public a(Lxt;)LxB;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, LxB;->a:Lxt;

    .line 252
    return-object p0
.end method

.method public a(Lxz;)LxB;
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, LxB;->a(Ljava/lang/String;Lxz;)V

    .line 311
    :cond_0
    iput-object p1, p0, LxB;->h:Lxz;

    .line 312
    return-object p0
.end method

.method public a()Lxz;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, LxB;->a:Lxt;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, LxB;->b:Lxs;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, LxB;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LxB;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lxz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxz;-><init>(LxB;LxA;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)LxB;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, LxB;->f:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

    .line 290
    return-object p0
.end method

.method public b(Lxz;)LxB;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, LxB;->a(Ljava/lang/String;Lxz;)V

    .line 317
    :cond_0
    iput-object p1, p0, LxB;->i:Lxz;

    .line 318
    return-object p0
.end method

.method public c(Lxz;)LxB;
    .locals 0

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, LxB;->d(Lxz;)V

    .line 335
    :cond_0
    iput-object p1, p0, LxB;->j:Lxz;

    .line 336
    return-object p0
.end method
