.class final Lqc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lqe",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lqc;


# instance fields
.field private final a:LqJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqJ",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lqc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lqc;-><init>(Z)V

    sput-object v0, Lqc;->d:Lqc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqc;->c:Z

    .line 51
    const/16 v0, 0x10

    invoke-static {v0}, LqJ;->a(I)LqJ;

    move-result-object v0

    iput-object v0, p0, Lqc;->a:LqJ;

    .line 52
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lqc;->c:Z

    .line 59
    invoke-static {v0}, LqJ;->a(I)LqJ;

    move-result-object v0

    iput-object v0, p0, Lqc;->a:LqJ;

    .line 60
    invoke-virtual {p0}, Lqc;->c()V

    .line 61
    return-void
.end method

.method static a(LqY;Z)I
    .locals 1

    .prologue
    .line 560
    if-eqz p1, :cond_0

    .line 561
    const/4 v0, 0x2

    .line 563
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LqY;->c()I

    move-result v0

    goto :goto_0
.end method

.method public static a(LpW;LqY;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 643
    sget-object v0, Lqd;->b:[I

    invoke-virtual {p1}, LqY;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 677
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :pswitch_0
    invoke-virtual {p0}, LpW;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    .line 645
    :pswitch_1
    invoke-virtual {p0}, LpW;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 646
    :pswitch_2
    invoke-virtual {p0}, LpW;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 647
    :pswitch_3
    invoke-virtual {p0}, LpW;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 648
    :pswitch_4
    invoke-virtual {p0}, LpW;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_5
    invoke-virtual {p0}, LpW;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 650
    :pswitch_6
    invoke-virtual {p0}, LpW;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 651
    :pswitch_7
    invoke-virtual {p0}, LpW;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 652
    :pswitch_8
    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {p0}, LpW;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p0}, LpW;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 657
    :pswitch_9
    invoke-virtual {p0}, LpW;->l()LpT;

    move-result-object v0

    goto :goto_0

    .line 658
    :pswitch_a
    invoke-virtual {p0}, LpW;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 659
    :pswitch_b
    invoke-virtual {p0}, LpW;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 660
    :pswitch_c
    invoke-virtual {p0}, LpW;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 661
    :pswitch_d
    invoke-virtual {p0}, LpW;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 662
    :pswitch_e
    invoke-virtual {p0}, LpW;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 665
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a()Lqc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lqe",
            "<TT;>;>()",
            "Lqc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lqc;

    invoke-direct {v0}, Lqc;-><init>()V

    return-object v0
.end method

.method private static a(LqY;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 464
    :cond_0
    sget-object v2, Lqd;->a:[I

    invoke-virtual {p0}, LqY;->b()Lrd;

    move-result-object v3

    invoke-virtual {v3}, Lrd;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 486
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 466
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 467
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 468
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 469
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 470
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 472
    :pswitch_6
    instance-of v2, p1, LpT;

    if-nez v2, :cond_2

    instance-of v2, p1, [B

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 476
    :pswitch_7
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_3

    instance-of v2, p1, Lqp;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 481
    :pswitch_8
    instance-of v2, p1, Lqy;

    if-nez v2, :cond_4

    instance-of v2, p1, Lqs;

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 497
    :cond_5
    return-void

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 526
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe;

    .line 527
    invoke-interface {v0}, Lqe;->b()Lrd;

    move-result-object v3

    sget-object v4, Lrd;->i:Lrd;

    if-ne v3, v4, :cond_4

    .line 528
    invoke-interface {v0}, Lqe;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy;

    .line 531
    invoke-interface {v0}, Lqy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 549
    :goto_0
    return v0

    .line 536
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 537
    instance-of v3, v0, Lqy;

    if-eqz v3, :cond_2

    .line 538
    check-cast v0, Lqy;

    invoke-interface {v0}, Lqy;->j()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 539
    goto :goto_0

    .line 541
    :cond_2
    instance-of v0, v0, Lqs;

    if-eqz v0, :cond_3

    move v0, v2

    .line 542
    goto :goto_0

    .line 544
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 549
    goto :goto_0
.end method

.method public static b()Lqc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lqe",
            "<TT;>;>()",
            "Lqc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lqc;->d:Lqc;

    return-object v0
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe;

    .line 585
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 586
    instance-of v2, v1, Lqs;

    if-eqz v2, :cond_0

    .line 587
    check-cast v1, Lqs;

    invoke-virtual {v1}, Lqs;->a()Lqy;

    move-result-object v1

    .line 590
    :cond_0
    invoke-interface {v0}, Lqe;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-virtual {p0, v0}, Lqc;->a(Lqe;)Ljava/lang/Object;

    move-result-object v2

    .line 592
    if-nez v2, :cond_1

    .line 596
    iget-object v2, p0, Lqc;->a:LqJ;

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, LqJ;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 599
    check-cast v0, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 601
    :cond_2
    invoke-interface {v0}, Lqe;->b()Lrd;

    move-result-object v2

    sget-object v3, Lrd;->i:Lrd;

    if-ne v2, v3, :cond_5

    .line 602
    invoke-virtual {p0, v0}, Lqc;->a(Lqe;)Ljava/lang/Object;

    move-result-object v2

    .line 603
    if-nez v2, :cond_3

    .line 604
    iget-object v2, p0, Lqc;->a:LqJ;

    invoke-virtual {v2, v0, v1}, LqJ;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 607
    :cond_3
    instance-of v3, v2, LqB;

    if-eqz v3, :cond_4

    .line 608
    check-cast v2, LqB;

    check-cast v1, LqB;

    invoke-interface {v0, v2, v1}, Lqe;->a(LqB;LqB;)LqB;

    move-result-object v1

    .line 616
    :goto_1
    iget-object v2, p0, Lqc;->a:LqJ;

    invoke-virtual {v2, v0, v1}, LqJ;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 611
    :cond_4
    check-cast v2, Lqy;

    invoke-interface {v2}, Lqy;->n()Lqz;

    move-result-object v2

    check-cast v1, Lqy;

    invoke-interface {v0, v2, v1}, Lqe;->a(Lqz;Lqy;)Lqz;

    move-result-object v1

    invoke-interface {v1}, Lqz;->h()Lqy;

    move-result-object v1

    goto :goto_1

    .line 619
    :cond_5
    iget-object v2, p0, Lqc;->a:LqJ;

    invoke-virtual {v2, v0, v1}, LqJ;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lqe;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0, p1}, LqJ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lqs;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Lqs;

    invoke-virtual {v0}, Lqs;->a()Lqy;

    move-result-object v0

    .line 319
    :cond_0
    return-object v0
.end method

.method public a(Lqc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqc",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lqc;->a:LqJ;

    invoke-virtual {v1}, LqJ;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 573
    iget-object v1, p1, Lqc;->a:LqJ;

    invoke-virtual {v1, v0}, LqJ;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lqc;->b(Ljava/util/Map$Entry;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p1, Lqc;->a:LqJ;

    invoke-virtual {v0}, LqJ;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    invoke-direct {p0, v0}, Lqc;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 579
    :cond_1
    return-void
.end method

.method public a(Lqe;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-interface {p1}, Lqe;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-interface {p1}, Lqe;->a()LqY;

    move-result-object v3

    invoke-static {v3, v2}, Lqc;->a(LqY;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 347
    :goto_1
    instance-of v0, p2, Lqs;

    if-eqz v0, :cond_2

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc;->c:Z

    .line 350
    :cond_2
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0, p1, p2}, LqJ;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-void

    .line 344
    :cond_3
    invoke-interface {p1}, Lqe;->a()LqY;

    move-result-object v0

    invoke-static {v0, p2}, Lqc;->a(LqY;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Lqe;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-interface {p1}, Lqe;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    invoke-interface {p1}, Lqe;->a()LqY;

    move-result-object v0

    invoke-static {v0, p2}, Lqc;->a(LqY;Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0, p1}, Lqc;->a(Lqe;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    if-nez v0, :cond_1

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v1, p0, Lqc;->a:LqJ;

    invoke-virtual {v1, p1, v0}, LqJ;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    return-void

    .line 444
    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lqc;->b:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0}, LqJ;->a()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc;->b:Z

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lqc;->d()Lqc;

    move-result-object v0

    return-object v0
.end method

.method public d()Lqc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqc",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lqc;->a()Lqc;

    move-result-object v2

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0}, LqJ;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0, v1}, LqJ;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe;

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lqc;->a(Lqe;Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0}, LqJ;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqe;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lqc;->a(Lqe;Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-boolean v0, p0, Lqc;->c:Z

    iput-boolean v0, v2, Lqc;->c:Z

    .line 120
    return-object v2
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 509
    move v0, v1

    :goto_0
    iget-object v2, p0, Lqc;->a:LqJ;

    invoke-virtual {v2}, LqJ;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 510
    iget-object v2, p0, Lqc;->a:LqJ;

    invoke-virtual {v2, v0}, LqJ;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lqc;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    :goto_1
    return v1

    .line 509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lqc;->a:LqJ;

    invoke-virtual {v0}, LqJ;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-direct {p0, v0}, Lqc;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 520
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
