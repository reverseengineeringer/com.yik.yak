.class public LFF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:I

.field private c:Ljava/util/Random;

.field private d:Lcom/yik/yak/ui/view/leonids/ParticleField;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LFC;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LFC;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J

.field private i:F

.field private j:I

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LFE;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LFD;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/animation/ValueAnimator;

.field private o:F

.field private p:[I

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIJ)V
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, LFF;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;J)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;IJ)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LFF;->h:J

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LFF;->c:Ljava/util/Random;

    .line 58
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LFF;->a:Landroid/view/ViewGroup;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFF;->l:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFF;->m:Ljava/util/List;

    .line 63
    iput p2, p0, LFF;->b:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFF;->f:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFF;->e:Ljava/util/ArrayList;

    .line 67
    iput-wide p3, p0, LFF;->g:J

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, LFF;->p:[I

    .line 70
    iget-object v0, p0, LFF;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, LFF;->p:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, LFF;->o:F

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p4, p5}, LFF;-><init>(Landroid/app/Activity;IJ)V

    .line 98
    instance-of v1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 99
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    :goto_0
    iget v2, p0, LFF;->b:I

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v2, p0, LFF;->e:Ljava/util/ArrayList;

    new-instance v3, LFC;

    invoke-direct {v3, v1}, LFC;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    instance-of v1, p3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 104
    check-cast p3, Landroid/graphics/drawable/AnimationDrawable;

    .line 105
    :goto_1
    iget v1, p0, LFF;->b:I

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, LFF;->e:Ljava/util/ArrayList;

    new-instance v2, LFB;

    invoke-direct {v2, p3}, LFB;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, LFF;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, LFF;->d:Lcom/yik/yak/ui/view/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, LFF;->d:Lcom/yik/yak/ui/view/leonids/ParticleField;

    .line 495
    iget-object v0, p0, LFF;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 496
    iget-object v0, p0, LFF;->e:Ljava/util/ArrayList;

    iget-object v1, p0, LFF;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    return-void
.end method

.method private a(I)V
    .locals 10

    .prologue
    .line 524
    if-nez p1, :cond_1

    .line 536
    :cond_0
    return-void

    .line 527
    :cond_1
    iget-wide v0, p0, LFF;->h:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 528
    int-to-long v2, p1

    div-long v2, v0, v2

    .line 529
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 532
    iget-wide v0, p0, LFF;->h:J

    div-long v4, v0, v2

    .line 533
    const/4 v0, 0x1

    :goto_0
    int-to-long v6, v0

    cmp-long v1, v6, v2

    if-gtz v1, :cond_0

    .line 534
    int-to-long v6, v0

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, LFF;->b(J)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(II)V
    .locals 6

    .prologue
    .line 321
    const/4 v0, 0x0

    iput v0, p0, LFF;->j:I

    .line 322
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, LFF;->i:F

    .line 324
    new-instance v0, Lcom/yik/yak/ui/view/leonids/ParticleField;

    iget-object v1, p0, LFF;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/view/leonids/ParticleField;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFF;->d:Lcom/yik/yak/ui/view/leonids/ParticleField;

    .line 325
    iget-object v0, p0, LFF;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, LFF;->d:Lcom/yik/yak/ui/view/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, LFF;->d:Lcom/yik/yak/ui/view/leonids/ParticleField;

    iget-object v1, p0, LFF;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/leonids/ParticleField;->a(Ljava/util/ArrayList;)V

    .line 328
    invoke-direct {p0, p1}, LFF;->a(I)V

    .line 329
    int-to-long v0, p2

    iput-wide v0, p0, LFF;->k:J

    .line 330
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    int-to-long v2, p2

    iget-wide v4, p0, LFF;->g:J

    add-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, LFF;->a(Landroid/view/animation/Interpolator;J)V

    .line 331
    return-void
.end method

.method private a(J)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, LFF;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFC;

    .line 454
    invoke-virtual {v0}, LFC;->a()V

    move v2, v1

    .line 456
    :goto_0
    iget-object v1, p0, LFF;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 457
    iget-object v1, p0, LFF;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFD;

    iget-object v3, p0, LFF;->c:Ljava/util/Random;

    invoke-interface {v1, v0, v3}, LFD;->a(LFC;Ljava/util/Random;)V

    .line 456
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 459
    :cond_0
    iget v1, p0, LFF;->q:I

    iget v2, p0, LFF;->r:I

    invoke-direct {p0, v1, v2}, LFF;->c(II)I

    move-result v1

    .line 460
    iget v2, p0, LFF;->s:I

    iget v3, p0, LFF;->t:I

    invoke-direct {p0, v2, v3}, LFF;->c(II)I

    move-result v2

    .line 461
    iget-wide v4, p0, LFF;->g:J

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, v4, v5, v1, v2}, LFC;->a(JFF)V

    .line 462
    iget-object v1, p0, LFF;->l:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, LFC;->a(JLjava/util/List;)LFC;

    .line 463
    iget-object v1, p0, LFF;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget v0, p0, LFF;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LFF;->j:I

    .line 465
    return-void
.end method

