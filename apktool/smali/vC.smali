.class final LvC;
.super LvR;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LvR",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, LvR;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, LvW;->a(Landroid/view/View;)LvW;

    move-result-object v0

    invoke-virtual {v0}, LvW;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, LvC;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, LvW;->a(Landroid/view/View;)LvW;

    move-result-object v0

    invoke-virtual {v0, p2}, LvW;->d(F)V

    .line 69
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, LvC;->a(Landroid/view/View;F)V

    return-void
.end method
