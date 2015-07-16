.class public Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/view/PhotoLinkCardView;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/view/PhotoLinkCardView;Ljava/lang/Object;)V
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
    const v6, 0x7f0d01bb

    const v5, 0x7f0d01b9

    const v4, 0x7f0d01b8

    const v3, 0x7f0d01b7

    const v2, 0x7f0d01b6

    .line 11
    const-string v0, "field \'mImageView\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'mImageView\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mImageView:Landroid/widget/ImageView;

    .line 13
    const-string v0, "field \'mLinkDetails\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'mLinkDetails\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDetails:Landroid/widget/LinearLayout;

    .line 15
    const-string v0, "field \'mLinkTitle\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string v1, "field \'mLinkTitle\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkTitle:Landroid/widget/TextView;

    .line 17
    const-string v0, "field \'mLinkDescription\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string v1, "field \'mLinkDescription\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDescription:Landroid/widget/TextView;

    .line 19
    const-string v0, "field \'mLink\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const-string v1, "field \'mLink\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLink:Landroid/widget/TextView;

    .line 22
    new-instance v0, LFS;

    invoke-direct {v0, p0, p2}, LFS;-><init>(Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;Lcom/yik/yak/ui/view/PhotoLinkCardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/view/PhotoLinkCardView;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p1, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mImageView:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p1, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDetails:Landroid/widget/LinearLayout;

    .line 35
    iput-object v0, p1, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkTitle:Landroid/widget/TextView;

    .line 36
    iput-object v0, p1, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDescription:Landroid/widget/TextView;

    .line 37
    iput-object v0, p1, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLink:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;->reset(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V

    return-void
.end method
