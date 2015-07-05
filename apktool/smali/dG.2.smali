.class public LdG;
.super Ldq;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 37
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    div-float v0, p1, p4

    cmpl-float v1, v0, v6

    if-nez v1, :cond_1

    add-float v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p4

    .line 40
    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, v1, v2

    .line 41
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v0, v6

    mul-float/2addr v3, v0

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p3

    mul-float/2addr v0, p4

    sub-float/2addr v0, v2

    const v2, 0x40c90fdb

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    neg-float v0, v0

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
