.class public LBT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFh;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->s(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 871
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->u(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 872
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->v(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkIconView;

    move-result-object v0

    sget-object v1, LFj;->c:LFj;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkIconView;->setIconState(LFj;)V

    .line 873
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 877
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->s(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 878
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->s(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 879
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->s(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->v(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkIconView;

    move-result-object v0

    sget-object v1, LFj;->a:LFj;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkIconView;->setIconState(LFj;)V

    .line 885
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->j(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkDetectingEditText;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    .line 886
    iget-object v0, p0, LBT;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const-string v1, "You can\'t put more than a single link!"

    sget-object v2, Lwt;->c:Lwt;

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Lwt;)V

    .line 887
    return-void
.end method
