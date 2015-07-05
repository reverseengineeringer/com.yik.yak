.class public Lcom/yik/yak/ui/view/RefreshListView$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/view/RefreshListView;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/view/RefreshListView;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v5, 0x7f0d01a4

    const v4, 0x7f0d0084

    const v3, 0x7f0d0083

    const v2, 0x7f0d0082

    .line 11
    const-string v0, "field \'refreshImage\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'refreshImage\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/RefreshListView;->refreshImage:Landroid/widget/ImageView;

    .line 13
    const-string v0, "field \'noYaksImage\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'noYaksImage\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/RefreshListView;->noYaksImage:Landroid/widget/ImageView;

    .line 15
    const-string v0, "field \'pullToRefreshLayout\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string v1, "field \'pullToRefreshLayout\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    .line 17
    const-string v0, "field \'recyclerView\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string v1, "field \'recyclerView\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/RefreshListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 19
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/view/RefreshListView$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/view/RefreshListView;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/view/RefreshListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, Lcom/yik/yak/ui/view/RefreshListView;->refreshImage:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p1, Lcom/yik/yak/ui/view/RefreshListView;->noYaksImage:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p1, Lcom/yik/yak/ui/view/RefreshListView;->pullToRefreshLayout:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    .line 25
    iput-object v0, p1, Lcom/yik/yak/ui/view/RefreshListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 26
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/view/RefreshListView$$ViewInjector;->reset(Lcom/yik/yak/ui/view/RefreshListView;)V

    return-void
.end method