.method static synthetic a(LFF;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, LFF;->a()V

    return-void
.end method

.method static synthetic a(LFF;J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, LFF;->b(J)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 416
    const/4 v1, 0x3

    invoke-direct {p0, p2, v1}, LFF;->b(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    aget v1, v0, v4

    iget-object v2, p0, LFF;->p:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, LFF;->q:I

    .line 418
    iget v1, p0, LFF;->q:I

    iput v1, p0, LFF;->r:I

    .line 432
    :goto_0
    const/16 v1, 0x30

    invoke-direct {p0, p2, v1}, LFF;->b(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    aget v0, v0, v3

    iget-object v1, p0, LFF;->p:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, LFF;->s:I

    .line 434
    iget v0, p0, LFF;->s:I

    iput v0, p0, LFF;->t:I

    .line 446
    :goto_1
    return-void

    .line 419
    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, p2, v1}, LFF;->b(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, LFF;->p:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, LFF;->q:I

    .line 421
    iget v1, p0, LFF;->q:I

    iput v1, p0, LFF;->r:I

    goto :goto_0

    .line 422
    :cond_1
    invoke-direct {p0, p2, v3}, LFF;->b(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, LFF;->p:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, LFF;->q:I

    .line 424
    iget v1, p0, LFF;->q:I

    iput v1, p0, LFF;->r:I

    goto :goto_0

    .line 427
    :cond_2
    aget v1, v0, v4

    iget-object v2, p0, LFF;->p:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, LFF;->q:I

    .line 428
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, LFF;->p:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, LFF;->r:I

    goto :goto_0

    .line 435
    :cond_3
    const/16 v1, 0x50

    invoke-direct {p0, p2, v1}, LFF;->b(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, LFF;->p:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, LFF;->s:I

    .line 437
    iget v0, p0, LFF;->s:I

    iput v0, p0, LFF;->t:I

    goto :goto_1

    .line 438
    :cond_4
    const/16 v1, 0x10

    invoke-direct {p0, p2, v1}, LFF;->b(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, LFF;->p:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, LFF;->s:I

    .line 440
    iget v0, p0, LFF;->s:I

    iput v0, p0, LFF;->t:I

    goto/16 :goto_1

    .line 443
    :cond_5
    aget v1, v0, v3

    iget-object v2, p0, LFF;->p:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, LFF;->s:I

    .line 444
    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, LFF;->p:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, LFF;->t:I

    goto/16 :goto_1
.end method

.method private a(Landroid/view/animation/Interpolator;J)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 378
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    long-to-int v2, p2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, LFF;->n:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v0, p0, LFF;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    iget-object v0, p0, LFF;->n:Landroid/animation/ValueAnimator;

    new-instance v1, LFG;

    invoke-direct {v1, p0}, LFG;-><init>(LFF;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 387
    iget-object v0, p0, LFF;->n:Landroid/animation/ValueAnimator;

    new-instance v1, LFH;

    invoke-direct {v1, p0}, LFH;-><init>(LFF;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    iget-object v0, p0, LFF;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    iget-object v0, p0, LFF;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 408
    return-void
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 475
    :goto_0
    iget-wide v0, p0, LFF;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, LFF;->k:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    iget-wide v0, p0, LFF;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, LFF;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, LFF;->j:I

    int-to-float v0, v0

    iget v1, p0, LFF;->i:F

    long-to-float v2, p1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 479
    invoke-direct {p0, p1, p2}, LFF;->a(J)V

    goto :goto_0

    .line 481
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, LFF;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 482
    iget-object v0, p0, LFF;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFC;

    invoke-virtual {v0, p1, p2}, LFC;->a(J)Z

    move-result v0

    .line 483
    if-nez v0, :cond_3

    .line 484
    iget-object v0, p0, LFF;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFC;

    .line 485
    add-int/lit8 v1, v1, -0x1

    .line 486
    iget-object v2, p0, LFF;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 489
    :cond_4
    iget-object v0, p0, LFF;->d:Lcom/yik/yak/ui/view/leonids/ParticleField;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/leonids/ParticleField;->postInvalidate()V

    .line 490
    return-void
.end method

.method private b(II)Z
    .locals 1

    .prologue
    .line 449
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(II)I
    .locals 2

    .prologue
    .line 468
    if-ne p1, p2, :cond_0

    .line 471
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, LFF;->c:Ljava/util/Random;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, LFF;->o:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public a(FF)LFF;
    .locals 6

    .prologue
    .line 159
    iget-object v0, p0, LFF;->m:Ljava/util/List;

    new-instance v1, LFJ;

    invoke-virtual {p0, p1}, LFF;->a(F)F

    move-result v2

    invoke-virtual {p0, p2}, LFF;->a(F)F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x168

    invoke-direct {v1, v2, v3, v4, v5}, LFJ;-><init>(FFII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-object p0
.end method

.method public a(LFE;)LFF;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, LFF;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object p0
.end method

.method public a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2, p3}, LFF;->a(Landroid/view/View;III)V

    .line 260
    return-void
.end method

.method public a(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, LFF;->a(Landroid/view/View;I)V

    .line 247
    invoke-direct {p0, p3, p4}, LFF;->a(II)V

    .line 248
    return-void
.end method

.method public b(F)LFF;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, LFF;->m:Ljava/util/List;

    new-instance v1, LFI;

    invoke-direct {v1, p1, p1}, LFI;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0
.end method
