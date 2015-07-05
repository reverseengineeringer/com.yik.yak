.class Lbs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Laf;


# instance fields
.field private b:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private c:[Ljava/lang/Thread;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/StackTraceElement;

.field private final f:Landroid/content/Context;

.field private final g:Laf;

.field private final h:Laf;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "0"

    invoke-static {v0}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    sput-object v0, Lbs;->a:Laf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lbs;->i:I

    .line 50
    iput-object p1, p0, Lbs;->f:Landroid/content/Context;

    .line 51
    invoke-static {p3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    iput-object v0, p0, Lbs;->g:Laf;

    .line 52
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lbs;->h:Laf;

    .line 54
    return-void

    .line 52
    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    goto :goto_0
.end method

.method private a()I
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    const/4 v1, 0x1

    new-instance v2, LHu;

    invoke-direct {v2}, LHu;-><init>()V

    iget-object v3, p0, Lbs;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, LHu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    return v0
.end method

.method private a(FIZIJJ)I
    .locals 3

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 562
    const/4 v1, 0x1

    invoke-static {v1, p1}, Laj;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    const/4 v1, 0x2

    invoke-static {v1, p2}, Laj;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    const/4 v1, 0x3

    invoke-static {v1, p3}, Laj;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    const/4 v1, 0x4

    invoke-static {v1, p4}, Laj;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    const/4 v1, 0x5

    invoke-static {v1, p5, p6}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    const/4 v1, 0x6

    invoke-static {v1, p7, p8}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    return v0
.end method

.method private a(ILaf;Laf;IJJZLjava/util/Map;ILaf;Laf;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laf;",
            "Laf;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "LHJ;",
            "Ljava/lang/String;",
            ">;I",
            "Laf;",
            "Laf;",
            ")I"
        }
    .end annotation

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 432
    const/4 v2, 0x1

    invoke-static {v2, p2}, Laj;->b(ILaf;)I

    move-result v2

    add-int/2addr v1, v2

    .line 433
    const/4 v2, 0x3

    invoke-static {v2, p1}, Laj;->g(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 434
    if-nez p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 435
    const/4 v2, 0x5

    invoke-static {v2, p4}, Laj;->f(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 436
    const/4 v2, 0x6

    invoke-static {v2, p5, p6}, Laj;->b(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 437
    const/4 v2, 0x7

    invoke-static {v2, p7, p8}, Laj;->b(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 438
    const/16 v2, 0xa

    move/from16 v0, p9

    invoke-static {v2, v0}, Laj;->b(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 439
    if-eqz p10, :cond_1

    .line 440
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHJ;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbs;->a(LHJ;Ljava/lang/String;)I

    move-result v1

    .line 442
    const/16 v2, 0xb

    invoke-static {v2}, Laj;->j(I)I

    move-result v2

    invoke-static {v1}, Laj;->l(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move v3, v1

    .line 444
    goto :goto_1

    .line 434
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p3}, Laj;->b(ILaf;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 446
    :cond_2
    const/16 v1, 0xc

    move/from16 v0, p11

    invoke-static {v1, v0}, Laj;->f(II)I

    move-result v1

    add-int v2, v3, v1

    .line 447
    if-nez p12, :cond_3

    const/4 v1, 0x0

    :goto_2
    add-int/2addr v2, v1

    .line 448
    if-nez p13, :cond_4

    const/4 v1, 0x0

    :goto_3
    add-int/2addr v1, v2

    .line 450
    return v1

    .line 447
    :cond_3
    const/16 v1, 0xd

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Laj;->b(ILaf;)I

    move-result v1

    goto :goto_2

    .line 448
    :cond_4
    const/16 v1, 0xe

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Laj;->b(ILaf;)I

    move-result v1

    goto :goto_3
.end method

.method private a(LHJ;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x1

    iget v1, p1, LHJ;->h:I

    invoke-static {v0, v1}, Laj;->g(II)I

    move-result v0

    .line 420
    const/4 v1, 0x2

    invoke-static {p2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    return v0
.end method

.method private a(Laf;)I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-static {v0, p1}, Laj;->b(ILaf;)I

    move-result v0

    return v0
.end method

.method private a(Laf;Laf;Laf;Laf;I)I
    .locals 4

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 387
    const/4 v1, 0x1

    invoke-static {v1, p1}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    const/4 v1, 0x2

    invoke-static {v1, p2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    const/4 v1, 0x3

    invoke-static {v1, p3}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    invoke-direct {p0}, Lbs;->a()I

    move-result v1

    .line 391
    const/4 v2, 0x5

    invoke-static {v2}, Laj;->j(I)I

    move-result v2

    invoke-static {v1}, Laj;->l(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 393
    const/4 v1, 0x6

    invoke-static {v1, p4}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    const/16 v1, 0xa

    invoke-static {v1, p5}, Laj;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    return v0
.end method

.method private a(Laf;Laf;Z)I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 408
    const/4 v0, 0x0

    .line 410
    const/4 v1, 0x1

    invoke-static {v1, v2}, Laj;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    const/4 v1, 0x2

    invoke-static {v1, p1}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    invoke-static {v2, p2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    const/4 v1, 0x4

    invoke-static {v1, p3}, Laj;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    return v0
.end method

.method private a(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    .line 635
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Laj;->b(IJ)I

    move-result v0

    add-int/2addr v0, v2

    .line 642
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v3

    invoke-static {v1, v3}, Laj;->b(ILaf;)I

    move-result v3

    add-int/2addr v0, v3

    .line 645
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 646
    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v4

    invoke-static {v3, v4}, Laj;->b(ILaf;)I

    move-result v3

    add-int/2addr v0, v3

    .line 650
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3

    .line 652
    const/4 v3, 0x4

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Laj;->b(IJ)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    .line 654
    :goto_1
    const/4 v4, 0x5

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Laj;->f(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 656
    return v0

    .line 639
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Laj;->b(IJ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 654
    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-static {p1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-static {v0, v1}, Laj;->b(ILaf;)I

    move-result v0

    .line 552
    const/4 v1, 0x2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 554
    return v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 521
    .line 523
    iget-object v0, p0, Lbs;->e:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1, v7}, Lbs;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 524
    invoke-static {v7}, Laj;->j(I)I

    move-result v1

    invoke-static {v0}, Laj;->l(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 527
    iget-object v1, p0, Lbs;->c:[Ljava/lang/Thread;

    array-length v4, v1

    move v1, v2

    move v3, v0

    .line 528
    :goto_0
    if-ge v1, v4, :cond_0

    .line 529
    iget-object v0, p0, Lbs;->c:[Ljava/lang/Thread;

    aget-object v5, v0, v1

    .line 530
    iget-object v0, p0, Lbs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {p0, v5, v0, v2, v2}, Lbs;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 531
    invoke-static {v7}, Laj;->j(I)I

    move-result v5

    invoke-static {v0}, Laj;->l(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 528
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-direct {p0, p2, v7}, Lbs;->a(Ljava/lang/Throwable;I)I

    move-result v0

    .line 536
    const/4 v1, 0x2

    invoke-static {v1}, Laj;->j(I)I

    move-result v1

    invoke-static {v0}, Laj;->l(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 539
    invoke-direct {p0}, Lbs;->c()I

    move-result v1

    .line 540
    invoke-static {v8}, Laj;->j(I)I

    move-result v2

    invoke-static {v1}, Laj;->l(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 543
    invoke-direct {p0}, Lbs;->b()I

    move-result v1

    .line 544
    invoke-static {v8}, Laj;->j(I)I

    move-result v2

    invoke-static {v1}, Laj;->l(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 547
    return v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 494
    .line 496
    invoke-direct {p0, p1, p2}, Lbs;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    .line 497
    invoke-static {v3}, Laj;->j(I)I

    move-result v1

    invoke-static {v0}, Laj;->l(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 500
    if-eqz p4, :cond_0

    .line 501
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 502
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lbs;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 504
    const/4 v1, 0x2

    invoke-static {v1}, Laj;->j(I)I

    move-result v1

    invoke-static {v0}, Laj;->l(I)I

    move-result v6

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    .line 506
    goto :goto_0

    :cond_0
    move v2, v0

    .line 510
    :cond_1
    iget-object v0, p0, Lbs;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    .line 511
    const/4 v1, 0x3

    iget-object v0, p0, Lbs;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-eq v0, v5, :cond_3

    move v0, v3

    :goto_1
    invoke-static {v1, v0}, Laj;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 515
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0, p3}, Laj;->f(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 517
    return v0

    :cond_3
    move v0, v4

    .line 511
    goto :goto_1
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map;FIZIJJLaf;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;FIZIJJ",
            "Laf;",
            ")I"
        }
    .end annotation

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 473
    const/4 v3, 0x1

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Laj;->b(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 474
    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v4

    invoke-static {v3, v4}, Laj;->b(ILaf;)I

    move-result v3

    add-int/2addr v2, v3

    .line 475
    move/from16 v0, p10

    move-object/from16 v1, p6

    invoke-direct {p0, p1, p2, v0, v1}, Lbs;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I

    move-result v3

    .line 476
    const/4 v4, 0x3

    invoke-static {v4}, Laj;->j(I)I

    move-result v4

    invoke-static {v3}, Laj;->l(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object v3, p0

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-wide/from16 v8, p11

    move-wide/from16 v10, p13

    .line 478
    invoke-direct/range {v3 .. v11}, Lbs;->a(FIZIJJ)I

    move-result v3

    .line 480
    const/4 v4, 0x5

    invoke-static {v4}, Laj;->j(I)I

    move-result v4

    invoke-static {v3}, Laj;->l(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 483
    if-eqz p15, :cond_0

    .line 484
    move-object/from16 v0, p15

    invoke-direct {p0, v0}, Lbs;->a(Laf;)I

    move-result v3

    .line 485
    const/4 v4, 0x6

    invoke-static {v4}, Laj;->j(I)I

    move-result v4

    invoke-static {v3}, Laj;->l(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 489
    :cond_0
    return v2
.end method

.method private a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 6

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-static {v0, v1}, Laj;->b(ILaf;)I

    move-result v0

    .line 662
    const/4 v1, 0x2

    invoke-static {v1, p3}, Laj;->f(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 664
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 665
    invoke-direct {p0, v3, p4}, Lbs;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 666
    const/4 v4, 0x3

    invoke-static {v4}, Laj;->j(I)I

    move-result v4

    invoke-static {v3}, Laj;->l(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_0
    return v1
.end method

.method private a(Ljava/lang/Throwable;I)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 580
    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    invoke-static {v8, v0}, Laj;->b(ILaf;)I

    move-result v0

    add-int/2addr v0, v1

    .line 586
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 587
    if-eqz v2, :cond_0

    .line 588
    const/4 v3, 0x3

    invoke-static {v2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-static {v3, v2}, Laj;->b(ILaf;)I

    move-result v2

    add-int/2addr v0, v2

    .line 591
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    .line 592
    invoke-direct {p0, v3, v8}, Lbs;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 593
    const/4 v6, 0x4

    invoke-static {v6}, Laj;->j(I)I

    move-result v6

    invoke-static {v3}, Laj;->l(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    .line 591
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 600
    if-eqz v2, :cond_2

    .line 601
    iget v3, p0, Lbs;->i:I

    if-ge p2, v3, :cond_3

    .line 602
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v2, v1}, Lbs;->a(Ljava/lang/Throwable;I)I

    move-result v1

    .line 604
    const/4 v2, 0x6

    invoke-static {v2}, Laj;->j(I)I

    move-result v2

    invoke-static {v1}, Laj;->l(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 619
    :cond_2
    :goto_1
    return v0

    .line 610
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 611
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 615
    :cond_4
    const/4 v2, 0x7

    invoke-static {v2, v1}, Laj;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Laf;
    .locals 1

    .prologue
    .line 674
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Laj;FIZIJJ)V
    .locals 12

    .prologue
    .line 363
    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Laj;->i(II)V

    move-object v3, p0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 364
    invoke-direct/range {v3 .. v11}, Lbs;->a(FIZIJJ)I

    move-result v2

    invoke-virtual {p1, v2}, Laj;->k(I)V

    .line 366
    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Laj;->a(IF)V

    .line 367
    const/4 v2, 0x2

    invoke-virtual {p1, v2, p3}, Laj;->d(II)V

    .line 368
    const/4 v2, 0x3

    move/from16 v0, p4

    invoke-virtual {p1, v2, v0}, Laj;->a(IZ)V

    .line 369
    const/4 v2, 0x4

    move/from16 v0, p5

    invoke-virtual {p1, v2, v0}, Laj;->b(II)V

    .line 370
    const/4 v2, 0x5

    move-wide/from16 v0, p6

    invoke-virtual {p1, v2, v0, v1}, Laj;->a(IJ)V

    .line 371
    const/4 v2, 0x6

    move-wide/from16 v0, p8

    invoke-virtual {p1, v2, v0, v1}, Laj;->a(IJ)V

    .line 372
    return-void
.end method

.method private a(Laj;ILjava/lang/StackTraceElement;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p1, p2, v5}, Laj;->i(II)V

    .line 330
    invoke-direct {p0, p3, p4}, Lbs;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Laj;->k(I)V

    .line 332
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v4, v2, v3}, Laj;->a(IJ)V

    .line 340
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Laj;->a(ILaf;)V

    .line 343
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    const/4 v2, 0x3

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Laj;->a(ILaf;)V

    .line 349
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 350
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 356
    :cond_1
    const/4 v2, 0x5

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v0}, Laj;->b(II)V

    .line 357
    return-void

    .line 337
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v4, v2, v3}, Laj;->a(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 356
    goto :goto_1
.end method

.method private a(Laj;Laf;)V
    .locals 2

    .prologue
    .line 375
    if-eqz p2, :cond_0

    .line 376
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Laj;->i(II)V

    .line 377
    invoke-direct {p0, p2}, Lbs;->a(Laf;)I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Laj;->a(ILaf;)V

    .line 380
    :cond_0
    return-void
.end method

.method private a(Laj;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 233
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Laj;->i(II)V

    .line 234
    invoke-direct {p0, p2, p3}, Lbs;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 236
    iget-object v3, p0, Lbs;->e:[Ljava/lang/StackTraceElement;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lbs;->a(Laj;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 240
    iget-object v0, p0, Lbs;->c:[Ljava/lang/Thread;

    array-length v7, v0

    .line 241
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 242
    iget-object v0, p0, Lbs;->c:[Ljava/lang/Thread;

    aget-object v2, v0, v6

    .line 243
    iget-object v0, p0, Lbs;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbs;->a(Laj;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 241
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 246
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Lbs;->a(Laj;Ljava/lang/Throwable;II)V

    .line 248
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Laj;->i(II)V

    .line 249
    invoke-direct {p0}, Lbs;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 250
    const/4 v0, 0x1

    sget-object v1, Lbs;->a:Laf;

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 251
    const/4 v0, 0x2

    sget-object v1, Lbs;->a:Laf;

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 252
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 254
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Laj;->i(II)V

    .line 255
    invoke-direct {p0}, Lbs;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 256
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 257
    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 258
    const/4 v0, 0x3

    iget-object v1, p0, Lbs;->g:Laf;

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 259
    iget-object v0, p0, Lbs;->h:Laf;

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x4

    iget-object v1, p0, Lbs;->h:Laf;

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 262
    :cond_1
    return-void
.end method

.method private a(Laj;Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 212
    const/4 v0, 0x2

    invoke-virtual {p1, v2, v0}, Laj;->i(II)V

    .line 213
    invoke-direct {p0, p2, p3, p4, p5}, Lbs;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lbs;->a(Laj;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 217
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0, p1, p5}, Lbs;->a(Laj;Ljava/util/Map;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lbs;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lbs;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v0}, Laj;->a(IZ)V

    .line 228
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p4}, Laj;->b(II)V

    .line 229
    return-void

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Laj;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 316
    invoke-virtual {p1, v1, v2}, Laj;->i(II)V

    .line 317
    invoke-direct {p0, p2, p3, p4, p5}, Lbs;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 318
    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 319
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Laj;->a(ILaf;)V

    .line 320
    invoke-virtual {p1, v2, p4}, Laj;->b(II)V

    .line 322
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 323
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2, p5}, Lbs;->a(Laj;ILjava/lang/StackTraceElement;Z)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method private a(Laj;Ljava/lang/Throwable;II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 282
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Laj;->i(II)V

    .line 283
    invoke-direct {p0, p2, v6}, Lbs;->a(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-virtual {p1, v1}, Laj;->k(I)V

    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Laj;->a(ILaf;)V

    .line 286
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_0

    .line 288
    const/4 v2, 0x3

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Laj;->a(ILaf;)V

    .line 291
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 292
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5, v4, v6}, Lbs;->a(Laj;ILjava/lang/StackTraceElement;Z)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_2

    .line 297
    iget v2, p0, Lbs;->i:I

    if-ge p3, v2, :cond_3

    .line 298
    add-int/lit8 v0, p3, 0x1

    const/4 v2, 0x6

    invoke-direct {p0, p1, v1, v0, v2}, Lbs;->a(Laj;Ljava/lang/Throwable;II)V

    .line 310
    :cond_2
    :goto_1
    return-void

    .line 303
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 307
    :cond_4
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Laj;->b(II)V

    goto :goto_1
.end method

.method private a(Laj;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 268
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    invoke-virtual {p1, v4, v4}, Laj;->i(II)V

    .line 270
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lbs;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Laj;->k(I)V

    .line 273
    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Laj;->a(ILaf;)V

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Laj;->a(ILaf;)V

    goto :goto_0

    .line 277
    :cond_1
    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 454
    const/4 v0, 0x0

    .line 456
    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    const/4 v1, 0x3

    iget-object v2, p0, Lbs;->g:Laf;

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    iget-object v1, p0, Lbs;->h:Laf;

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x4

    iget-object v2, p0, Lbs;->h:Laf;

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_0
    return v0
.end method

.method private c()I
    .locals 4

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 625
    const/4 v1, 0x1

    sget-object v2, Lbs;->a:Laf;

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    const/4 v1, 0x2

    sget-object v2, Lbs;->a:Laf;

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    return v0
.end method


# virtual methods
.method public a(Laj;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List;[Ljava/lang/StackTraceElement;LHM;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "J",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Thread;",
            "FIZIJJ",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;[",
            "Ljava/lang/StackTraceElement;",
            "LHM;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lbs;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 183
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lbs;->d:Ljava/util/List;

    .line 184
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbs;->e:[Ljava/lang/StackTraceElement;

    .line 185
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lbs;->c:[Ljava/lang/Thread;

    .line 187
    invoke-static/range {p19 .. p19}, LaZ;->a(LHM;)Laf;

    move-result-object v20

    .line 189
    if-nez v20, :cond_0

    .line 190
    invoke-static {}, LGS;->g()LHe;

    .line 194
    :cond_0
    const-string v4, "There was a problem closing the Crashlytics log file."

    move-object/from16 v0, p19

    invoke-static {v0, v4}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 196
    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Laj;->i(II)V

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p2

    move-object/from16 v11, p20

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    .line 197
    invoke-direct/range {v5 .. v20}, Lbs;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map;FIZIJJLaf;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Laj;->k(I)V

    .line 200
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Laj;->a(IJ)V

    .line 201
    const/4 v4, 0x2

    invoke-static/range {p6 .. p6}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Laj;->a(ILaf;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p11

    move-object/from16 v9, p20

    .line 203
    invoke-direct/range {v4 .. v9}, Lbs;->a(Laj;Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move-wide/from16 v10, p12

    move-wide/from16 v12, p14

    .line 204
    invoke-direct/range {v4 .. v13}, Lbs;->a(Laj;FIZIJJ)V

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lbs;->a(Laj;Laf;)V

    .line 207
    return-void
.end method

.method public a(Laj;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laj;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "LHJ;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static/range {p2 .. p2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v7

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lbs;->a(Ljava/lang/String;)Laf;

    move-result-object v8

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-direct {v0, v1}, Lbs;->a(Ljava/lang/String;)Laf;

    move-result-object v18

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lbs;->a(Ljava/lang/String;)Laf;

    move-result-object v17

    .line 112
    const/16 v4, 0x9

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Laj;->i(II)V

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    .line 114
    invoke-direct/range {v5 .. v18}, Lbs;->a(ILaf;Laf;IJJZLjava/util/Map;ILaf;Laf;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Laj;->k(I)V

    .line 118
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Laj;->a(ILaf;)V

    .line 120
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Laj;->c(II)V

    .line 121
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Laj;->a(ILaf;)V

    .line 122
    const/4 v4, 0x5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Laj;->b(II)V

    .line 123
    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v0, v4, v1, v2}, Laj;->a(IJ)V

    .line 124
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v4, v1, v2}, Laj;->a(IJ)V

    .line 125
    const/16 v4, 0xa

    move-object/from16 v0, p1

    move/from16 v1, p10

    invoke-virtual {v0, v4, v1}, Laj;->a(IZ)V

    .line 127
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    const/16 v5, 0xb

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Laj;->i(II)V

    .line 129
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LHJ;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lbs;->a(LHJ;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Laj;->k(I)V

    .line 131
    const/4 v6, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LHJ;

    iget v5, v5, LHJ;->h:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Laj;->c(II)V

    .line 132
    const/4 v5, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Laj;->a(ILaf;)V

    goto :goto_0

    .line 134
    :cond_0
    const/16 v4, 0xc

    move-object/from16 v0, p1

    move/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Laj;->b(II)V

    .line 136
    if-eqz v17, :cond_1

    .line 137
    const/16 v4, 0xd

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Laj;->a(ILaf;)V

    .line 139
    :cond_1
    if-eqz v18, :cond_2

    .line 140
    const/16 v4, 0xe

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Laj;->a(ILaf;)V

    .line 142
    :cond_2
    return-void
.end method

.method public a(Laj;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {p3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 59
    const/4 v0, 0x2

    invoke-static {p2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 60
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p4, p5}, Laj;->a(IJ)V

    .line 61
    return-void
.end method

.method public a(Laj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 147
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    .line 148
    invoke-direct {p0, p3}, Lbs;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    .line 149
    invoke-direct {p0, p4}, Lbs;->a(Ljava/lang/String;)Laf;

    move-result-object v3

    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-static {v6, v1}, Laj;->b(ILaf;)I

    move-result v4

    add-int/2addr v0, v4

    .line 153
    if-eqz p3, :cond_1

    .line 154
    invoke-static {v5, v2}, Laj;->b(ILaf;)I

    move-result v4

    add-int/2addr v0, v4

    .line 156
    :cond_1
    if-eqz p4, :cond_2

    .line 157
    invoke-static {v7, v3}, Laj;->b(ILaf;)I

    move-result v4

    add-int/2addr v0, v4

    .line 160
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v5}, Laj;->i(II)V

    .line 161
    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 162
    invoke-virtual {p1, v6, v1}, Laj;->a(ILaf;)V

    .line 163
    if-eqz p3, :cond_3

    .line 164
    invoke-virtual {p1, v5, v2}, Laj;->a(ILaf;)V

    .line 166
    :cond_3
    if-eqz p4, :cond_4

    .line 167
    invoke-virtual {p1, v7, v3}, Laj;->a(ILaf;)V

    .line 169
    :cond_4
    return-void
.end method

.method public a(Laj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 66
    invoke-static {p2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    .line 67
    invoke-static {p3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    .line 68
    invoke-static {p4}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v3

    .line 69
    invoke-static {p5}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v4

    .line 72
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v6}, Laj;->i(II)V

    move-object v0, p0

    move v5, p6

    .line 73
    invoke-direct/range {v0 .. v5}, Lbs;->a(Laf;Laf;Laf;Laf;I)I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 75
    invoke-virtual {p1, v7, v1}, Laj;->a(ILaf;)V

    .line 76
    invoke-virtual {p1, v6, v2}, Laj;->a(ILaf;)V

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Laj;->a(ILaf;)V

    .line 80
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v6}, Laj;->i(II)V

    .line 81
    invoke-direct {p0}, Lbs;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Laj;->k(I)V

    .line 82
    new-instance v0, LHu;

    invoke-direct {v0}, LHu;-><init>()V

    iget-object v1, p0, Lbs;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, LHu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Laj;->a(ILjava/lang/String;)V

    .line 85
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v4}, Laj;->a(ILaf;)V

    .line 86
    const/16 v0, 0xa

    invoke-virtual {p1, v0, p6}, Laj;->c(II)V

    .line 87
    return-void
.end method

.method public a(Laj;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 90
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    .line 91
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    .line 93
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v3}, Laj;->i(II)V

    .line 94
    invoke-direct {p0, v0, v1, p2}, Lbs;->a(Laf;Laf;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Laj;->k(I)V

    .line 95
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v4}, Laj;->c(II)V

    .line 96
    invoke-virtual {p1, v3, v0}, Laj;->a(ILaf;)V

    .line 97
    invoke-virtual {p1, v4, v1}, Laj;->a(ILaf;)V

    .line 98
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Laj;->a(IZ)V

    .line 99
    return-void
.end method
