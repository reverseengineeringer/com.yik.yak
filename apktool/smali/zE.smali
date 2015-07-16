.class LzE;
.super LxY;
.source "SourceFile"

# interfaces
.implements LyV;


# instance fields
.field a:LyU;

.field final synthetic c:Lzv;


# direct methods
.method private constructor <init>(Lzv;)V
    .locals 4

    .prologue
    .line 562
    iput-object p1, p0, LzE;->c:Lzv;

    .line 563
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lzv;->a(Lzv;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lzv;Lzw;)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0, p1}, LzE;-><init>(Lzv;)V

    return-void
.end method

.method private a(Lzr;)V
    .locals 6

    .prologue
    .line 707
    invoke-static {}, Lzv;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, LzG;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, LzE;->c:Lzv;

    invoke-static {v5}, Lzv;->a(Lzv;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, LzG;-><init>(LzE;Ljava/lang/String;[Ljava/lang/Object;Lzr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 715
    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 1
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
    .line 776
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p2, p3}, Lzv;->a(Lzv;ILjava/util/List;)V

    .line 777
    return-void
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    .line 754
    if-nez p1, :cond_1

    .line 755
    iget-object v1, p0, LzE;->c:Lzv;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, LzE;->c:Lzv;

    iget-wide v2, v0, Lzv;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lzv;->d:J

    .line 757
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit v1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 760
    :cond_1
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-virtual {v0, p1}, Lzv;->a(I)LzH;

    move-result-object v1

    .line 761
    if-eqz v1, :cond_0

    .line 762
    monitor-enter v1

    .line 763
    :try_start_1
    invoke-virtual {v1, p2, p3}, LzH;->a(J)V

    .line 764
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public a(ILyT;)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p1}, Lzv;->a(Lzv;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p1, p2}, Lzv;->a(Lzv;ILyT;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-virtual {v0, p1}, Lzv;->b(I)LzH;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p2}, LzH;->c(LyT;)V

    goto :goto_0
.end method

.method public a(ILyT;LKC;)V
    .locals 5

    .prologue
    .line 734
    invoke-virtual {p3}, LKC;->e()I

    .line 739
    iget-object v1, p0, LzE;->c:Lzv;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0}, Lzv;->e(Lzv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, LzE;->c:Lzv;

    invoke-static {v2}, Lzv;->e(Lzv;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [LzH;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LzH;

    .line 741
    iget-object v2, p0, LzE;->c:Lzv;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lzv;->b(Lzv;Z)Z

    .line 742
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 746
    invoke-virtual {v3}, LzH;->a()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, LzH;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    sget-object v4, LyT;->k:LyT;

    invoke-virtual {v3, v4}, LzH;->c(LyT;)V

    .line 748
    iget-object v4, p0, LzE;->c:Lzv;

    invoke-virtual {v3}, LzH;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lzv;->b(I)LzH;

    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 751
    :cond_1
    return-void
.end method

.method public a(ZII)V
    .locals 3

    .prologue
    .line 722
    if-eqz p1, :cond_1

    .line 723
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p2}, Lzv;->c(Lzv;I)Lzo;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Lzo;->b()V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, LzE;->c:Lzv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lzv;->b(Lzv;ZIILzo;)V

    goto :goto_0
.end method

.method public a(ZILKB;I)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p2}, Lzv;->a(Lzv;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p2, p3, p4, p1}, Lzv;->a(Lzv;ILKB;IZ)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-virtual {v0, p2}, Lzv;->a(I)LzH;

    move-result-object v0

    .line 597
    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, LzE;->c:Lzv;

    sget-object v1, LyT;->c:LyT;

    invoke-virtual {v0, p2, v1}, Lzv;->a(ILyT;)V

    .line 599
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, LKB;->g(J)V

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {v0, p3, p4}, LzH;->a(LKB;I)V

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {v0}, LzH;->h()V

    goto :goto_0
.end method

.method public a(ZLzr;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 676
    .line 677
    const/4 v0, 0x0

    .line 678
    iget-object v6, p0, LzE;->c:Lzv;

    monitor-enter v6

    .line 679
    :try_start_0
    iget-object v1, p0, LzE;->c:Lzv;

    iget-object v1, v1, Lzv;->f:Lzr;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lzr;->e(I)I

    move-result v1

    .line 680
    if-eqz p1, :cond_0

    iget-object v2, p0, LzE;->c:Lzv;

    iget-object v2, v2, Lzv;->f:Lzr;

    invoke-virtual {v2}, Lzr;->a()V

    .line 681
    :cond_0
    iget-object v2, p0, LzE;->c:Lzv;

    iget-object v2, v2, Lzv;->f:Lzr;

    invoke-virtual {v2, p2}, Lzr;->a(Lzr;)V

    .line 682
    iget-object v2, p0, LzE;->c:Lzv;

    invoke-virtual {v2}, Lzv;->a()LxC;

    move-result-object v2

    sget-object v3, LxC;->d:LxC;

    if-ne v2, v3, :cond_1

    .line 683
    invoke-direct {p0, p2}, LzE;->a(Lzr;)V

    .line 685
    :cond_1
    iget-object v2, p0, LzE;->c:Lzv;

    iget-object v2, v2, Lzv;->f:Lzr;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lzr;->e(I)I

    move-result v2

    .line 686
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    if-eq v2, v1, :cond_5

    .line 687
    sub-int v1, v2, v1

    int-to-long v2, v1

    .line 688
    iget-object v1, p0, LzE;->c:Lzv;

    invoke-static {v1}, Lzv;->g(Lzv;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 689
    iget-object v1, p0, LzE;->c:Lzv;

    invoke-virtual {v1, v2, v3}, Lzv;->a(J)V

    .line 690
    iget-object v1, p0, LzE;->c:Lzv;

    const/4 v7, 0x1

    invoke-static {v1, v7}, Lzv;->a(Lzv;Z)Z

    .line 692
    :cond_2
    iget-object v1, p0, LzE;->c:Lzv;

    invoke-static {v1}, Lzv;->e(Lzv;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 693
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0}, Lzv;->e(Lzv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, LzE;->c:Lzv;

    invoke-static {v1}, Lzv;->e(Lzv;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [LzH;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LzH;

    move-object v1, v0

    .line 696
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    if-eqz v1, :cond_3

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 698
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 699
    monitor-enter v5

    .line 700
    :try_start_1
    invoke-virtual {v5, v2, v3}, LzH;->a(J)V

    .line 701
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 701
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 704
    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    move-wide v2, v4

    goto :goto_0
.end method

.method public a(ZZIILjava/util/List;LyY;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;",
            "LyY;",
            ")V"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p3}, Lzv;->a(Lzv;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0, p3, p5, p2}, Lzv;->a(Lzv;ILjava/util/List;Z)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v6, p0, LzE;->c:Lzv;

    monitor-enter v6

    .line 617
    :try_start_0
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0}, Lzv;->b(Lzv;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 619
    :cond_2
    :try_start_1
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-virtual {v0, p3}, Lzv;->a(I)LzH;

    move-result-object v0

    .line 621
    if-nez v0, :cond_6

    .line 623
    invoke-virtual {p6}, LyY;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, LzE;->c:Lzv;

    sget-object v1, LyT;->c:LyT;

    invoke-virtual {v0, p3, v1}, Lzv;->a(ILyT;)V

    .line 625
    monitor-exit v6

    goto :goto_0

    .line 629
    :cond_3
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-static {v0}, Lzv;->c(Lzv;)I

    move-result v0

    if-gt p3, v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 632
    :cond_4
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, LzE;->c:Lzv;

    invoke-static {v1}, Lzv;->d(Lzv;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    monitor-exit v6

    goto :goto_0

    .line 635
    :cond_5
    new-instance v0, LzH;

    iget-object v2, p0, LzE;->c:Lzv;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LzH;-><init>(ILzv;ZZLjava/util/List;)V

    .line 637
    iget-object v1, p0, LzE;->c:Lzv;

    invoke-static {v1, p3}, Lzv;->b(Lzv;I)I

    .line 638
    iget-object v1, p0, LzE;->c:Lzv;

    invoke-static {v1}, Lzv;->e(Lzv;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-static {}, Lzv;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, LzF;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, LzE;->c:Lzv;

    invoke-static {v7}, Lzv;->a(Lzv;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, LzF;-><init>(LzE;Ljava/lang/String;[Ljava/lang/Object;LzH;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 648
    monitor-exit v6

    goto :goto_0

    .line 650
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-virtual {p6}, LyY;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 654
    sget-object v1, LyT;->b:LyT;

    invoke-virtual {v0, v1}, LzH;->b(LyT;)V

    .line 655
    iget-object v0, p0, LzE;->c:Lzv;

    invoke-virtual {v0, p3}, Lzv;->b(I)LzH;

    goto/16 :goto_0

    .line 660
    :cond_7
    invoke-virtual {v0, p5, p6}, LzH;->a(Ljava/util/List;LyY;)V

    .line 661
    if-eqz p2, :cond_0

    invoke-virtual {v0}, LzH;->h()V

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 567
    sget-object v0, LyT;->g:LyT;

    .line 568
    sget-object v2, LyT;->g:LyT;

    .line 570
    :try_start_0
    iget-object v1, p0, LzE;->c:Lzv;

    iget-object v1, v1, Lzv;->g:LzM;

    iget-object v3, p0, LzE;->c:Lzv;

    iget-object v3, v3, Lzv;->h:Ljava/net/Socket;

    invoke-static {v3}, LKI;->b(Ljava/net/Socket;)LKT;

    move-result-object v3

    invoke-static {v3}, LKI;->a(LKT;)LKB;

    move-result-object v3

    iget-object v4, p0, LzE;->c:Lzv;

    iget-boolean v4, v4, Lzv;->b:Z

    invoke-interface {v1, v3, v4}, LzM;->a(LKB;Z)LyU;

    move-result-object v1

    iput-object v1, p0, LzE;->a:LyU;

    .line 571
    iget-object v1, p0, LzE;->c:Lzv;

    iget-boolean v1, v1, Lzv;->b:Z

    if-nez v1, :cond_0

    .line 572
    iget-object v1, p0, LzE;->a:LyU;

    invoke-interface {v1}, LyU;->a()V

    .line 574
    :cond_0
    iget-object v1, p0, LzE;->a:LyU;

    invoke-interface {v1, p0}, LyU;->a(LyV;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    sget-object v0, LyT;->a:LyT;

    .line 577
    sget-object v1, LyT;->l:LyT;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    iget-object v2, p0, LzE;->c:Lzv;

    invoke-static {v2, v0, v1}, Lzv;->a(Lzv;LyT;LyT;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 586
    :goto_0
    iget-object v0, p0, LzE;->a:LyU;

    invoke-static {v0}, Lyi;->a(Ljava/io/Closeable;)V

    .line 588
    :goto_1
    return-void

    .line 579
    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, LyT;->b:LyT;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    :try_start_3
    sget-object v0, LyT;->b:LyT;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 583
    :try_start_4
    iget-object v2, p0, LzE;->c:Lzv;

    invoke-static {v2, v1, v0}, Lzv;->a(Lzv;LyT;LyT;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 586
    :goto_2
    iget-object v0, p0, LzE;->a:LyU;

    invoke-static {v0}, Lyi;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 582
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 583
    :goto_3
    :try_start_5
    iget-object v3, p0, LzE;->c:Lzv;

    invoke-static {v3, v1, v2}, Lzv;->a(Lzv;LyT;LyT;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 586
    :goto_4
    iget-object v1, p0, LzE;->a:LyU;

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    .line 582
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method
