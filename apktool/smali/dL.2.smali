.class public LdL;
.super Ldq;
.source "SourceFile"


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 38
    mul-float v0, p3, p1

    div-float/2addr v0, p4

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
