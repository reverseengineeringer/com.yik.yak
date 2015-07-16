.class final LvC;
.super Lwa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwa",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lwa;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Lwf;->a(Landroid/view/View;)Lwf;

    move-result-object v0

    invoke-virtual {v0}, Lwf;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, LvC;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p1}, Lwf;->a(Landroid/view/View;)Lwf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lwf;->h(F)V

    .line 113
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, LvC;->a(Landroid/view/View;F)V

    return-void
.end method
