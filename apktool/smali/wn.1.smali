.class public Lwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwC;


# instance fields
.field final synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 621
    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Lcom/nispok/snackbar/Snackbar;Z)V

    .line 627
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    .prologue
    .line 631
    iget-object v0, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->f(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 634
    :cond_0
    if-eqz p1, :cond_1

    .line 635
    iget-object v0, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->g(Lcom/nispok/snackbar/Snackbar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 637
    iget-object v0, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->a(Lcom/nispok/snackbar/Snackbar;J)J

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->h(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v2

    iget-object v1, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->i(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v4

    iget-object v1, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->j(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->b(Lcom/nispok/snackbar/Snackbar;J)J

    .line 641
    iget-object v0, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lwn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->h(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->c(Lcom/nispok/snackbar/Snackbar;J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x1

    return v0
.end method
