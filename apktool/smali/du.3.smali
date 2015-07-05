.class public Ldu;
.super Ldq;
.source "SourceFile"


# instance fields
.field private b:F


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 4

    .prologue
    .line 44
    div-float v0, p1, p4

    mul-float v1, p3, v0

    mul-float/2addr v1, v0

    iget v2, p0, Ldu;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Ldu;->b:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
