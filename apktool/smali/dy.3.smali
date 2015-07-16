.class public Ldy;
.super Ldm;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    div-float v0, p1, p4

    sub-float/2addr v0, v1

    mul-float/2addr v0, v0

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
