.class public Lcom/yik/yak/ui/view/RefreshListView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/support/v7/widget/LinearLayoutManager;

.field protected noYaksImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0083
    .end annotation
.end field

.field protected pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d01a4
    .end annotation
.end field

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0084
    .end annotation
.end field

.field protected refreshImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0082
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->noYaksImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->noYaksImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public c()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public d()Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    return-object v0
.end method

.method public e()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/LinearLayoutManager;

    .line 71
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    return-void
.end method

.method public setAdapter(LCQ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCQ",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    return-void
.end method

.method public setAnimationBackgroundColor(I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setAnimationBackgroundColor(I)V

    .line 135
    return-void
.end method

.method public setOnRefreshListener(LEY;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setOnRefreshListener(LEY;)V

    .line 97
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 101
    return-void
.end method

.method public setRefreshImage(I)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public setRefreshImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method public setRefreshImageDrawable(I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->refreshImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method public setRefreshImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->refreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method public setRefreshStyle(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshStyle(I)V

    .line 115
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshing(Z)V

    .line 107
    :cond_0
    return-void
.end method
