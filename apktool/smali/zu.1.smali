.class final Lzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LyW;


# instance fields
.field private final a:LKA;

.field private final b:LKx;

.field private final c:LKA;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(LKA;Z)V
    .locals 3

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lzu;->a:LKA;

    .line 296
    iput-boolean p2, p0, Lzu;->d:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object v1, Lzs;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, LKx;

    invoke-direct {v1}, LKx;-><init>()V

    iput-object v1, p0, Lzu;->b:LKx;

    .line 301
    new-instance v1, LKD;

    iget-object v2, p0, Lzu;->b:LKx;

    invoke-direct {v1, v2, v0}, LKD;-><init>(LKS;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, LKI;->a(LKS;)LKA;

    move-result-object v0

    iput-object v0, p0, Lzu;->c:LKA;

    .line 302
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lzu;->b:LKx;

    invoke-virtual {v0}, LKx;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lzu;->c:LKA;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 411
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 412
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    iget-object v0, v0, LyX;->h:LKC;

    .line 413
    iget-object v3, p0, Lzu;->c:LKA;

    invoke-virtual {v0}, LKC;->e()I

    move-result v4

    invoke-interface {v3, v4}, LKA;->e(I)LKA;

    .line 414
    iget-object v3, p0, Lzu;->c:LKA;

    invoke-interface {v3, v0}, LKA;->b(LKC;)LKA;

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    iget-object v0, v0, LyX;->i:LKC;

    .line 416
    iget-object v3, p0, Lzu;->c:LKA;

    invoke-virtual {v0}, LKC;->e()I

    move-result v4

    invoke-interface {v3, v4}, LKA;->e(I)LKA;

    .line 417
    iget-object v3, p0, Lzu;->c:LKA;

    invoke-interface {v3, v0}, LKA;->b(LKC;)LKA;

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lzu;->c:LKA;

    invoke-interface {v0}, LKA;->a()V

    .line 420
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    .prologue
    .line 316
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method a(IILKx;I)V
    .locals 4

    .prologue
    .line 397
    iget-boolean v0, p0, Lzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    iget-object v0, p0, Lzu;->a:LKA;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 402
    iget-object v0, p0, Lzu;->a:LKA;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 403
    if-lez p4, :cond_2

    .line 404
    iget-object v0, p0, Lzu;->a:LKA;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, LKA;->a_(LKx;J)V

    .line 406
    :cond_2
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 474
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    iget-object v0, p0, Lzu;->a:LKA;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 481
    iget-object v0, p0, Lzu;->a:LKA;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 482
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0, p1}, LKA;->e(I)LKA;

    .line 483
    iget-object v0, p0, Lzu;->a:LKA;

    long-to-int v1, p2

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 484
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILyT;)V
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 374
    :cond_0
    :try_start_1
    iget v0, p2, LyT;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 378
    :cond_1
    iget-object v0, p0, Lzu;->a:LKA;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 379
    iget-object v0, p0, Lzu;->a:LKA;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 380
    iget-object v0, p0, Lzu;->a:LKA;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 381
    iget-object v0, p0, Lzu;->a:LKA;

    iget v1, p2, LyT;->t:I

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 382
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILyT;[B)V
    .locals 2

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_0
    :try_start_1
    iget v0, p2, LyT;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    iget-object v0, p0, Lzu;->a:LKA;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 464
    iget-object v0, p0, Lzu;->a:LKA;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 465
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0, p1}, LKA;->e(I)LKA;

    .line 466
    iget-object v0, p0, Lzu;->a:LKA;

    iget v1, p2, LyT;->u:I

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 467
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    monitor-exit p0

    return-void
.end method

.method public a(Lzr;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public declared-synchronized a(ZII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 442
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lzu;->e:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lzu;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    .line 444
    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 443
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 448
    :cond_3
    iget-object v0, p0, Lzu;->a:LKA;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 449
    iget-object v0, p0, Lzu;->a:LKA;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 450
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0, p2}, LKA;->e(I)LKA;

    .line 451
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILKx;I)V
    .locals 1

    .prologue
    .line 391
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 392
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lzu;->a(IILKx;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/4 v0, 0x0

    .line 326
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lzu;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lzu;->a(Ljava/util/List;)V

    .line 328
    const-wide/16 v2, 0xa

    iget-object v1, p0, Lzu;->b:LKx;

    invoke-virtual {v1}, LKx;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 330
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :cond_1
    or-int/2addr v0, v1

    .line 333
    iget-object v1, p0, Lzu;->a:LKA;

    const v3, -0x7ffcffff

    invoke-interface {v1, v3}, LKA;->e(I)LKA;

    .line 334
    iget-object v1, p0, Lzu;->a:LKA;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, LKA;->e(I)LKA;

    .line 335
    iget-object v0, p0, Lzu;->a:LKA;

    and-int v1, p3, v6

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 336
    iget-object v0, p0, Lzu;->a:LKA;

    and-int v1, p4, v6

    invoke-interface {v0, v1}, LKA;->e(I)LKA;

    .line 337
    iget-object v0, p0, Lzu;->a:LKA;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LKA;->f(I)LKA;

    .line 338
    iget-object v0, p0, Lzu;->a:LKA;

    iget-object v1, p0, Lzu;->b:LKx;

    invoke-interface {v0, v1}, LKA;->a(LKT;)J

    .line 339
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :cond_2
    move v1, v0

    .line 330
    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lzr;)V
    .locals 5

    .prologue
    const v4, 0xffffff

    .line 423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lzr;->b()I

    move-result v0

    .line 427
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    .line 428
    iget-object v2, p0, Lzu;->a:LKA;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, LKA;->e(I)LKA;

    .line 429
    iget-object v2, p0, Lzu;->a:LKA;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, LKA;->e(I)LKA;

    .line 430
    iget-object v1, p0, Lzu;->a:LKA;

    invoke-interface {v1, v0}, LKA;->e(I)LKA;

    .line 431
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 432
    invoke-virtual {p1, v0}, Lzr;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p1, v0}, Lzr;->c(I)I

    move-result v1

    .line 434
    iget-object v2, p0, Lzu;->a:LKA;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, LKA;->e(I)LKA;

    .line 435
    iget-object v1, p0, Lzu;->a:LKA;

    invoke-virtual {p1, v0}, Lzr;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, LKA;->e(I)LKA;

    goto :goto_1

    .line 437
    :cond_2
    iget-object v0, p0, Lzu;->a:LKA;

    invoke-interface {v0}, LKA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lzu;->e:Z

    .line 489
    iget-object v0, p0, Lzu;->a:LKA;

    iget-object v1, p0, Lzu;->c:LKA;

    invoke-static {v0, v1}, Lyi;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
