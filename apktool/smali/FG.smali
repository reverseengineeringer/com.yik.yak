.class public LFG;
.super LFF;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, LFF;-><init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    .line 17
    const/16 v0, 0x32

    iput v0, p0, LFG;->a:I

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LFG;->c:Landroid/os/Handler;

    .line 27
    const/16 v0, 0xb4

    iput v0, p0, LFG;->k:I

    .line 28
    new-instance v0, LFH;

    invoke-direct {v0, p0}, LFH;-><init>(LFG;)V

    iput-object v0, p0, LFG;->l:Ljava/lang/Runnable;

    .line 40
    iput-object p2, p0, LFG;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    .line 41
    return-void
.end method

.method static synthetic a(LFG;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, LFG;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    iget v1, p0, LFG;->e:I

    if-ltz v1, :cond_0

    .line 116
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    sub-float/2addr v0, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 117
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 118
    int-to-float v0, v0

    iget v2, p0, LFG;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, LFG;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 119
    iget-object v0, p0, LFG;->j:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 120
    return-void

    .line 115
    :cond_0
    iget v1, p0, LFG;->h:I

    iget v2, p0, LFG;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, LFG;->h:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, LFG;->a()Landroid/content/Context;

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

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    const/16 v0, 0x32

    invoke-direct {p0, v0}, LFG;->b(I)I

    move-result v1

    .line 136
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 143
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 123
    iget v0, p0, LFG;->k:I

    const/16 v1, 0x167

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, LFG;->k:I

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    iget v1, p0, LFG;->k:I

    int-to-float v1, v1

    iget v2, p0, LFG;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, LFG;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 126
    iget-object v1, p0, LFG;->j:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 128
    return-void

    .line 123
    :cond_0
    iget v0, p0, LFG;->k:I

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, LFG;->e:I

    add-int/2addr v0, p1

    iput v0, p0, LFG;->e:I

    .line 86
    invoke-virtual {p0}, LFG;->invalidateSelf()V

    .line 87
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, LFG;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LFG;->j:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, LFG;->b:Z

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    iget-object v0, p0, LFG;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LFG;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LFG;->e:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-direct {p0, p1}, LFG;->a(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget-object v0, p0, LFG;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LFG;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LFG;->e:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    invoke-direct {p0, p1}, LFG;->b(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, LFG;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0, p1}, LFF;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 107
    const/16 v0, 0x32

    invoke-direct {p0, v0}, LFG;->b(I)I

    move-result v0

    iput v0, p0, LFG;->f:I

    .line 108
    iget v0, p0, LFG;->f:I

    iput v0, p0, LFG;->g:I

    .line 109
    iget v0, p0, LFG;->g:I

    neg-int v0, v0

    invoke-virtual {p0}, LFG;->b()Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b()I

    move-result v1

    iget v2, p0, LFG;->g:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, LFG;->e:I

    .line 110
    iget v0, p0, LFG;->e:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LFG;->h:I

    .line 111
    iput-object p1, p0, LFG;->i:Landroid/graphics/Rect;

    .line 112
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, LFG;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, LFG;->invalidateSelf()V

    .line 71
    iget-object v0, p0, LFG;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, LFG;->b:Z

    .line 51
    iget-object v0, p0, LFG;->c:Landroid/os/Handler;

    iget-object v1, p0, LFG;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xb4

    iput v0, p0, LFG;->k:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, LFG;->b:Z

    .line 58
    iget-object v0, p0, LFG;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
