.class public Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;
.super LDb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDb",
        "<",
        "Lcom/yik/yak/data/models/FamousShareCard;",
        ">;"
    }
.end annotation


# instance fields
.field protected imgShareCard:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0066
    .end annotation
.end field

.field protected txtShareCardCaption:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0173
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCQ;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, LDb;-><init>(LCQ;Landroid/view/View;)V

    .line 36
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onBindView(Lcom/yik/yak/data/models/FamousShareCard;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;->imgShareCard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/yik/yak/data/models/FamousShareCard;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;->imgShareCard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/yik/yak/data/models/FamousShareCard;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;->txtShareCardCaption:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yik/yak/data/models/FamousShareCard;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/yik/yak/data/models/FamousShareCard;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;->onBindView(Lcom/yik/yak/data/models/FamousShareCard;)V

    return-void
.end method
