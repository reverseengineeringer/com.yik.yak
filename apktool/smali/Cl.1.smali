.class public LCl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwI;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, LCl;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, LCl;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {p1}, Lcom/nispok/snackbar/Snackbar;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;I)V

    .line 650
    return-void
.end method

.method public b(Lcom/nispok/snackbar/Snackbar;)V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, LCl;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;I)V

    .line 675
    return-void
.end method
