.class public Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;Ljava/lang/Object;)V
    .locals 4
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
    const v3, 0x7f0d017a

    const v2, 0x7f0d0179

    .line 11
    const-string v0, "field \'mOptionName\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'mOptionName\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mOptionName:Landroid/widget/TextView;

    .line 13
    const-string v0, "field \'mSelected\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'mSelected\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mSelected:Landroid/widget/ImageView;

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mOptionName:Landroid/widget/TextView;

    .line 19
    iput-object v0, p1, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mSelected:Landroid/widget/ImageView;

    .line 20
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder$$ViewInjector;->reset(Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;)V

    return-void
.end method
