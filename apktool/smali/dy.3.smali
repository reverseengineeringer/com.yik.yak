.class public Ldy;
.super Ldq;
.source "SourceFile"


# instance fields
.field private b:Ldz;

.field private c:Ldx;


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 42
    div-float v0, p4, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 43
    iget-object v0, p0, Ldy;->c:Ldx;

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, v3, p3, p4}, Ldx;->a(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldy;->b:Ldz;

    mul-float/2addr v1, p1

    sub-float/2addr v1, p4

    invoke-virtual {v0, v1, v3, p3, p4}, Ldz;->a(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    mul-float v1, p3, v2

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
