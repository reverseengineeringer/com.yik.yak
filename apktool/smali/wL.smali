.class final LwL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lxi;

.field private final c:Ljava/lang/String;

.field private final d:Lxs;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lxi;

.field private final h:Lxh;


# direct methods
.method public constructor <init>(LKl;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    :try_start_0
    invoke-static {p1}, LKa;->a(LKl;)LJT;

    move-result-object v2

    .line 483
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LwL;->a:Ljava/lang/String;

    .line 484
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LwL;->c:Ljava/lang/String;

    .line 485
    new-instance v3, Lxk;

    invoke-direct {v3}, Lxk;-><init>()V

    .line 486
    invoke-static {v2}, LwF;->a(LJT;)I

    move-result v4

    move v1, v0

    .line 487
    :goto_0
    if-ge v1, v4, :cond_0

    .line 488
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lxk;->a(Ljava/lang/String;)Lxk;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {v3}, Lxk;->a()Lxi;

    move-result-object v1

    iput-object v1, p0, LwL;->b:Lxi;

    .line 492
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LyE;->a(Ljava/lang/String;)LyE;

    move-result-object v1

    .line 493
    iget-object v3, v1, LyE;->a:Lxs;

    iput-object v3, p0, LwL;->d:Lxs;

    .line 494
    iget v3, v1, LyE;->b:I

    iput v3, p0, LwL;->e:I

    .line 495
    iget-object v1, v1, LyE;->c:Ljava/lang/String;

    iput-object v1, p0, LwL;->f:Ljava/lang/String;

    .line 496
    new-instance v1, Lxk;

    invoke-direct {v1}, Lxk;-><init>()V

    .line 497
    invoke-static {v2}, LwF;->a(LJT;)I

    move-result v3

    .line 498
    :goto_1
    if-ge v0, v3, :cond_1

    .line 499
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lxk;->a(Ljava/lang/String;)Lxk;

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {v1}, Lxk;->a()Lxi;

    move-result-object v0

    iput-object v0, p0, LwL;->g:Lxi;

    .line 503
    invoke-direct {p0}, LwL;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

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

    invoke-interface {p1}, LKl;->close()V

    throw v0

    .line 508
    :cond_2
    :try_start_1
    invoke-interface {v2}, LJT;->q()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-direct {p0, v2}, LwL;->a(LJT;)Ljava/util/List;

    move-result-object v1

    .line 510
    invoke-direct {p0, v2}, LwL;->a(LJT;)Ljava/util/List;

    move-result-object v2

    .line 511
    invoke-static {v0, v1, v2}, Lxh;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lxh;

    move-result-object v0

    iput-object v0, p0, LwL;->h:Lxh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :goto_2
    invoke-interface {p1}, LKl;->close()V

    .line 518
    return-void

    .line 513
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, LwL;->h:Lxh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Lxz;)V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    invoke-virtual {p1}, Lxz;->a()Lxt;

    move-result-object v0

    invoke-virtual {v0}, Lxt;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwL;->a:Ljava/lang/String;

    .line 522
    invoke-static {p1}, Lyx;->c(Lxz;)Lxi;

    move-result-object v0

    iput-object v0, p0, LwL;->b:Lxi;

    .line 523
    invoke-virtual {p1}, Lxz;->a()Lxt;

    move-result-object v0

    invoke-virtual {v0}, Lxt;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwL;->c:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Lxz;->b()Lxs;

    move-result-object v0

    iput-object v0, p0, LwL;->d:Lxs;

    .line 525
    invoke-virtual {p1}, Lxz;->c()I

    move-result v0

    iput v0, p0, LwL;->e:I

    .line 526
    invoke-virtual {p1}, Lxz;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwL;->f:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Lxz;->g()Lxi;

    move-result-object v0

    iput-object v0, p0, LwL;->g:Lxi;

    .line 528
    invoke-virtual {p1}, Lxz;->f()Lxh;

    move-result-object v0

    iput-object v0, p0, LwL;->h:Lxh;

    .line 529
    return-void
.end method

