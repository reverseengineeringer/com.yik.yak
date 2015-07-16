.class public LGi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGm;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:F

.field private f:F

.field private g:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 9

    .prologue
    .line 27
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, LGi;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    .line 28
    return-void
.end method

.method public constructor <init>(IIJJLandroid/view/animation/Interpolator;)V
    .locals 5

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, LGi;->a:I

    .line 18
    iput p2, p0, LGi;->b:I

    .line 19
    iput-wide p3, p0, LGi;->c:J

    .line 20
    iput-wide p5, p0, LGi;->d:J

    .line 21
    iget-wide v0, p0, LGi;->d:J

    iget-wide v2, p0, LGi;->c:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iput v0, p0, LGi;->e:F

    .line 22
    iget v0, p0, LGi;->b:I

    iget v1, p0, LGi;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, LGi;->f:F

    .line 23
    iput-object p7, p0, LGi;->g:Landroid/view/animation/Interpolator;

    .line 24
    return-void
.end method


# virtual methods
.method public a(LGk;J)V
    .locals 4

    .prologue
    .line 32
    iget-wide v0, p0, LGi;->c:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 33
    iget v0, p0, LGi;->a:I

    iput v0, p1, LGk;->d:I

    .line 41
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-wide v0, p0, LGi;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 35
    iget v0, p0, LGi;->b:I

    iput v0, p1, LGk;->d:I

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, LGi;->g:Landroid/view/animation/Interpolator;

    iget-wide v2, p0, LGi;->c:J

    sub-long v2, p2, v2

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, LGi;->e:F

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 38
    iget v1, p0, LGi;->a:I

    int-to-float v1, v1

    iget v2, p0, LGi;->f:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 39
    iput v0, p1, LGk;->d:I

    goto :goto_0
.end method
