.class public Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/animation/Animation;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/animation/Interpolator;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:LFF;

.field private j:I

.field private k:Landroid/view/animation/Animation$AnimationListener;

.field private l:Z

.field private m:I

.field private n:Z

.field private o:F

.field private p:I

.field private final q:Landroid/view/animation/Animation;

.field private r:Z

.field private s:Landroid/content/Context;

.field private t:LFE;

.field private u:Landroid/view/animation/Animation$AnimationListener;

.field private v:[I

.field private w:Landroid/util/AttributeSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, LFA;

    invoke-direct {v0, p0}, LFA;-><init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a:Landroid/view/animation/Animation;

    .line 54
    new-instance v0, LFB;

    invoke-direct {v0, p0}, LFB;-><init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->k:Landroid/view/animation/Animation$AnimationListener;

    .line 75
    new-instance v0, LFC;

    invoke-direct {v0, p0}, LFC;-><init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->q:Landroid/view/animation/Animation;

    .line 88
    new-instance v0, LFD;

    invoke-direct {v0, p0}, LFD;-><init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->u:Landroid/view/animation/Animation$AnimationListener;

    .line 124
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-object p2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->w:Landroid/util/AttributeSet;

    .line 128
    iput-object p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->s:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->w:Landroid/util/AttributeSet;

    sget-object v2, LzZ;->PullRefreshLayout:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 133
    const v2, 0x7f090004

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->v:[I

    .line 138
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d:Landroid/view/animation/Interpolator;

    .line 139
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->e:I

    .line 140
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->f:I

    .line 141
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h:I

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->g:I

    .line 143
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshStyle(I)V

    .line 147
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 411
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 412
    if-gez v0, :cond_0

    .line 413
    const/high16 v0, -0x40800000    # -1.0f

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    return p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LFF;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    return-object v0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->p:I

    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->p:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 377
    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 378
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(IZ)V

    .line 379
    return-void
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 421
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 422
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    invoke-virtual {v0, p1}, LFF;->a(I)V

    .line 423
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    .line 424
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->invalidate()V

    .line 427
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 402
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 403
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 404
    iget v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    if-ne v1, v2, :cond_0

    .line 405
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 406
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    .line 408
    :cond_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;F)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(F)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;IZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(IZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    if-eq v0, p1, :cond_0

    .line 389
    iput-boolean p2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->r:Z

    .line 390
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c()V

    .line 391
    iput-boolean p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    .line 392
    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    if-eqz v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->e()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    if-eq v1, v2, :cond_2

    .line 228
    iput-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    .line 225
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->g:I

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 356
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->p:I

    .line 357
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 358
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 361
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 362
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->p:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 366
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->p:I

    .line 367
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 368
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->q:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 369
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->q:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 370
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->q:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->u:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 371
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 372
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    return-void
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_4

    .line 431
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 433
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 440
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 433
    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    return v0
.end method

.method public static synthetic g(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->r:Z

    return v0
.end method

.method public static synthetic h(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LFE;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->t:LFE;

    return-object v0
.end method

.method public static synthetic i(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    invoke-virtual {v0}, LFF;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->g:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 241
    packed-switch v1, :pswitch_data_0

    .line 278
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-direct {p0, v0, v4}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(IZ)V

    .line 244
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    .line 245
    iput-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    .line 246
    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    invoke-direct {p0, p1, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 247
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 250
    iput v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->o:F

    goto :goto_1

    .line 253
    :pswitch_2
    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    if-eq v1, v3, :cond_0

    .line 256
    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    invoke-direct {p0, p1, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 257
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 260
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->o:F

    sub-float v0, v1, v0

    .line 265
    iget v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->e:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    if-nez v0, :cond_2

    .line 266
    iput-boolean v4, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    goto :goto_1

    .line 271
    :pswitch_3
    iput-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    .line 272
    iput v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    goto :goto_1

    .line 275
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c()V

    .line 463
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getMeasuredHeight()I

    move-result v0

    .line 467
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getMeasuredWidth()I

    move-result v1

    .line 468
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 469
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 470
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingRight()I

    move-result v4

    .line 471
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingBottom()I

    move-result v5

    .line 473
    iget-object v6, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    iget v7, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    add-int/2addr v7, v3

    add-int v8, v2, v1

    sub-int/2addr v8, v4

    add-int v9, v3, v0

    sub-int/2addr v9, v5

    iget v10, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 475
    iget-object v6, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    add-int/2addr v0, v3

    sub-int/2addr v0, v5

    invoke-virtual {v6, v2, v3, v1, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 210
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c()V

    .line 211
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 215
    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 216
    iget-object v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 217
    iget-object v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 284
    iget-boolean v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    if-nez v2, :cond_1

    .line 285
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 290
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 352
    goto :goto_0

    .line 292
    :pswitch_1
    iget v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 293
    if-ltz v2, :cond_0

    .line 297
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 299
    iget v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->o:F

    sub-float/2addr v2, v3

    .line 300
    mul-float/2addr v2, v4

    .line 301
    iget v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h:I

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 302
    cmpg-float v4, v3, v6

    if-ltz v4, :cond_0

    .line 305
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 308
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 309
    iget v4, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->g:I

    int-to-float v4, v4

    .line 310
    mul-float v5, v4, v12

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 312
    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v2, v5

    float-to-double v6, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v2, v5

    float-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v2, v6

    mul-float/2addr v2, v12

    .line 314
    mul-float/2addr v2, v4

    mul-float/2addr v2, v12

    .line 315
    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 316
    iget-object v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :cond_2
    iget v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->j:I

    sub-int v0, v2, v0

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(IZ)V

    goto :goto_1

    .line 326
    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 327
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    goto :goto_1

    .line 330
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 334
    :pswitch_4
    iget v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 337
    iget v2, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 338
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 339
    iget v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->o:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    .line 340
    iput-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->n:Z

    .line 341
    iget v3, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 342
    invoke-direct {p0, v1, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(ZZ)V

    .line 347
    :goto_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->m:I

    goto/16 :goto_0

    .line 344
    :cond_3
    iput-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    .line 345
    invoke-direct {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d()V

    goto :goto_2

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAnimationBackgroundColor(I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public setColorSchemeColors([I)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->v:[I

    .line 168
    return-void
.end method

.method public setMaxDragDistance(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h:I

    iput p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->g:I

    .line 164
    return-void
.end method

.method public setOnRefreshListener(LFE;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->t:LFE;

    .line 484
    return-void
.end method

.method public setRefreshImage(I)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, LFF;->a(Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-void
.end method

.method public setRefreshImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    invoke-virtual {v0, p1}, LFF;->a(Landroid/graphics/drawable/Drawable;)V

    .line 196
    return-void
.end method

.method public setRefreshStyle(I)V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshing(Z)V

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 187
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Type does not exist"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    new-instance v0, LFG;

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LFG;-><init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-void

    .line 184
    :pswitch_1
    new-instance v0, LFy;

    invoke-virtual {p0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LFy;-><init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    iput-object v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i:LFF;

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRefreshing(Z)V
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->l:Z

    if-eq v0, p1, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(ZZ)V

    .line 385
    :cond_0
    return-void
.end method
