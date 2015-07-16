.class public LdA;
.super Ldm;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 37
    div-float v0, p4, v3

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 38
    div-float v1, p3, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    div-float v1, p3, v3

    sub-float/2addr v0, v3

    mul-float v2, v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
