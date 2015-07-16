.class public LxL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LxD;

.field private b:LxC;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lxr;

.field private f:Lxu;

.field private g:LxM;

.field private h:LxJ;

.field private i:LxJ;

.field private j:LxJ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, LxL;->c:I

    .line 234
    new-instance v0, Lxu;

    invoke-direct {v0}, Lxu;-><init>()V

    iput-object v0, p0, LxL;->f:Lxu;

    .line 235
    return-void
.end method

.method private constructor <init>(LxJ;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, LxL;->c:I

    .line 238
    invoke-static {p1}, LxJ;->a(LxJ;)LxD;

    move-result-object v0

    iput-object v0, p0, LxL;->a:LxD;

    .line 239
    invoke-static {p1}, LxJ;->b(LxJ;)LxC;

    move-result-object v0

    iput-object v0, p0, LxL;->b:LxC;

    .line 240
    invoke-static {p1}, LxJ;->c(LxJ;)I

    move-result v0

    iput v0, p0, LxL;->c:I

    .line 241
    invoke-static {p1}, LxJ;->d(LxJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxL;->d:Ljava/lang/String;

    .line 242
    invoke-static {p1}, LxJ;->e(LxJ;)Lxr;

    move-result-object v0

    iput-object v0, p0, LxL;->e:Lxr;

    .line 243
    invoke-static {p1}, LxJ;->f(LxJ;)Lxs;

    move-result-object v0

    invoke-virtual {v0}, Lxs;->b()Lxu;

    move-result-object v0

    iput-object v0, p0, LxL;->f:Lxu;

    .line 244
    invoke-static {p1}, LxJ;->g(LxJ;)LxM;

    move-result-object v0

    iput-object v0, p0, LxL;->g:LxM;

    .line 245
    invoke-static {p1}, LxJ;->h(LxJ;)LxJ;

    move-result-object v0

    iput-object v0, p0, LxL;->h:LxJ;

    .line 246
    invoke-static {p1}, LxJ;->i(LxJ;)LxJ;

    move-result-object v0

    iput-object v0, p0, LxL;->i:LxJ;

    .line 247
    invoke-static {p1}, LxJ;->j(LxJ;)LxJ;

    move-result-object v0

    iput-object v0, p0, LxL;->j:LxJ;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(LxJ;LxK;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, LxL;-><init>(LxJ;)V

    return-void
.end method

.method static synthetic a(LxL;)LxD;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->a:LxD;

    return-object v0
.end method

.method private a(Ljava/lang/String;LxJ;)V
    .locals 3

    .prologue
    .line 322
    invoke-static {p2}, LxJ;->g(LxJ;)LxM;

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
    invoke-static {p2}, LxJ;->h(LxJ;)LxJ;

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
    invoke-static {p2}, LxJ;->i(LxJ;)LxJ;

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
    invoke-static {p2}, LxJ;->j(LxJ;)LxJ;

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

.method static synthetic b(LxL;)LxC;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->b:LxC;

    return-object v0
.end method

.method static synthetic c(LxL;)I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, LxL;->c:I

    return v0
.end method

.method static synthetic d(LxL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(LxJ;)V
    .locals 2

    .prologue
    .line 340
    invoke-static {p1}, LxJ;->g(LxJ;)LxM;

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

.method static synthetic e(LxL;)Lxr;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->e:Lxr;

    return-object v0
.end method

.method static synthetic f(LxL;)Lxu;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->f:Lxu;

    return-object v0
.end method

.method static synthetic g(LxL;)LxM;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->g:LxM;

    return-object v0
.end method

.method static synthetic h(LxL;)LxJ;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->h:LxJ;

    return-object v0
.end method

.method static synthetic i(LxL;)LxJ;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->i:LxJ;

    return-object v0
.end method

.method static synthetic j(LxL;)LxJ;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LxL;->j:LxJ;

    return-object v0
.end method


# virtual methods
.method public a()LxJ;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, LxL;->a:LxD;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, LxL;->b:LxC;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, LxL;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LxL;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, LxJ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LxJ;-><init>(LxL;LxK;)V

    return-object v0
.end method

.method public a(I)LxL;
    .locals 0

    .prologue
    .line 261
    iput p1, p0, LxL;->c:I

    .line 262
    return-object p0
.end method

.method public a(Ljava/lang/String;)LxL;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, LxL;->d:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LxL;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, LxL;->f:Lxu;

    invoke-virtual {v0, p1, p2}, Lxu;->b(Ljava/lang/String;Ljava/lang/String;)Lxu;

    .line 281
    return-object p0
.end method

.method public a(LxC;)LxL;
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, LxL;->b:LxC;

    .line 257
    return-object p0
.end method

.method public a(LxD;)LxL;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, LxL;->a:LxD;

    .line 252
    return-object p0
.end method

.method public a(LxJ;)LxL;
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, LxL;->a(Ljava/lang/String;LxJ;)V

    .line 311
    :cond_0
    iput-object p1, p0, LxL;->h:LxJ;

    .line 312
    return-object p0
.end method

.method public a(LxM;)LxL;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, LxL;->g:LxM;

    .line 306
    return-object p0
.end method

.method public a(Lxr;)LxL;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, LxL;->e:Lxr;

    .line 272
    return-object p0
.end method

.method public a(Lxs;)LxL;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Lxs;->b()Lxu;

    move-result-object v0

    iput-object v0, p0, LxL;->f:Lxu;

    .line 301
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)LxL;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, LxL;->f:Lxu;

    invoke-virtual {v0, p1, p2}, Lxu;->a(Ljava/lang/String;Ljava/lang/String;)Lxu;

    .line 290
    return-object p0
.end method

.method public b(LxJ;)LxL;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, LxL;->a(Ljava/lang/String;LxJ;)V

    .line 317
    :cond_0
    iput-object p1, p0, LxL;->i:LxJ;

    .line 318
    return-object p0
.end method

.method public c(LxJ;)LxL;
    .locals 0

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, LxL;->d(LxJ;)V

    .line 335
    :cond_0
    iput-object p1, p0, LxL;->j:LxJ;

    .line 336
    return-object p0
.end method
