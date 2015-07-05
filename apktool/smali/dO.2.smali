.class public LdO;
.super Ldq;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 36
    neg-float v0, p3

    div-float v1, p1, p4

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
