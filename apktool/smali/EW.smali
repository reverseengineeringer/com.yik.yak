.class public LEW;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, LEW;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, LEW;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->d(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)I

    move-result v0

    .line 80
    iget-object v1, p0, LEW;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->e(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)I

    move-result v1

    iget-object v2, p0, LEW;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v2}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->e(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 81
    iget-object v1, p0, LEW;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->c(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 82
    iget-object v1, p0, LEW;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;IZ)V

    .line 83
    return-void
.end method
