.class public abstract Ldm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LvS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LvS",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:F

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldn;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public abstract a(FFFF)Ljava/lang/Float;
.end method

.method public final a(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 4

    .prologue
    .line 68
    iget v0, p0, Ldm;->a:F

    mul-float/2addr v0, p1

    .line 69
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 70
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    .line 71
    iget v3, p0, Ldm;->a:F

    .line 72
    invoke-virtual {p0, v0, v1, v2, v3}, Ldm;->a(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 73
    iget-object v1, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Ldm;->a(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ldn;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
