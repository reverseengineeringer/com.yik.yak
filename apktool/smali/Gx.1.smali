.class public LGx;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:Landroid/graphics/Paint;

.field private final g:F

.field private final h:LGz;

.field private i:I

.field private j:F

.field private k:LGw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LGx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0, v5}, LGx;->setWillNotDraw(Z)V

    .line 62
    invoke-virtual {p0}, LGx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 64
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010030

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 68
    const/16 v2, 0x26

    invoke-static {v1, v2}, LGx;->a(IB)I

    move-result v2

    iput v2, p0, LGx;->e:I

    .line 71
    new-instance v2, LGz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LGz;-><init>(LGy;)V

    iput-object v2, p0, LGx;->h:LGz;

    .line 72
    iget-object v2, p0, LGx;->h:LGz;

    new-array v3, v6, [I

    const v4, -0xcc4a1b

    aput v4, v3, v5

    invoke-virtual {v2, v3}, LGz;->a([I)V

    .line 73
    iget-object v2, p0, LGx;->h:LGz;

    new-array v3, v6, [I

    const/16 v4, 0x20

    invoke-static {v1, v4}, LGx;->a(IB)I

    move-result v1

    aput v1, v3, v5

    invoke-virtual {v2, v3}, LGz;->b([I)V

    .line 76
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, LGx;->a:I

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, LGx;->b:Landroid/graphics/Paint;

    .line 78
    iget-object v1, p0, LGx;->b:Landroid/graphics/Paint;

    iget v2, p0, LGx;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, LGx;->c:I

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, LGx;->d:Landroid/graphics/Paint;

    .line 83
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, LGx;->g:F

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, LGx;->f:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, LGx;->f:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    return-void
.end method

.method private static a(IB)I
    .locals 3

    .prologue
    .line 93
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5

    .prologue
    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 104
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 105
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 106
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 107
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method a(IF)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, LGx;->i:I

    .line 131
    iput p2, p0, LGx;->j:F

    .line 132
    invoke-virtual {p0}, LGx;->invalidate()V

    .line 133
    return-void
.end method

.method public a(LGw;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, LGx;->k:LGw;

    .line 112
    invoke-virtual {p0}, LGx;->invalidate()V

    .line 113
    return-void
.end method

.method public varargs a([I)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, LGx;->k:LGw;

    .line 118
    iget-object v0, p0, LGx;->h:LGz;

    invoke-virtual {v0, p1}, LGz;->a([I)V

    .line 119
    invoke-virtual {p0}, LGx;->invalidate()V

    .line 120
    return-void
.end method

.method public varargs b([I)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, LGx;->k:LGw;

    .line 125
    iget-object v0, p0, LGx;->h:LGz;

    invoke-virtual {v0, p1}, LGz;->b([I)V

    .line 126
    invoke-virtual {p0}, LGx;->invalidate()V

    .line 127
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 137
    invoke-virtual {p0}, LGx;->getHeight()I

    move-result v6

    .line 138
    invoke-virtual {p0}, LGx;->getChildCount()I

    move-result v1

    .line 139
    iget-object v0, p0, LGx;->k:LGw;

    if-eqz v0, :cond_2

    iget-object v0, p0, LGx;->k:LGw;

    move-object v3, v0

    .line 144
    :goto_0
    if-lez v1, :cond_1

    .line 145
    iget v0, p0, LGx;->i:I

    invoke-virtual {p0, v0}, LGx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 148
    iget v0, p0, LGx;->i:I

    invoke-interface {v3, v0}, LGw;->a(I)I

    move-result v0

    .line 150
    iget v4, p0, LGx;->j:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    iget v4, p0, LGx;->i:I

    invoke-virtual {p0}, LGx;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 151
    iget v4, p0, LGx;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, LGw;->a(I)I

    move-result v3

    .line 152
    if-eq v0, v3, :cond_0

    .line 153
    iget v4, p0, LGx;->j:F

    invoke-static {v3, v0, v4}, LGx;->a(IIF)I

    move-result v0

    .line 157
    :cond_0
    iget v3, p0, LGx;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, LGx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 158
    iget v4, p0, LGx;->j:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, LGx;->j:F

    sub-float v5, v8, v5

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 160
    iget v4, p0, LGx;->j:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget v4, p0, LGx;->j:F

    sub-float v4, v8, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v1

    move v1, v2

    .line 164
    :goto_1
    iget-object v2, p0, LGx;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    int-to-float v1, v1

    iget v0, p0, LGx;->c:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, v3

    int-to-float v4, v6

    iget-object v5, p0, LGx;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    :cond_1
    iget v0, p0, LGx;->a:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, LGx;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, LGx;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, LGx;->h:LGz;

    move-object v3, v0

    goto/16 :goto_0

    :cond_3
    move v3, v1

    move v1, v2

    goto :goto_1
.end method