.method private a(LJT;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJT;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {p1}, LwF;->a(LJT;)I

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
    invoke-interface {p1}, LJT;->q()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-static {v4}, LJU;->b(Ljava/lang/String;)LJU;

    move-result-object v4

    invoke-virtual {v4}, LJU;->f()[B

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

.method private a(LJS;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJS;",
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

    invoke-interface {p1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    .line 594
    const/16 v0, 0xa

    invoke-interface {p1, v0}, LJS;->g(I)LJS;

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
    invoke-static {v0}, LJU;->a([B)LJU;

    move-result-object v0

    invoke-virtual {v0}, LJU;->b()Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-interface {p1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    .line 599
    const/16 v0, 0xa

    invoke-interface {p1, v0}, LJS;->g(I)LJS;
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
    iget-object v0, p0, LwL;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lxt;LxL;)Lxz;
    .locals 5

    .prologue
    .line 613
    iget-object v0, p0, LwL;->g:Lxi;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, LwL;->g:Lxi;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    new-instance v2, Lxv;

    invoke-direct {v2}, Lxv;-><init>()V

    iget-object v3, p0, LwL;->a:Ljava/lang/String;

    .line 616
    invoke-virtual {v2, v3}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v2

    iget-object v3, p0, LwL;->c:Ljava/lang/String;

    const/4 v4, 0x0

    .line 617
    invoke-virtual {v2, v3, v4}, Lxv;->a(Ljava/lang/String;Lxw;)Lxv;

    move-result-object v2

    iget-object v3, p0, LwL;->b:Lxi;

    .line 618
    invoke-virtual {v2, v3}, Lxv;->a(Lxi;)Lxv;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Lxv;->b()Lxt;

    move-result-object v2

    .line 620
    new-instance v3, LxB;

    invoke-direct {v3}, LxB;-><init>()V

    .line 621
    invoke-virtual {v3, v2}, LxB;->a(Lxt;)LxB;

    move-result-object v2

    iget-object v3, p0, LwL;->d:Lxs;

    .line 622
    invoke-virtual {v2, v3}, LxB;->a(Lxs;)LxB;

    move-result-object v2

    iget v3, p0, LwL;->e:I

    .line 623
    invoke-virtual {v2, v3}, LxB;->a(I)LxB;

    move-result-object v2

    iget-object v3, p0, LwL;->f:Ljava/lang/String;

    .line 624
    invoke-virtual {v2, v3}, LxB;->a(Ljava/lang/String;)LxB;

    move-result-object v2

    iget-object v3, p0, LwL;->g:Lxi;

    .line 625
    invoke-virtual {v2, v3}, LxB;->a(Lxi;)LxB;

    move-result-object v2

    new-instance v3, LwJ;

    invoke-direct {v3, p2, v0, v1}, LwJ;-><init>(LxL;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2, v3}, LxB;->a(LxC;)LxB;

    move-result-object v0

    iget-object v1, p0, LwL;->h:Lxh;

    .line 627
    invoke-virtual {v0, v1}, LxB;->a(Lxh;)LxB;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, LxB;->a()Lxz;

    move-result-object v0

    return-object v0
.end method

.method public a(LxI;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0xa

    .line 532
    invoke-virtual {p1, v0}, LxI;->a(I)LKk;

    move-result-object v1

    invoke-static {v1}, LKa;->a(LKk;)LJS;

    move-result-object v2

    .line 534
    iget-object v1, p0, LwL;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 535
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 536
    iget-object v1, p0, LwL;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 537
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 538
    iget-object v1, p0, LwL;->b:Lxi;

    invoke-virtual {v1}, Lxi;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 539
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 540
    iget-object v1, p0, LwL;->b:Lxi;

    invoke-virtual {v1}, Lxi;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 541
    iget-object v4, p0, LwL;->b:Lxi;

    invoke-virtual {v4, v1}, Lxi;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, LJS;->b(Ljava/lang/String;)LJS;

    .line 542
    const-string v4, ": "

    invoke-interface {v2, v4}, LJS;->b(Ljava/lang/String;)LJS;

    .line 543
    iget-object v4, p0, LwL;->b:Lxi;

    invoke-virtual {v4, v1}, Lxi;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, LJS;->b(Ljava/lang/String;)LJS;

    .line 544
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_0
    new-instance v1, LyE;

    iget-object v3, p0, LwL;->d:Lxs;

    iget v4, p0, LwL;->e:I

    iget-object v5, p0, LwL;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, LyE;-><init>(Lxs;ILjava/lang/String;)V

    invoke-virtual {v1}, LyE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 548
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 549
    iget-object v1, p0, LwL;->g:Lxi;

    invoke-virtual {v1}, Lxi;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 550
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 551
    iget-object v1, p0, LwL;->g:Lxi;

    invoke-virtual {v1}, Lxi;->a()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 552
    iget-object v3, p0, LwL;->g:Lxi;

    invoke-virtual {v3, v0}, Lxi;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LJS;->b(Ljava/lang/String;)LJS;

    .line 553
    const-string v3, ": "

    invoke-interface {v2, v3}, LJS;->b(Ljava/lang/String;)LJS;

    .line 554
    iget-object v3, p0, LwL;->g:Lxi;

    invoke-virtual {v3, v0}, Lxi;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LJS;->b(Ljava/lang/String;)LJS;

    .line 555
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_1
    invoke-direct {p0}, LwL;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 560
    iget-object v0, p0, LwL;->h:Lxh;

    invoke-virtual {v0}, Lxh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, LJS;->b(Ljava/lang/String;)LJS;

    .line 561
    invoke-interface {v2, v6}, LJS;->g(I)LJS;

    .line 562
    iget-object v0, p0, LwL;->h:Lxh;

    invoke-virtual {v0}, Lxh;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, LwL;->a(LJS;Ljava/util/List;)V

    .line 563
    iget-object v0, p0, LwL;->h:Lxh;

    invoke-virtual {v0}, Lxh;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, LwL;->a(LJS;Ljava/util/List;)V

    .line 565
    :cond_2
    invoke-interface {v2}, LJS;->close()V

    .line 566
    return-void
.end method

.method public a(Lxt;Lxz;)Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, LwL;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lxt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LwL;->c:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Lxt;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LwL;->b:Lxi;

    .line 609
    invoke-static {p2, v0, p1}, Lyx;->a(Lxz;Lxi;Lxt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
