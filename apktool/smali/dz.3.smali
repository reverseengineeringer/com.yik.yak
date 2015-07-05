.class public Ldz;
.super Ldq;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 7

    .prologue
    const/high16 v6, 0x40f20000    # 7.5625f

    .line 37
    div-float v0, p1, p4

    const v1, 0x3eba2e8c

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 38
    mul-float v1, v6, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const v1, 0x3f3a2e8c

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 40
    const v1, 0x3f0ba2e9

    sub-float/2addr v0, v1

    mul-float v1, v6, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    float-to-double v2, v0

    const-wide v4, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 42
    const v1, 0x3f51745d

    sub-float/2addr v0, v1

    mul-float v1, v6, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    const v1, 0x3f745d17

    sub-float/2addr v0, v1

    mul-float v1, v6, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
