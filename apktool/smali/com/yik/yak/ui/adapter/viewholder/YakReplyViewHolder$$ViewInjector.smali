.class public Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;Ljava/lang/Object;)V
    .locals 7
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
    const v6, 0x7f0d019a

    const v5, 0x7f0d0199

    const v4, 0x7f0d0198

    const v3, 0x7f0d0197

    const v2, 0x7f0d0089

    .line 11
    const-string v0, "field \'mContentLayout\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'mContentLayout\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 13
    const-string v0, "field \'mIdentityView\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'mIdentityView\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/IdentityView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    .line 15
    const-string v0, "field \'mReplyBody\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string v1, "field \'mReplyBody\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    .line 17
    const-string v0, "field \'mVoteView\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string v1, "field \'mVoteView\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    .line 19
    const-string v0, "field \'mTimeSinceTextLabel\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const-string v1, "field \'mTimeSinceTextLabel\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mTimeSinceTextLabel:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f0d019b

    const-string v1, "field \'mDeletedStatusText\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const v1, 0x7f0d019b

    const-string v2, "field \'mDeletedStatusText\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDeletedStatusText:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0d019c

    const-string v1, "field \'mLoadingLayout\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const v1, 0x7f0d019c

    const-string v2, "field \'mLoadingLayout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingLayout:Landroid/widget/RelativeLayout;

    .line 25
    const v0, 0x7f0d019d

    const-string v1, "field \'mLoadingIcon\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f0d019d

    const-string v2, "field \'mLoadingIcon\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingIcon:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 31
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    .line 32
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    .line 33
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    .line 34
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mTimeSinceTextLabel:Landroid/widget/TextView;

    .line 35
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDeletedStatusText:Landroid/widget/TextView;

    .line 36
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingLayout:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingIcon:Landroid/widget/ImageView;

    .line 38
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder$$ViewInjector;->reset(Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;)V

    return-void
.end method
