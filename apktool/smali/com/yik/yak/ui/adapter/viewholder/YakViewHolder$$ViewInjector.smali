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
    const v7, 0x7f0d0171

    const v6, 0x7f0d00e3

    const v5, 0x7f0d00e2

    const v4, 0x7f0d00df

    const v3, 0x7f0d0089

    .line 11
    const v0, 0x7f0d018d

    const-string v1, "field \'mCardView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const v1, 0x7f0d018d

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
    const v0, 0x7f0d018a

    const-string v1, "field \'pnlMessage\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f0d018a

    const-string v2, "field \'pnlMessage\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    .line 17
    const-string v0, "field \'txtHandle\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string v1, "field \'txtHandle\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f0d0190

    const-string v1, "field \'txtContent\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f0d0190

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
    const v0, 0x7f0d0191

    const-string v1, "field \'pnlStatus\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    .line 25
    const-string v0, "field \'voteView\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const-string v1, "field \'voteView\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    .line 27
    const v0, 0x7f0d018f

    const-string v1, "field \'pnlContainer\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f0d018f

    const-string v2, "field \'pnlContainer\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlContainer:Landroid/widget/RelativeLayout;

    .line 29
    const-string v0, "field \'mPhotoThumbnail\' and method \'onPhotoThumbnailClicked\'"

    invoke-virtual {p1, p3, v7, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const-string v1, "field \'mPhotoThumbnail\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    .line 31
    new-instance v1, LDm;

    invoke-direct {v1, p0, p2}, LDm;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0d01b5

    const-string v1, "field \'mLinkCardView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    const v1, 0x7f0d01b5

    const-string v2, "field \'mLinkCardView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/PhotoLinkCardView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    .line 41
    const v0, 0x7f0d0186

    const-string v1, "field \'mContentLayout\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    const v1, 0x7f0d0186

    const-string v2, "field \'mContentLayout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 43
    const v0, 0x7f0d018e

    const-string v1, "field \'mCustomContentLayout\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    const v1, 0x7f0d018e

    const-string v2, "field \'mCustomContentLayout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    .line 45
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

    .line 48
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCardView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    .line 50
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    .line 51
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    .line 52
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    .line 53
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    .line 54
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    .line 55
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    .line 56
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlContainer:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    .line 59
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 60
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    .line 61
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
