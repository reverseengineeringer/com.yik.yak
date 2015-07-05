.class public LGg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGa;
.implements LGf;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field private static final d:Z


# instance fields
.field private A:Landroid/widget/ImageView$ScaleType;

.field b:I

.field private c:I

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/RectF;

.field private final i:[F

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/GestureDetector;

.field private p:LFY;

.field private q:LGl;

.field private r:LGm;

.field private s:LGn;

.field private t:Landroid/view/View$OnLongClickListener;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:LGk;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, LGg;->a:Landroid/view/animation/Interpolator;

    .line 56
    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LGg;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, LGg;->c:I

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LGg;->e:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LGg;->f:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LGg;->h:Landroid/graphics/RectF;

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, LGg;->i:[F

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, LGg;->b:I

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LGg;->j:F

    .line 65
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, LGg;->k:F

    .line 66
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, LGg;->l:F

    .line 67
    iput-boolean v3, p0, LGg;->m:Z

    .line 80
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LGg;->n:Ljava/lang/ref/WeakReference;

    .line 85
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 86
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    :cond_0
    invoke-static {p1}, LGg;->b(Landroid/widget/ImageView;)V

    .line 95
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, LGq;->a(Landroid/content/Context;LGf;)LFY;

    move-result-object v0

    iput-object v0, p0, LGg;->p:LFY;

    .line 102
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LGh;

    invoke-direct {v2, p0}, LGh;-><init>(LGg;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, LGg;->o:Landroid/view/GestureDetector;

    .line 114
    iget-object v0, p0, LGg;->o:Landroid/view/GestureDetector;

    new-instance v1, LFU;

    invoke-direct {v1, p0}, LFU;-><init>(LGg;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 117
    invoke-virtual {p0, v3}, LGg;->b(Z)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, LGg;->i:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 783
    iget-object v0, p0, LGg;->i:[F

    aget v0, v0, p2

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 743
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, LGg;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 750
    iget-object v0, p0, LGg;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 751
    iget-object v0, p0, LGg;->h:Landroid/graphics/RectF;

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(LGg;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LGg;->t:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic a(LGg;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, LGg;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 818
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-direct {p0, v0}, LGg;->c(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 824
    invoke-direct {p0, v0}, LGg;->d(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 825
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 826
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 828
    iget-object v4, p0, LGg;->e:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 830
    int-to-float v4, v2

    div-float v4, v1, v4

    .line 831
    int-to-float v5, v3

    div-float v5, v0, v5

    .line 833
    iget-object v6, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    .line 834
    iget-object v4, p0, LGg;->e:Landroid/graphics/Matrix;

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 869
    :goto_1
    invoke-direct {p0}, LGg;->r()V

    goto :goto_0

    .line 837
    :cond_2
    iget-object v6, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    .line 838
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 839
    iget-object v5, p0, LGg;->e:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 840
    iget-object v5, p0, LGg;->e:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 843
    :cond_3
    iget-object v6, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    .line 844
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 845
    iget-object v5, p0, LGg;->e:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 846
    iget-object v5, p0, LGg;->e:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 850
    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 851
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 853
    sget-object v0, LGi;->a:[I

    iget-object v1, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 860
    :pswitch_0
    iget-object v0, p0, LGg;->e:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 855
    :pswitch_1
    iget-object v0, p0, LGg;->e:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 864
    :pswitch_2
    iget-object v0, p0, LGg;->e:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 868
    :pswitch_3
    iget-object v0, p0, LGg;->e:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 853
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/widget/ImageView;)Z
    .locals 1

    .prologue
    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(LGg;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static b(FFF)V
    .locals 2

    .prologue
    .line 122
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 797
    if-eqz v0, :cond_0

    .line 799
    invoke-direct {p0}, LGg;->p()V

    .line 800
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 803
    iget-object v0, p0, LGg;->q:LGl;

    if-eqz v0, :cond_0

    .line 804
    invoke-direct {p0, p1}, LGg;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 805
    :cond_0
    return-void
.end method

.method private static b(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 164
    if-eqz p0, :cond_0

    instance-of v0, p0, LGa;

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    :cond_0
    return-void
.end method

.method private static b(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 146
    :cond_0
    sget-object v0, LGi;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic c(LGg;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, LGg;->o()V

    return-void
.end method

.method private d(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, LGg;->d:Z

    return v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, LGg;->y:LGk;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, LGg;->y:LGk;

    invoke-virtual {v0}, LGk;->a()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, LGg;->y:LGk;

    .line 648
    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, LGg;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, LGg;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->b(Landroid/graphics/Matrix;)V

    .line 657
    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    instance-of v1, v0, LGa;

    if-nez v1, :cond_0

    .line 667
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    return-void
.end method

.method private q()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 675
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v4

    .line 676
    if-nez v4, :cond_0

    move v0, v2

    .line 733
    :goto_0
    return v0

    .line 680
    :cond_0
    invoke-virtual {p0}, LGg;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v5

    .line 681
    if-nez v5, :cond_1

    move v0, v2

    .line 682
    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 688
    invoke-direct {p0, v4}, LGg;->d(Landroid/widget/ImageView;)I

    move-result v7

    .line 689
    int-to-float v8, v7

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_2

    .line 690
    sget-object v8, LGi;->a:[I

    iget-object v9, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 698
    int-to-float v7, v7

    sub-float v0, v7, v0

    div-float/2addr v0, v10

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    .line 707
    :goto_1
    invoke-direct {p0, v4}, LGg;->c(Landroid/widget/ImageView;)I

    move-result v4

    .line 708
    int-to-float v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    .line 709
    sget-object v1, LGi;->a:[I

    iget-object v2, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 717
    int-to-float v1, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v10

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 720
    :goto_2
    const/4 v2, 0x2

    iput v2, p0, LGg;->c:I

    .line 732
    :goto_3
    iget-object v2, p0, LGg;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v0, v3

    .line 733
    goto :goto_0

    .line 692
    :pswitch_0
    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 693
    goto :goto_1

    .line 695
    :pswitch_1
    int-to-float v7, v7

    sub-float v0, v7, v0

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    .line 696
    goto :goto_1

    .line 701
    :cond_2
    iget v0, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 702
    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 703
    :cond_3
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v7

    cmpg-float v0, v0, v8

    if-gez v0, :cond_7

    .line 704
    int-to-float v0, v7

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v7

    goto :goto_1

    .line 711
    :pswitch_2
    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    .line 712
    goto :goto_2

    .line 714
    :pswitch_3
    int-to-float v1, v4

    sub-float/2addr v1, v6

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 715
    goto :goto_2

    .line 721
    :cond_4
    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_5

    .line 722
    iput v2, p0, LGg;->c:I

    .line 723
    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_3

    .line 724
    :cond_5
    iget v2, v5, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_6

    .line 725
    int-to-float v1, v4

    iget v2, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 726
    iput v3, p0, LGg;->c:I

    goto :goto_3

    .line 728
    :cond_6
    const/4 v2, -0x1

    iput v2, p0, LGg;->c:I

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 709
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private r()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 791
    invoke-virtual {p0}, LGg;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->b(Landroid/graphics/Matrix;)V

    .line 792
    invoke-direct {p0}, LGg;->q()Z

    .line 793
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, LGg;->n:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, LGg;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 206
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    invoke-direct {p0}, LGg;->n()V

    .line 212
    :cond_2
    iget-object v0, p0, LGg;->o:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, LGg;->o:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 217
    :cond_3
    iput-object v3, p0, LGg;->q:LGl;

    .line 218
    iput-object v3, p0, LGg;->r:LGm;

    .line 219
    iput-object v3, p0, LGg;->s:LGn;

    .line 222
    iput-object v3, p0, LGg;->n:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 262
    invoke-direct {p0}, LGg;->o()V

    .line 263
    return-void
.end method

.method public a(FF)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 384
    iget-object v0, p0, LGg;->p:LFY;

    invoke-interface {v0}, LFY;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    sget-boolean v0, LGg;->d:Z

    if-eqz v0, :cond_2

    .line 389
    invoke-static {}, LGc;->a()LGd;

    const-string v0, "onDrag: dx: %.2f. dy: %.2f"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    :cond_2
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 394
    iget-object v1, p0, LGg;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 395
    invoke-direct {p0}, LGg;->o()V

    .line 406
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 407
    iget-boolean v1, p0, LGg;->m:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, LGg;->p:LFY;

    invoke-interface {v1}, LFY;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 408
    iget v1, p0, LGg;->c:I

    if-eq v1, v5, :cond_4

    iget v1, p0, LGg;->c:I

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_4

    :cond_3
    iget v1, p0, LGg;->c:I

    if-ne v1, v3, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 411
    :cond_4
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 415
    :cond_5
    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 4

    .prologue
    .line 474
    sget-boolean v0, LGg;->d:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-static {}, LGc;->a()LGd;

    const-string v0, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 481
    :cond_0
    invoke-virtual {p0}, LGg;->g()F

    move-result v0

    iget v1, p0, LGg;->l:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 482
    :cond_1
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 483
    invoke-direct {p0}, LGg;->o()V

    .line 485
    :cond_2
    return-void
.end method

.method public a(FFFF)V
    .locals 6

    .prologue
    .line 424
    sget-boolean v0, LGg;->d:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, LGc;->a()LGd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFling. sX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Vx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Vy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    :cond_0
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 431
    new-instance v1, LGk;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LGk;-><init>(LGg;Landroid/content/Context;)V

    iput-object v1, p0, LGg;->y:LGk;

    .line 432
    iget-object v1, p0, LGg;->y:LGk;

    invoke-direct {p0, v0}, LGg;->c(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, LGg;->d(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, LGk;->a(IIII)V

    .line 434
    iget-object v1, p0, LGg;->y:LGk;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method

.method public a(FFFZ)V
    .locals 7

    .prologue
    .line 587
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v6

    .line 589
    if-eqz v6, :cond_1

    .line 591
    iget v0, p0, LGg;->j:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, LGg;->l:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 592
    :cond_0
    invoke-static {}, LGc;->a()LGd;

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 599
    :cond_2
    if-eqz p4, :cond_3

    .line 600
    new-instance v0, LGj;

    invoke-virtual {p0}, LGg;->g()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, LGj;-><init>(LGg;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 603
    :cond_3
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 604
    invoke-direct {p0}, LGg;->o()V

    goto :goto_0
.end method

.method public a(FZ)V
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, p1, v1, v0, p2}, LGg;->a(FFFZ)V

    .line 582
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 764
    if-gez p1, :cond_0

    .line 765
    const/16 p1, 0xc8

    .line 766
    :cond_0
    iput p1, p0, LGg;->b:I

    .line 767
    return-void
.end method

.method public a(LGl;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, LGg;->q:LGl;

    .line 550
    return-void
.end method

.method public a(LGm;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, LGg;->r:LGm;

    .line 560
    return-void
.end method

.method public a(LGn;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, LGg;->s:LGn;

    .line 570
    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, LGg;->o:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, LGg;->o:Landroid/view/GestureDetector;

    new-instance v1, LFU;

    invoke-direct {v1, p0}, LFU;-><init>(LGg;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, LGg;->t:Landroid/view/View$OnLongClickListener;

    .line 545
    return-void
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 374
    invoke-static {p1}, LGg;->b(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 375
    iput-object p1, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    .line 378
    invoke-virtual {p0}, LGg;->k()V

    .line 380
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 539
    iput-boolean p1, p0, LGg;->m:Z

    .line 540
    return-void
.end method

.method public b()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, LGg;->q()Z

    .line 228
    invoke-virtual {p0}, LGg;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 268
    invoke-direct {p0}, LGg;->o()V

    .line 269
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 611
    iput-boolean p1, p0, LGg;->z:Z

    .line 612
    invoke-virtual {p0}, LGg;->k()V

    .line 613
    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, LGg;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, LGg;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, LGg;->a()V

    .line 281
    :cond_1
    return-object v0
.end method

.method public c(F)V
    .locals 2

    .prologue
    .line 307
    iget v0, p0, LGg;->k:F

    iget v1, p0, LGg;->l:F

    invoke-static {p1, v0, v1}, LGg;->b(FFF)V

    .line 308
    iput p1, p0, LGg;->j:F

    .line 309
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, LGg;->j:F

    return v0
.end method

.method public d(F)V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, LGg;->j:F

    iget v1, p0, LGg;->l:F

    invoke-static {v0, p1, v1}, LGg;->b(FFF)V

    .line 331
    iput p1, p0, LGg;->k:F

    .line 332
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 325
    iget v0, p0, LGg;->k:F

    return v0
.end method

.method public e(F)V
    .locals 2

    .prologue
    .line 353
    iget v0, p0, LGg;->j:F

    iget v1, p0, LGg;->k:F

    invoke-static {v0, v1, p1}, LGg;->b(FFF)V

    .line 354
    iput p1, p0, LGg;->l:F

    .line 355
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 348
    iget v0, p0, LGg;->l:F

    return v0
.end method

.method public f(F)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LGg;->a(FZ)V

    .line 365
    return-void
.end method

.method public g()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 359
    iget-object v0, p0, LGg;->g:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LGg;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, LGg;->g:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, LGg;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public h()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, LGg;->A:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public i()LGm;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, LGg;->r:LGm;

    return-object v0
.end method

.method public j()LGn;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, LGg;->s:LGn;

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    iget-boolean v1, p0, LGg;->z:Z

    if-eqz v1, :cond_1

    .line 621
    invoke-static {v0}, LGg;->b(Landroid/widget/ImageView;)V

    .line 624
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->a(Landroid/graphics/drawable/Drawable;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-direct {p0}, LGg;->r()V

    goto :goto_0
.end method

.method public l()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, LGg;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, LGg;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 639
    iget-object v0, p0, LGg;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, LGg;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 640
    iget-object v0, p0, LGg;->f:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 439
    invoke-virtual {p0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_1

    .line 442
    iget-boolean v1, p0, LGg;->z:Z

    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 444
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 445
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 446
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 455
    iget v5, p0, LGg;->u:I

    if-ne v1, v5, :cond_0

    iget v5, p0, LGg;->w:I

    if-ne v3, v5, :cond_0

    iget v5, p0, LGg;->x:I

    if-ne v4, v5, :cond_0

    iget v5, p0, LGg;->v:I

    if-eq v2, v5, :cond_1

    .line 458
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->a(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iput v1, p0, LGg;->u:I

    .line 462
    iput v2, p0, LGg;->v:I

    .line 463
    iput v3, p0, LGg;->w:I

    .line 464
    iput v4, p0, LGg;->x:I

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, LGg;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 489
    const/4 v1, 0x0

    .line 491
    iget-boolean v0, p0, LGg;->z:Z

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, LGg;->a(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 493
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 523
    :goto_0
    iget-object v1, p0, LGg;->p:LFY;

    if-eqz v1, :cond_1

    iget-object v1, p0, LGg;->p:LFY;

    invoke-interface {v1, p2}, LFY;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 529
    :cond_1
    iget-object v1, p0, LGg;->o:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, LGg;->o:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 534
    :cond_2
    :goto_1
    return v0

    .line 497
    :pswitch_1
    if-eqz v0, :cond_3

    .line 498
    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 500
    :cond_3
    invoke-direct {p0}, LGg;->n()V

    move v0, v1

    .line 505
    goto :goto_0

    .line 511
    :pswitch_2
    invoke-virtual {p0}, LGg;->g()F

    move-result v0

    iget v2, p0, LGg;->j:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 512
    invoke-virtual {p0}, LGg;->b()Landroid/graphics/RectF;

    move-result-object v5

    .line 513
    if-eqz v5, :cond_0

    .line 514
    new-instance v0, LGj;

    invoke-virtual {p0}, LGg;->g()F

    move-result v2

    iget v3, p0, LGg;->j:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LGj;-><init>(LGg;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 516
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
