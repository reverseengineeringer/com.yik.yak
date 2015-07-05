.class public Lcom/yik/yak/ui/view/PhotoLinkCardView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:LFp;

.field protected b:Lcom/yik/yak/data/models/Yak;

.field protected mImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019d
    .end annotation
.end field

.field protected mLink:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d01a2
    .end annotation
.end field

.field protected mLinkDescription:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d01a0
    .end annotation
.end field

.field protected mLinkDetails:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019e
    .end annotation
.end field

.field protected mLinkTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private a()LFo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v0}, LFo;->a(I)LFo;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    .line 77
    sget-object v0, LFn;->a:[I

    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a()LFo;

    move-result-object v1

    invoke-virtual {v1}, LFo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "un handled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a()LFo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " yak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->f()V

    .line 105
    return-void

    .line 80
    :pswitch_0
    const-string v0, "link or sponsered yak"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLink:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "image yak"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLinkDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mLink:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a:LFp;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a:LFp;

    invoke-interface {v0, p0}, LFp;->onLinkCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V

    .line 111
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a:LFp;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a:LFp;

    invoke-interface {v0, p0}, LFp;->onPhotoCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V

    .line 118
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->e()V

    .line 127
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/yik/yak/YikYak;->a()Lcom/yik/yak/YikYak;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 146
    sget-object v0, LFn;->a:[I

    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a()LFo;

    move-result-object v1

    invoke-virtual {v1}, LFo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    iget-object v0, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->c()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->c()V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->d()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 137
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public setOnCardClickListener(LFp;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->a:LFp;

    .line 63
    return-void
.end method

.method public setYak(Lcom/yik/yak/data/models/Yak;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b:Lcom/yik/yak/data/models/Yak;

    .line 67
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->b()V

    .line 68
    return-void
.end method
