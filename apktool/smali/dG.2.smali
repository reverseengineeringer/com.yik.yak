.class public LdG;
.super Ldm;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 4

    .prologue
    .line 36
    cmpl-float v0, p1, p4

    if-nez v0, :cond_0

    add-float v0, p2, p3

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr v2, p1

    div-float/2addr v2, p4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    goto :goto_0
.end method
