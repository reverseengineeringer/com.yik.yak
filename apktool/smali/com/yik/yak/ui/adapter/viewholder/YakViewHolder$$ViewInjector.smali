.class public Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Ljava/lang/Object;)V
    .locals 8
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
    const v7, 0x7f0d0172

    const v6, 0x7f0d00d8

    const v5, 0x7f0d00d7

    const v4, 0x7f0d00d5

    const v3, 0x7f0d00d3

    .line 11
    const v0, 0x7f0d0176

    const-string v1, "field \'mCardView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const v1, 0x7f0d0176

    const-string v2, "field \'mCardView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCardView:Landroid/widget/RelativeLayout;

    .line 13
    const-string v0, "field \'txtAge\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'txtAge\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    .line 15
    const-string v0, "field \'pnlMessage\'"

    invoke-virtual {p1, p3, v7, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string v1, "field \'pnlMessage\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    .line 17
    const-string v0, "field \'txtHandle\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string v1, "field \'txtHandle\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f0d017a

    const-string v1, "field \'txtContent\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f0d017a

    const-string v2, "field \'txtContent\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    .line 21
    const-string v0, "field \'txtComments\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const-string v1, "field \'txtComments\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0d017b

    const-string v1, "field \'pnlStatus\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    .line 25
    const-string v0, "field \'voteView\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const-string v1, "field \'voteView\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    .line 27
    const v0, 0x7f0d0179

    const-string v1, "field \'pnlContainer\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f0d0179

    const-string v2, "field \'pnlContainer\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlContainer:Landroid/widget/RelativeLayout;

    .line 29
    const v0, 0x7f0d019c

    const-string v1, "field \'mPhotoLinkCardView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const v1, 0x7f0d019c

    const-string v2, "field \'mPhotoLinkCardView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/PhotoLinkCardView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    .line 31
    const v0, 0x7f0d0178

    const-string v1, "field \'mContentLayout\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const v1, 0x7f0d0178

    const-string v2, "field \'mContentLayout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 33
    const v0, 0x7f0d0177

    const-string v1, "field \'mCustomContentLayout\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    const v1, 0x7f0d0177

    const-string v2, "field \'mCustomContentLayout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    .line 35
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCardView:Landroid/widget/RelativeLayout;

    .line 39
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    .line 41
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    .line 42
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    .line 43
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    .line 44
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    .line 45
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    .line 46
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlContainer:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    .line 48
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    .line 50
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;->reset(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;)V

    return-void
.end method
