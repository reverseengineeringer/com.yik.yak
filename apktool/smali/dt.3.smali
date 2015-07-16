.class public Ldt;
.super Ldm;
.source "SourceFile"


# instance fields
.field private b:Ldv;


# virtual methods
.method public a(FFFF)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Ldt;->b:Ldv;

    sub-float v1, p4, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Ldv;->a(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p3, v0

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
