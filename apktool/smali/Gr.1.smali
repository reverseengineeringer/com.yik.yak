.class public LGr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGl;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, LGr;->a:F

    .line 17
    iput p2, p0, LGr;->b:F

    .line 18
    iput p3, p0, LGr;->c:I

    .line 19
    iput p4, p0, LGr;->d:I

    .line 21
    :goto_0
    iget v0, p0, LGr;->c:I

    if-gez v0, :cond_0

    .line 22
    iget v0, p0, LGr;->c:I

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, LGr;->c:I

    goto :goto_0

    .line 24
    :cond_0
    :goto_1
    iget v0, p0, LGr;->d:I

    if-gez v0, :cond_1

    .line 25
    iget v0, p0, LGr;->d:I

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, LGr;->d:I

    goto :goto_1

    .line 28
    :cond_1
    iget v0, p0, LGr;->c:I

    iget v1, p0, LGr;->d:I

    if-le v0, v1, :cond_2

    .line 29
    iget v0, p0, LGr;->c:I

    .line 30
    iget v1, p0, LGr;->d:I

    iput v1, p0, LGr;->c:I

    .line 31
    iput v0, p0, LGr;->d:I

    .line 33
    :cond_2
    return-void
.end method


# virtual methods
.method public a(LGk;Ljava/util/Random;)V
    .locals 6

    .prologue
    .line 37
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, LGr;->b:F

    iget v2, p0, LGr;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, LGr;->a:F

    add-float/2addr v1, v0

    .line 39
    iget v0, p0, LGr;->d:I

    iget v2, p0, LGr;->c:I

    if-ne v0, v2, :cond_0

    .line 40
    iget v0, p0, LGr;->c:I

    .line 44
    :goto_0
    int-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 45
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p1, LGk;->g:F

    .line 46
    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p1, LGk;->h:F

    .line 47
    return-void

    .line 42
    :cond_0
    iget v0, p0, LGr;->d:I

    iget v2, p0, LGr;->c:I

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v2, p0, LGr;->c:I

    add-int/2addr v0, v2

    goto :goto_0
.end method
