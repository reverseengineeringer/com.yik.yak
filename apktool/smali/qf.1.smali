.class final Lqf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lqh",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lqf;


# instance fields
.field private final a:LqM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqM",
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
    new-instance v0, Lqf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lqf;-><init>(Z)V

    sput-object v0, Lqf;->d:Lqf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqf;->c:Z

    .line 51
    const/16 v0, 0x10

    invoke-static {v0}, LqM;->a(I)LqM;

    move-result-object v0

    iput-object v0, p0, Lqf;->a:LqM;

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
    iput-boolean v0, p0, Lqf;->c:Z

    .line 59
    invoke-static {v0}, LqM;->a(I)LqM;

    move-result-object v0

    iput-object v0, p0, Lqf;->a:LqM;

    .line 60
    invoke-virtual {p0}, Lqf;->c()V

    .line 61
    return-void
.end method

.method static a(Lrb;Z)I
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
    invoke-virtual {p0}, Lrb;->c()I

    move-result v0

    goto :goto_0
.end method

.method public static a(LpZ;Lrb;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 643
    sget-object v0, Lqg;->b:[I

    invoke-virtual {p1}, Lrb;->ordinal()I

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
    invoke-virtual {p0}, LpZ;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    .line 645
    :pswitch_1
    invoke-virtual {p0}, LpZ;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 646
    :pswitch_2
    invoke-virtual {p0}, LpZ;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 647
    :pswitch_3
    invoke-virtual {p0}, LpZ;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 648
    :pswitch_4
    invoke-virtual {p0}, LpZ;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_5
    invoke-virtual {p0}, LpZ;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 650
    :pswitch_6
    invoke-virtual {p0}, LpZ;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 651
    :pswitch_7
    invoke-virtual {p0}, LpZ;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 652
    :pswitch_8
    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {p0}, LpZ;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p0}, LpZ;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 657
    :pswitch_9
    invoke-virtual {p0}, LpZ;->l()LpW;

    move-result-object v0

    goto :goto_0

    .line 658
    :pswitch_a
    invoke-virtual {p0}, LpZ;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 659
    :pswitch_b
    invoke-virtual {p0}, LpZ;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 660
    :pswitch_c
    invoke-virtual {p0}, LpZ;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 661
    :pswitch_d
    invoke-virtual {p0}, LpZ;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 662
    :pswitch_e
    invoke-virtual {p0}, LpZ;->r()J

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

.method public static a()Lqf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lqh",
            "<TT;>;>()",
            "Lqf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lqf;

    invoke-direct {v0}, Lqf;-><init>()V

    return-object v0
.end method

.method private static a(Lrb;Ljava/lang/Object;)V
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
    sget-object v2, Lqg;->a:[I

    invoke-virtual {p0}, Lrb;->b()Lrg;

    move-result-object v3

    invoke-virtual {v3}, Lrg;->ordinal()I

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
    instance-of v2, p1, LpW;

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

    instance-of v2, p1, Lqs;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 481
    :pswitch_8
    instance-of v2, p1, LqB;

    if-nez v2, :cond_4

    instance-of v2, p1, Lqv;

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

    check-cast v0, Lqh;

    .line 527
    invoke-interface {v0}, Lqh;->b()Lrg;

    move-result-object v3

    sget-object v4, Lrg;->i:Lrg;

    if-ne v3, v4, :cond_4

    .line 528
    invoke-interface {v0}, Lqh;->c()Z

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

    check-cast v0, LqB;

    .line 531
    invoke-interface {v0}, LqB;->j()Z

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
    instance-of v3, v0, LqB;

    if-eqz v3, :cond_2

    .line 538
    check-cast v0, LqB;

    invoke-interface {v0}, LqB;->j()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 539
    goto :goto_0

    .line 541
    :cond_2
    instance-of v0, v0, Lqv;

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

.method public static b()Lqf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lqh",
            "<TT;>;>()",
            "Lqf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lqf;->d:Lqf;

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

    check-cast v0, Lqh;

    .line 585
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 586
    instance-of v2, v1, Lqv;

    if-eqz v2, :cond_0

    .line 587
    check-cast v1, Lqv;

    invoke-virtual {v1}, Lqv;->a()LqB;

    move-result-object v1

    .line 590
    :cond_0
    invoke-interface {v0}, Lqh;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-virtual {p0, v0}, Lqf;->a(Lqh;)Ljava/lang/Object;

    move-result-object v2

    .line 592
    if-nez v2, :cond_1

    .line 596
    iget-object v2, p0, Lqf;->a:LqM;

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {v0}, Lqh;->b()Lrg;

    move-result-object v2

    sget-object v3, Lrg;->i:Lrg;

    if-ne v2, v3, :cond_5

    .line 602
    invoke-virtual {p0, v0}, Lqf;->a(Lqh;)Ljava/lang/Object;

    move-result-object v2

    .line 603
    if-nez v2, :cond_3

    .line 604
    iget-object v2, p0, Lqf;->a:LqM;

    invoke-virtual {v2, v0, v1}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 607
    :cond_3
    instance-of v3, v2, LqE;

    if-eqz v3, :cond_4

    .line 608
    check-cast v2, LqE;

    check-cast v1, LqE;

    invoke-interface {v0, v2, v1}, Lqh;->a(LqE;LqE;)LqE;

    move-result-object v1

    .line 616
    :goto_1
    iget-object v2, p0, Lqf;->a:LqM;

    invoke-virtual {v2, v0, v1}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 611
    :cond_4
    check-cast v2, LqB;

    invoke-interface {v2}, LqB;->n()LqC;

    move-result-object v2

    check-cast v1, LqB;

    invoke-interface {v0, v2, v1}, Lqh;->a(LqC;LqB;)LqC;

    move-result-object v1

    invoke-interface {v1}, LqC;->h()LqB;

    move-result-object v1

    goto :goto_1

    .line 619
    :cond_5
    iget-object v2, p0, Lqf;->a:LqM;

    invoke-virtual {v2, v0, v1}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lqh;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0, p1}, LqM;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lqv;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Lqv;

    invoke-virtual {v0}, Lqv;->a()LqB;

    move-result-object v0

    .line 319
    :cond_0
    return-object v0
.end method

.method public a(Lqf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqf",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lqf;->a:LqM;

    invoke-virtual {v1}, LqM;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 573
    iget-object v1, p1, Lqf;->a:LqM;

    invoke-virtual {v1, v0}, LqM;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lqf;->b(Ljava/util/Map$Entry;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p1, Lqf;->a:LqM;

    invoke-virtual {v0}, LqM;->d()Ljava/lang/Iterable;

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
    invoke-direct {p0, v0}, Lqf;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 579
    :cond_1
    return-void
.end method

.method public a(Lqh;Ljava/lang/Object;)V
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
    invoke-interface {p1}, Lqh;->c()Z

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
    invoke-interface {p1}, Lqh;->a()Lrb;

    move-result-object v3

    invoke-static {v3, v2}, Lqf;->a(Lrb;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 347
    :goto_1
    instance-of v0, p2, Lqv;

    if-eqz v0, :cond_2

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqf;->c:Z

    .line 350
    :cond_2
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0, p1, p2}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-void

    .line 344
    :cond_3
    invoke-interface {p1}, Lqh;->a()Lrb;

    move-result-object v0

    invoke-static {v0, p2}, Lqf;->a(Lrb;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Lqh;Ljava/lang/Object;)V
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
    invoke-interface {p1}, Lqh;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    invoke-interface {p1}, Lqh;->a()Lrb;

    move-result-object v0

    invoke-static {v0, p2}, Lqf;->a(Lrb;Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0, p1}, Lqf;->a(Lqh;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    if-nez v0, :cond_1

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v1, p0, Lqf;->a:LqM;

    invoke-virtual {v1, p1, v0}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lqf;->b:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0}, LqM;->a()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqf;->b:Z

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lqf;->d()Lqf;

    move-result-object v0

    return-object v0
.end method

.method public d()Lqf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lqf;->a()Lqf;

    move-result-object v2

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0}, LqM;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0, v1}, LqM;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh;

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lqf;->a(Lqh;Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0}, LqM;->d()Ljava/lang/Iterable;

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

    check-cast v1, Lqh;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lqf;->a(Lqh;Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-boolean v0, p0, Lqf;->c:Z

    iput-boolean v0, v2, Lqf;->c:Z

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
    iget-object v2, p0, Lqf;->a:LqM;

    invoke-virtual {v2}, LqM;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 510
    iget-object v2, p0, Lqf;->a:LqM;

    invoke-virtual {v2, v0}, LqM;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lqf;->a(Ljava/util/Map$Entry;)Z

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
    iget-object v0, p0, Lqf;->a:LqM;

    invoke-virtual {v0}, LqM;->d()Ljava/lang/Iterable;

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
    invoke-direct {p0, v0}, Lqf;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 520
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
