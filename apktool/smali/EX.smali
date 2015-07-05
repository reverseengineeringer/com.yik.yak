.class public LEX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->f(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LEZ;

    move-result-object v0

    invoke-virtual {v0}, LEZ;->start()V

    .line 102
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->g(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LEY;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->h(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LEY;

    move-result-object v0

    invoke-interface {v0}, LEY;->a()V

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    iget-object v1, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;I)I

    .line 113
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LEZ;

    move-result-object v0

    invoke-virtual {v0}, LEZ;->stop()V

    .line 109
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->i(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, LEX;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    return-void
.end method
