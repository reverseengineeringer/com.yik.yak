.class public Lwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Lcom/nispok/snackbar/Snackbar;)Lwy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->b(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->c(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->d(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Lcom/nispok/snackbar/Snackbar;)Lwy;

    move-result-object v0

    iget-object v1, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lwy;->a(Lcom/nispok/snackbar/Snackbar;)V

    .line 596
    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Lcom/nispok/snackbar/Snackbar;Z)Z

    .line 599
    :cond_1
    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->e(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lwm;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 602
    :cond_2
    return-void
.end method
