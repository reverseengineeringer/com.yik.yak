.class final Lyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKS;


# instance fields
.field final synthetic a:Lyr;

.field private final b:[B

.field private c:Z


# direct methods
.method private constructor <init>(Lyr;)V
    .locals 1

    .prologue
    .line 306
    iput-object p1, p0, Lyu;->a:Lyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lyu;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xat
    .end array-data
.end method

.method synthetic constructor <init>(Lyr;Lys;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lyu;-><init>(Lyr;)V

    return-void
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 342
    const/16 v0, 0x10

    .line 344
    :cond_0
    iget-object v1, p0, Lyu;->b:[B

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lyr;->l()[B

    move-result-object v2

    const-wide/16 v4, 0xf

    and-long/2addr v4, p1

    long-to-int v3, v4

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 345
    const/4 v1, 0x4

    ushr-long/2addr p1, v1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lyu;->a:Lyr;

    invoke-static {v1}, Lyr;->a(Lyr;)LKA;

    move-result-object v1

    iget-object v2, p0, Lyu;->b:[B

    iget-object v3, p0, Lyu;->b:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v0, v3}, LKA;->c([BII)LKA;

    .line 347
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyu;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)LKA;

    move-result-object v0

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(LKx;J)V
    .locals 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lyu;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-direct {p0, p2, p3}, Lyu;->a(J)V

    .line 321
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)LKA;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LKA;->a_(LKx;J)V

    .line 322
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)LKA;

    move-result-object v0

    invoke-static {}, Lyr;->j()[B

    move-result-object v1

    invoke-interface {v0, v1}, LKA;->c([B)LKA;

    goto :goto_0
.end method

.method public b()LKU;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)LKA;

    move-result-object v0

    invoke-interface {v0}, LKA;->b()LKU;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyu;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lyu;->c:Z

    .line 333
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)LKA;

    move-result-object v0

    invoke-static {}, Lyr;->k()[B

    move-result-object v1

    invoke-interface {v0, v1}, LKA;->c([B)LKA;

    .line 334
    iget-object v0, p0, Lyu;->a:Lyr;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyr;->a(Lyr;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
