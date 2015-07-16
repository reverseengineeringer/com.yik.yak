.class public Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;Ljava/lang/Object;)V
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
    const v6, 0x7f0d00e3

    const v5, 0x7f0d00e2

    const v4, 0x7f0d00e0

    const v3, 0x7f0d00df

    const v2, 0x7f0d0089

    .line 11
    const-string v0, "field \'txtAge\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'txtAge\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtAge:Landroid/widget/TextView;

    .line 13
    const-string v0, "field \'txtHandle\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'txtHandle\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtHandle:Landroid/widget/TextView;

    .line 15
    const-string v0, "field \'txtContent\' and method \'openUrl\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string v1, "field \'txtContent\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    .line 17
    new-instance v1, LDh;

    invoke-direct {v1, p0, p2}, LDh;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-string v0, "field \'txtComments\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const-string v1, "field \'txtComments\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    .line 27
    const-string v0, "field \'voteView\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const-string v1, "field \'voteView\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    .line 29
    const v0, 0x7f0d01b5

    const-string v1, "field \'mPhotoLinkCardView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const v1, 0x7f0d01b5

    const-string v2, "field \'mPhotoLinkCardView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/PhotoLinkCardView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    .line 31
    const v0, 0x7f0d0195

    const-string v1, "field \'mShareIcon\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const v1, 0x7f0d0195

    const-string v2, "field \'mShareIcon\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mShareIcon:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0d00e4

    const-string v1, "field \'shareButton\' and method \'onClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    const v1, 0x7f0d00e4

    const-string v2, "field \'shareButton\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    .line 35
    new-instance v1, LDi;

    invoke-direct {v1, p0, p2}, LDi;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0d0193

    const-string v1, "field \'mMessageBody\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    const v1, 0x7f0d0193

    const-string v2, "field \'mMessageBody\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mMessageBody:Landroid/widget/LinearLayout;

    .line 45
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtAge:Landroid/widget/TextView;

    .line 49
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtHandle:Landroid/widget/TextView;

    .line 50
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    .line 51
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    .line 52
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    .line 53
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    .line 54
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mShareIcon:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    .line 56
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mMessageBody:Landroid/widget/LinearLayout;

    .line 57
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;->reset(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V

    return-void
.end method
