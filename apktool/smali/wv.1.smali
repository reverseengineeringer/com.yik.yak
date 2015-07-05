.class public Lwv;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwv;->setSaveEnabled(Z)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwv;->setWillNotDraw(Z)V

    .line 15
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lwv;->setVisibility(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 22
    invoke-virtual {p0}, Lwv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/nispok/snackbar/Snackbar;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->b(I)V

    .line 26
    :cond_0
    return-void
.end method
