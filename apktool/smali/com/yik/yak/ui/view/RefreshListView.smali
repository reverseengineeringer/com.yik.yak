.class public Lcom/yik/yak/ui/view/RefreshListView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

.field protected e:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public c()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public d()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->c()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 79
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    return-object v0
.end method

.method public f()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/RefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->b:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/RefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->c:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0d01bd

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/RefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    .line 58
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/RefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    .line 59
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->c()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    return-void
.end method

.method public setAdapter(LDd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDd",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    return-void
.end method

.method public setAnimationBackgroundColor(I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setAnimationBackgroundColor(I)V

    .line 144
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/RefreshListView;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 90
    return-void
.end method

.method public setOnRefreshListener(LFE;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setOnRefreshListener(LFE;)V

    .line 106
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 110
    return-void
.end method

.method public setRefreshImage(I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method public setRefreshImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method

.method public setRefreshImageDrawable(I)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public setRefreshImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public setRefreshStyle(I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshStyle(I)V

    .line 124
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yik/yak/ui/view/RefreshListView;->d:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->setRefreshing(Z)V

    .line 116
    :cond_0
    return-void
.end method
