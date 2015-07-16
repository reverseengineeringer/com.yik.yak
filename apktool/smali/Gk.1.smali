.class public LGk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field protected k:Landroid/graphics/Bitmap;

.field protected l:J

.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/Paint;

.field private o:F

.field private p:F

.field private q:F

.field private r:J

.field private s:I

.field private t:I

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LGm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LGk;->c:F

    .line 15
    const/16 v0, 0xff

    iput v0, p0, LGk;->d:I

    .line 16
    iput v1, p0, LGk;->e:F

    .line 17
    iput v1, p0, LGk;->f:F

    .line 18
    iput v1, p0, LGk;->g:F

    .line 19
    iput v1, p0, LGk;->h:F

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LGk;->m:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LGk;->n:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, LGk;-><init>()V

    .line 43
    iput-object p1, p0, LGk;->k:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;)LGk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "LGm;",
            ">;)",
            "LGk;"
        }
    .end annotation

    .prologue
    .line 87
    iput-wide p1, p0, LGk;->l:J

    .line 89
    iput-object p3, p0, LGk;->u:Ljava/util/List;

    .line 90
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LGk;->c:F

    .line 48
    const/16 v0, 0xff

    iput v0, p0, LGk;->d:I

    .line 49
    return-void
.end method

.method public a(JFF)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LGk;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LGk;->s:I

    .line 53
    iget-object v0, p0, LGk;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LGk;->t:I

    .line 55
    iget v0, p0, LGk;->s:I

    int-to-float v0, v0

    sub-float v0, p3, v0

    iput v0, p0, LGk;->o:F

    .line 56
    iget v0, p0, LGk;->t:I

    int-to-float v0, v0

    sub-float v0, p4, v0

    iput v0, p0, LGk;->p:F

    .line 57
    iget v0, p0, LGk;->o:F

    iput v0, p0, LGk;->a:F

    .line 58
    iget v0, p0, LGk;->p:F

    iput v0, p0, LGk;->b:F

    .line 60
    iput-wide p1, p0, LGk;->r:J

    .line 61
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, LGk;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 79
    iget-object v0, p0, LGk;->m:Landroid/graphics/Matrix;

    iget v1, p0, LGk;->q:F

    iget v2, p0, LGk;->s:I

    int-to-float v2, v2

    iget v3, p0, LGk;->t:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 80
    iget-object v0, p0, LGk;->m:Landroid/graphics/Matrix;

    iget v1, p0, LGk;->c:F

    iget v2, p0, LGk;->c:F

    iget v3, p0, LGk;->s:I

    int-to-float v3, v3

    iget v4, p0, LGk;->t:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 81
    iget-object v0, p0, LGk;->m:Landroid/graphics/Matrix;

    iget v1, p0, LGk;->a:F

    iget v2, p0, LGk;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    iget-object v0, p0, LGk;->n:Landroid/graphics/Paint;

    iget v1, p0, LGk;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v0, p0, LGk;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, LGk;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, LGk;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method public a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-wide v2, p0, LGk;->l:J

    sub-long v2, p1, v2

    .line 65
    iget-wide v4, p0, LGk;->r:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 68
    :cond_0
    iget v1, p0, LGk;->o:F

    iget v4, p0, LGk;->g:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, LGk;->i:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, p0, LGk;->a:F

    .line 69
    iget v1, p0, LGk;->p:F

    iget v4, p0, LGk;->h:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, LGk;->j:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, p0, LGk;->b:F

    .line 70
    iget v1, p0, LGk;->e:F

    iget v4, p0, LGk;->f:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, p0, LGk;->q:F

    move v1, v0

    .line 71
    :goto_1
    iget-object v0, p0, LGk;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 72
    iget-object v0, p0, LGk;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGm;

    invoke-interface {v0, p0, v2, v3}, LGm;->a(LGk;J)V

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 74
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
