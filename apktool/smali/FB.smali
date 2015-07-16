.class public LFB;
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
    .line 54
    iput-object p1, p0, LFB;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, LFB;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)LFF;

    move-result-object v0

    invoke-virtual {v0}, LFF;->stop()V

    .line 66
    iget-object v0, p0, LFB;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->b(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, LFB;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    iget-object v1, p0, LFB;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;I)I

    .line 68
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
