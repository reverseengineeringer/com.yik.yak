.class public Lwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 772
    iget-object v0, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->k(Lcom/nispok/snackbar/Snackbar;)LwI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->l(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    :goto_0
    iget-object v0, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->m(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nispok/snackbar/Snackbar;->c(Lcom/nispok/snackbar/Snackbar;Z)Z

    .line 783
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 776
    :cond_1
    iget-object v0, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->k(Lcom/nispok/snackbar/Snackbar;)LwI;

    move-result-object v0

    iget-object v1, p0, Lwx;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {v0, v1}, LwI;->a(Lcom/nispok/snackbar/Snackbar;)V

    goto :goto_0
.end method
