.class public LCb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFN;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->d(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 137
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->e(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;

    move-result-object v0

    sget-object v1, LFQ;->c:LFQ;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 138
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->f(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setDisabled(Z)V

    .line 139
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->f(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setDisabled(Z)V

    .line 146
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->e(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;

    move-result-object v0

    sget-object v1, LFQ;->a:LFQ;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 152
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->g(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkDetectingEditText;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    .line 153
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const-string v1, "You can\'t put more than a single link!"

    sget-object v2, LwC;->c:LwC;

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;LwC;)V

    .line 154
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->f(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setDisabled(Z)V

    .line 155
    return-void
.end method
