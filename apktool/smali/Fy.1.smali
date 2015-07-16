.class public LFy;
.super LFF;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/util/DisplayMetrics;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/Runnable;

.field private o:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

.field private p:Landroid/graphics/Paint;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, LFF;-><init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LFy;->b:Landroid/os/Handler;

    .line 23
    iput v1, p0, LFy;->g:I

    .line 24
    iput v1, p0, LFy;->h:I

    .line 27
    iput v1, p0, LFy;->k:I

    .line 28
    iput v1, p0, LFy;->l:I

    .line 30
    iput v1, p0, LFy;->m:I

    .line 31
    new-instance v0, LFz;

    invoke-direct {v0, p0}, LFz;-><init>(LFy;)V

    iput-object v0, p0, LFy;->n:Ljava/lang/Runnable;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LFy;->p:Landroid/graphics/Paint;

    .line 42
    iput v1, p0, LFy;->q:I

    .line 46
    iput-object p2, p0, LFy;->o:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, LFy;->j:Landroid/util/DisplayMetrics;

    .line 49
    return-void
.end method

.method static synthetic a(LFy;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, LFy;->m:I

    return v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 119
    iget-object v0, p0, LFy;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, LFy;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v0, p0, LFy;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, LFy;->p:Landroid/graphics/Paint;

    iget v1, p0, LFy;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, LFy;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget v0, p0, LFy;->c:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    const/4 v1, 0x0

    int-to-float v2, v0

    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, LFy;->f:I

    iget v4, p0, LFy;->c:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, LFy;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    return-void

    .line 127
    :cond_0
    iget v0, p0, LFy;->c:I

    goto :goto_0
.end method

.method static synthetic b(LFy;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, LFy;->h:I

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 165
    :try_start_0
    iget v1, p0, LFy;->c:I

    if-ltz v1, :cond_1

    .line 166
    :goto_0
    iget v1, p0, LFy;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 168
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    .line 169
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, LAS;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x280

    const/16 v5, 0x118

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, LFy;->d:I

    iget v6, p0, LFy;->e:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 174
    :cond_0
    :goto_1
    return-void

    .line 165
    :cond_1
    iget v1, p0, LFy;->f:I

    iget v2, p0, LFy;->c:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, LFy;->f:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(LFy;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, LFy;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 178
    :try_start_0
    iget v0, p0, LFy;->m:I

    iget v1, p0, LFy;->h:I

    if-ge v0, v1, :cond_0

    .line 179
    iget v0, p0, LFy;->m:I

    invoke-static {v0}, LAS;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x280

    const/16 v5, 0x118

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, LFy;->d:I

    iget v6, p0, LFy;->e:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 180
    iget v0, p0, LFy;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LFy;->m:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, LFy;->c:I

    add-int/2addr v0, p1

    iput v0, p0, LFy;->c:I

    .line 94
    invoke-virtual {p0}, LFy;->invalidateSelf()V

    .line 95
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, LFy;->a:Z

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    invoke-direct {p0, p1}, LFy;->a(Landroid/graphics/Canvas;)V

    .line 102
    iget v0, p0, LFy;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 103
    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LFy;->d:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LFy;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    :goto_0
    invoke-direct {p0, p1}, LFy;->b(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    :goto_1
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LFy;->d:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LFy;->c:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    invoke-direct {p0, p1}, LFy;->a(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LFy;->d:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    invoke-direct {p0, p1}, LFy;->c(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, LFy;->a:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    invoke-super {p0, p1}, LFF;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 135
    iput-object p1, p0, LFy;->i:Landroid/graphics/Rect;

    .line 136
    iget-object v0, p0, LFy;->j:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, LFy;->l:I

    .line 137
    iget-object v0, p0, LFy;->j:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, LFy;->k:I

    .line 138
    invoke-static {}, LAS;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, LFy;->d:I

    .line 140
    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, LFy;->e:I

    .line 147
    :goto_0
    iget v0, p0, LFy;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, LFy;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 148
    iget v0, p0, LFy;->k:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, LFy;->e:I

    .line 150
    iget v0, p0, LFy;->e:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4084000000000000L    # 640.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4071800000000000L    # 280.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, LFy;->d:I

    .line 153
    :cond_0
    iget-object v0, p0, LFy;->o:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    iget v1, p0, LFy;->e:I

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setMaxDragDistance(I)V

    .line 155
    sget-object v0, LAS;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, LFy;->g:I

    .line 156
    sget-object v0, LAS;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, LFy;->h:I

    .line 157
    invoke-static {}, LAS;->b()I

    move-result v0

    iput v0, p0, LFy;->q:I

    .line 158
    iget v0, p0, LFy;->e:I

    neg-int v0, v0

    iput v0, p0, LFy;->c:I

    .line 159
    iget v0, p0, LFy;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LFy;->f:I

    .line 161
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, LAS;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 143
    iget-object v1, p0, LFy;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, LFy;->d:I

    .line 144
    invoke-static {v3}, LAS;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LFy;->e:I

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, LFy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, LFy;->invalidateSelf()V

    .line 78
    iget-object v0, p0, LFy;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, LFy;->a:Z

    .line 59
    iget-object v0, p0, LFy;->b:Landroid/os/Handler;

    iget-object v1, p0, LFy;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput v0, p0, LFy;->m:I

    .line 65
    iput-boolean v0, p0, LFy;->a:Z

    .line 66
    iget-object v0, p0, LFy;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
