.class public Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;
.super LDp;
.source "SourceFile"

# interfaces
.implements LFV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDp",
        "<",
        "Lcom/yik/yak/data/models/Yak;",
        ">;",
        "LFV;"
    }
.end annotation


# static fields
.field public static final CONTEXT_MENU_ID_DELETE:I = 0x1

.field public static final CONTEXT_MENU_ID_REPORT:I = 0x2

.field public static final CONTEXT_MENU_ID_SHARE:I


# instance fields
.field protected mCardView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d018d
    .end annotation
.end field

.field protected mContentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0186
    .end annotation
.end field

.field protected mCustomContentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d018e
    .end annotation
.end field

.field private mDateUtil:LHk;

.field protected mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d01b5
    .end annotation
.end field

.field protected mPhotoThumbnail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0171
    .end annotation
.end field

.field protected pnlContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d018f
    .end annotation
.end field

.field protected pnlMessage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d018a
    .end annotation
.end field

.field protected pnlStatus:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0191
    .end annotation
.end field

.field protected txtAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00e2
    .end annotation
.end field

.field protected txtComments:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00e3
    .end annotation
.end field

.field protected txtContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0190
    .end annotation
.end field

.field protected txtHandle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00df
    .end annotation
.end field

.field protected voteView:Lcom/yik/yak/ui/view/VoteView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0089
    .end annotation
.end field

.field protected yak:Lcom/yik/yak/data/models/Yak;


# direct methods
.method public constructor <init>(LDd;Landroid/view/View;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, LDp;-><init>(LDd;Landroid/view/View;)V

    .line 50
    new-instance v0, LHk;

    invoke-direct {v0}, LHk;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mDateUtil:LHk;

    .line 97
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setOnCardClickListener(LFV;)V

    .line 100
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    iget-object v3, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    invoke-static {}, LAa;->u()Ljava/lang/String;

    move-result-object v4

    const-string v5, "left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    const/16 v4, 0xc

    invoke-static {v4}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    invoke-static {v10}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 113
    const v3, 0x7f0d0089

    invoke-virtual {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    const v3, 0x7f0d0171

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    invoke-virtual {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v3, v0}, Lcom/yik/yak/ui/view/VoteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void

    .line 120
    :cond_0
    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    const/4 v4, 0x3

    invoke-static {v4}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 124
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    invoke-static {v10}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    const v3, 0x7f0d0089

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    const v3, 0x7f0d0171

    invoke-virtual {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private gotoPhotoActivity()V
    .locals 3

    .prologue
    .line 391
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    const-string v2, "Feed"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v1, v2, v0}, LHa;->a(Ljava/lang/String;Z)V

    .line 392
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yik/yak/data/models/Yak;

    iget-boolean v1, v1, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-static {v2, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->a(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;Z)Landroid/content/Intent;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method private setCustomView(Landroid/view/ViewGroup;Lcom/yik/yak/data/models/Yak;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 280
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 283
    iget v0, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :pswitch_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 338
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 285
    :pswitch_2
    invoke-static {}, LAa;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030057

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 289
    const v0, 0x7f0d017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 290
    new-instance v2, LDn;

    invoke-direct {v2, p0, p1}, LDn;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x7f0d0181

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 302
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 303
    const-string v1, ".*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "com.yik.yak.video"

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_3
    invoke-static {}, LAa;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 310
    const v1, 0x7f0d0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 311
    new-instance v1, LDo;

    invoke-direct {v1, p0, p1}, LDo;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 322
    const v1, 0x7f0d017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 323
    invoke-static {}, LAa;->A()Z

    move-result v1

    .line 325
    if-eqz v1, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080100

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080101

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x7f030057
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 231
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCardView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 232
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 233
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    if-eqz p6, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    .line 242
    :goto_0
    if-eqz p9, :cond_1

    .line 243
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :goto_1
    if-eqz p7, :cond_2

    .line 249
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 250
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, p8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 255
    :goto_2
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    .line 257
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 258
    if-eqz p10, :cond_3

    .line 259
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 265
    :goto_3
    if-eqz p7, :cond_4

    if-nez p10, :cond_4

    .line 266
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 275
    :goto_4
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_2

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    goto :goto_4

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public onBindView(Lcom/yik/yak/data/models/Yak;)V
    .locals 11

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 147
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setCustomView(Landroid/view/ViewGroup;Lcom/yik/yak/data/models/Yak;)V

    .line 150
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_1
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-nez v0, :cond_6

    .line 167
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-nez v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mDateUtil:LHk;

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v1, v2}, LHk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    if-nez v0, :cond_2

    .line 181
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    packed-switch v0, :pswitch_data_0

    .line 218
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    .line 226
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_4
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 170
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reply"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    :cond_5
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " replies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 183
    :pswitch_0
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    .line 188
    :pswitch_1
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v2

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    .line 193
    :pswitch_2
    const/16 v2, -0x100

    const/16 v3, -0x100

    const/high16 v4, -0x1000000

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    .line 198
    :pswitch_3
    const/high16 v2, -0x10000

    const/high16 v3, -0x10000

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    .line 203
    :pswitch_4
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v4

    const v5, -0xffff01

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    .line 208
    :pswitch_5
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    .line 213
    :pswitch_6
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v10, 0x1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_3

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->onBindView(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 344
    const-string v0, "Share"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 346
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x1

    const v1, 0x7f0800ed

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x2

    const v1, 0x7f080159

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDoubleClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 371
    invoke-static {}, LAa;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->b()V

    .line 377
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->broadcastClick()V

    goto :goto_0
.end method

.method public onItemClicked(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 360
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, LDp;->onItemClicked(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLinkCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v1, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    .line 400
    invoke-static {}, LHa;->a()LHa;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v2, v1, v0}, LHa;->b(Ljava/lang/String;Z)V

    .line 402
    invoke-static {v1}, LHn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 411
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v0, "url"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPhotoCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->gotoPhotoActivity()V

    .line 388
    return-void
.end method

.method public onPhotoThumbnailClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d0171
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->gotoPhotoActivity()V

    .line 383
    return-void
.end method
