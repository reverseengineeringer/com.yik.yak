.class LGR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LGO;

.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(LGO;FFFF)V
    .locals 2

    .prologue
    .line 954
    iput-object p1, p0, LGR;->a:LGO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput p4, p0, LGR;->b:F

    .line 956
    iput p5, p0, LGR;->c:F

    .line 957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LGR;->d:J

    .line 958
    iput p2, p0, LGR;->e:F

    .line 959
    iput p3, p0, LGR;->f:F

    .line 960
    return-void
.end method

.method private a()F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LGR;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, LGR;->a:LGO;

    iget v1, v1, LGO;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 984
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 985
    sget-object v1, LGO;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 986
    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 964
    iget-object v0, p0, LGR;->a:LGO;

    invoke-virtual {v0}, LGO;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 965
    if-nez v0, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    invoke-direct {p0}, LGR;->a()F

    move-result v1

    .line 970
    iget v2, p0, LGR;->e:F

    iget v3, p0, LGR;->f:F

    iget v4, p0, LGR;->e:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 971
    iget-object v3, p0, LGR;->a:LGO;

    invoke-virtual {v3}, LGO;->g()F

    move-result v3

    div-float/2addr v2, v3

    .line 973
    iget-object v3, p0, LGR;->a:LGO;

    invoke-static {v3}, LGO;->b(LGO;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, LGR;->b:F

    iget v5, p0, LGR;->c:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 974
    iget-object v2, p0, LGR;->a:LGO;

    invoke-static {v2}, LGO;->c(LGO;)V

    .line 977
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 978
    invoke-static {v0, p0}, LGA;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
