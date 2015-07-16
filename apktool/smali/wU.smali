.class final LwU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lxs;

.field private final c:Ljava/lang/String;

.field private final d:LxC;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lxs;

.field private final h:Lxr;


# direct methods
.method public constructor <init>(LKT;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    :try_start_0
    invoke-static {p1}, LKI;->a(LKT;)LKB;

    move-result-object v2

    .line 483
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LwU;->a:Ljava/lang/String;

    .line 484
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LwU;->c:Ljava/lang/String;

    .line 485
    new-instance v3, Lxu;

    invoke-direct {v3}, Lxu;-><init>()V

    .line 486
    invoke-static {v2}, LwO;->a(LKB;)I

    move-result v4

    move v1, v0

    .line 487
    :goto_0
    if-ge v1, v4, :cond_0

    .line 488
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lxu;->a(Ljava/lang/String;)Lxu;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {v3}, Lxu;->a()Lxs;

    move-result-object v1

    iput-object v1, p0, LwU;->b:Lxs;

    .line 492
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LyO;->a(Ljava/lang/String;)LyO;

    move-result-object v1

    .line 493
    iget-object v3, v1, LyO;->a:LxC;

    iput-object v3, p0, LwU;->d:LxC;

    .line 494
    iget v3, v1, LyO;->b:I

    iput v3, p0, LwU;->e:I

    .line 495
    iget-object v1, v1, LyO;->c:Ljava/lang/String;

    iput-object v1, p0, LwU;->f:Ljava/lang/String;

    .line 496
    new-instance v1, Lxu;

    invoke-direct {v1}, Lxu;-><init>()V

    .line 497
    invoke-static {v2}, LwO;->a(LKB;)I

    move-result v3

    .line 498
    :goto_1
    if-ge v0, v3, :cond_1

    .line 499
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lxu;->a(Ljava/lang/String;)Lxu;

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {v1}, Lxu;->a()Lxs;

    move-result-object v0

    iput-object v0, p0, LwU;->g:Lxs;

    .line 503
    invoke-direct {p0}, LwU;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 506
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :catchall_0
    move-exception v0

    invoke-interface {p1}, LKT;->close()V

    throw v0

    .line 508
    :cond_2
    :try_start_1
    invoke-interface {v2}, LKB;->q()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-direct {p0, v2}, LwU;->a(LKB;)Ljava/util/List;

    move-result-object v1

    .line 510
    invoke-direct {p0, v2}, LwU;->a(LKB;)Ljava/util/List;

    move-result-object v2

    .line 511
    invoke-static {v0, v1, v2}, Lxr;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lxr;

    move-result-object v0

    iput-object v0, p0, LwU;->h:Lxr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :goto_2
    invoke-interface {p1}, LKT;->close()V

    .line 518
    return-void

    .line 513
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, LwU;->h:Lxr;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(LxJ;)V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    invoke-virtual {p1}, LxJ;->a()LxD;

    move-result-object v0

    invoke-virtual {v0}, LxD;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwU;->a:Ljava/lang/String;

    .line 522
    invoke-static {p1}, LyH;->c(LxJ;)Lxs;

    move-result-object v0

    iput-object v0, p0, LwU;->b:Lxs;

    .line 523
    invoke-virtual {p1}, LxJ;->a()LxD;

    move-result-object v0

    invoke-virtual {v0}, LxD;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwU;->c:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, LxJ;->b()LxC;

    move-result-object v0

    iput-object v0, p0, LwU;->d:LxC;

    .line 525
    invoke-virtual {p1}, LxJ;->c()I

    move-result v0

    iput v0, p0, LwU;->e:I

    .line 526
    invoke-virtual {p1}, LxJ;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwU;->f:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, LxJ;->g()Lxs;

    move-result-object v0

    iput-object v0, p0, LwU;->g:Lxs;

    .line 528
    invoke-virtual {p1}, LxJ;->f()Lxr;

    move-result-object v0

    iput-object v0, p0, LwU;->h:Lxr;

    .line 529
    return-void
.end method

.method private a(LKB;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKB;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {p1}, LwO;->a(LKB;)I

    move-result v2

    .line 574
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 584
    :cond_0
    return-object v0

    .line 577
    :cond_1
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 580
    invoke-interface {p1}, LKB;->q()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-static {v4}, LKC;->b(Ljava/lang/String;)LKC;

    move-result-object v4

    invoke-virtual {v4}, LKC;->f()[B

    move-result-object v4

    .line 582
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(LKA;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKA;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LKA;->b(Ljava/lang/String;)LKA;

    .line 594
    const/16 v0, 0xa

    invoke-interface {p1, v0}, LKA;->g(I)LKA;

    .line 595
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 596
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 597
    invoke-static {v0}, LKC;->a([B)LKC;

    move-result-object v0

    invoke-virtual {v0}, LKC;->b()Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-interface {p1, v0}, LKA;->b(Ljava/lang/String;)LKA;

    .line 599
    const/16 v0, 0xa

    invoke-interface {p1, v0}, LKA;->g(I)LKA;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 604
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, LwU;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(LxD;LxV;)LxJ;
    .locals 5

    .prologue
    .line 613
    iget-object v0, p0, LwU;->g:Lxs;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lxs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, LwU;->g:Lxs;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lxs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    new-instance v2, LxF;

    invoke-direct {v2}, LxF;-><init>()V

    iget-object v3, p0, LwU;->a:Ljava/lang/String;

    .line 616
    invoke-virtual {v2, v3}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v2

    iget-object v3, p0, LwU;->c:Ljava/lang/String;

    const/4 v4, 0x0

    .line 617
    invoke-virtual {v2, v3, v4}, LxF;->a(Ljava/lang/String;LxG;)LxF;

    move-result-object v2

    iget-object v3, p0, LwU;->b:Lxs;

    .line 618
    invoke-virtual {v2, v3}, LxF;->a(Lxs;)LxF;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, LxF;->b()LxD;

    move-result-object v2

    .line 620
    new-instance v3, LxL;

    invoke-direct {v3}, LxL;-><init>()V

    .line 621
    invoke-virtual {v3, v2}, LxL;->a(LxD;)LxL;

    move-result-object v2

    iget-object v3, p0, LwU;->d:LxC;

    .line 622
    invoke-virtual {v2, v3}, LxL;->a(LxC;)LxL;

    move-result-object v2

    iget v3, p0, LwU;->e:I

    .line 623
    invoke-virtual {v2, v3}, LxL;->a(I)LxL;

    move-result-object v2

    iget-object v3, p0, LwU;->f:Ljava/lang/String;

    .line 624
    invoke-virtual {v2, v3}, LxL;->a(Ljava/lang/String;)LxL;

    move-result-object v2

    iget-object v3, p0, LwU;->g:Lxs;

    .line 625
    invoke-virtual {v2, v3}, LxL;->a(Lxs;)LxL;

    move-result-object v2

    new-instance v3, LwS;

    invoke-direct {v3, p2, v0, v1}, LwS;-><init>(LxV;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2, v3}, LxL;->a(LxM;)LxL;

    move-result-object v0

    iget-object v1, p0, LwU;->h:Lxr;

    .line 627
    invoke-virtual {v0, v1}, LxL;->a(Lxr;)LxL;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, LxL;->a()LxJ;

    move-result-object v0

    return-object v0
.end method

.method public a(LxS;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0xa

    .line 532
    invoke-virtual {p1, v0}, LxS;->a(I)LKS;

    move-result-object v1

    invoke-static {v1}, LKI;->a(LKS;)LKA;

    move-result-object v2

    .line 534
    iget-object v1, p0, LwU;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, LKA;->b(Ljava/lang/String;)LKA;

    .line 535
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 536
    iget-object v1, p0, LwU;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, LKA;->b(Ljava/lang/String;)LKA;

    .line 537
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 538
    iget-object v1, p0, LwU;->b:Lxs;

    invoke-virtual {v1}, Lxs;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, LKA;->b(Ljava/lang/String;)LKA;

    .line 539
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 540
    iget-object v1, p0, LwU;->b:Lxs;

    invoke-virtual {v1}, Lxs;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 541
    iget-object v4, p0, LwU;->b:Lxs;

    invoke-virtual {v4, v1}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, LKA;->b(Ljava/lang/String;)LKA;

    .line 542
    const-string v4, ": "

    invoke-interface {v2, v4}, LKA;->b(Ljava/lang/String;)LKA;

    .line 543
    iget-object v4, p0, LwU;->b:Lxs;

    invoke-virtual {v4, v1}, Lxs;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, LKA;->b(Ljava/lang/String;)LKA;

    .line 544
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_0
    new-instance v1, LyO;

    iget-object v3, p0, LwU;->d:LxC;

    iget v4, p0, LwU;->e:I

    iget-object v5, p0, LwU;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, LyO;-><init>(LxC;ILjava/lang/String;)V

    invoke-virtual {v1}, LyO;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, LKA;->b(Ljava/lang/String;)LKA;

    .line 548
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 549
    iget-object v1, p0, LwU;->g:Lxs;

    invoke-virtual {v1}, Lxs;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, LKA;->b(Ljava/lang/String;)LKA;

    .line 550
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 551
    iget-object v1, p0, LwU;->g:Lxs;

    invoke-virtual {v1}, Lxs;->a()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 552
    iget-object v3, p0, LwU;->g:Lxs;

    invoke-virtual {v3, v0}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LKA;->b(Ljava/lang/String;)LKA;

    .line 553
    const-string v3, ": "

    invoke-interface {v2, v3}, LKA;->b(Ljava/lang/String;)LKA;

    .line 554
    iget-object v3, p0, LwU;->g:Lxs;

    invoke-virtual {v3, v0}, Lxs;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LKA;->b(Ljava/lang/String;)LKA;

    .line 555
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_1
    invoke-direct {p0}, LwU;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 560
    iget-object v0, p0, LwU;->h:Lxr;

    invoke-virtual {v0}, Lxr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, LKA;->b(Ljava/lang/String;)LKA;

    .line 561
    invoke-interface {v2, v6}, LKA;->g(I)LKA;

    .line 562
    iget-object v0, p0, LwU;->h:Lxr;

    invoke-virtual {v0}, Lxr;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, LwU;->a(LKA;Ljava/util/List;)V

    .line 563
    iget-object v0, p0, LwU;->h:Lxr;

    invoke-virtual {v0}, Lxr;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, LwU;->a(LKA;Ljava/util/List;)V

    .line 565
    :cond_2
    invoke-interface {v2}, LKA;->close()V

    .line 566
    return-void
.end method

.method public a(LxD;LxJ;)Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, LwU;->a:Ljava/lang/String;

    invoke-virtual {p1}, LxD;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LwU;->c:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, LxD;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LwU;->b:Lxs;

    .line 609
    invoke-static {p2, v0, p1}, LyH;->a(LxJ;Lxs;LxD;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
