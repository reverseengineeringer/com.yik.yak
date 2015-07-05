.class public Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;
.super LDb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDb",
        "<",
        "LAk;",
        ">;"
    }
.end annotation


# instance fields
.field protected mOptionName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0164
    .end annotation
.end field

.field protected mSelected:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0165
    .end annotation
.end field

.field protected yak:LAk;


# direct methods
.method public constructor <init>(LCQ;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, LDb;-><init>(LCQ;Landroid/view/View;)V

    .line 35
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onBindView(LAk;)V
    .locals 3

    .prologue
    const v2, 0x7f020048

    .line 44
    sget-object v0, LCT;->a:[I

    invoke-virtual {p1}, LAk;->e()LAm;

    move-result-object v1

    invoke-virtual {v1}, LAm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mOptionName:Landroid/widget/TextView;

    invoke-virtual {p1}, LAk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mOptionName:Landroid/widget/TextView;

    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mSelected:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mOptionName:Landroid/widget/TextView;

    const v1, 0x7f0b0091

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->mOptionName:Landroid/widget/TextView;

    const v1, 0x7f0b0180

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, LAk;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;->onBindView(LAk;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, LDb;->onClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
