.class public Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;
.super LDb;
.source "SourceFile"

# interfaces
.implements LFp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDb",
        "<",
        "Lcom/yik/yak/data/models/Yak;",
        ">;",
        "LFp;"
    }
.end annotation


# static fields
.field public static final CONTEXT_MENU_ID_DELETE:I = 0x1

.field public static final CONTEXT_MENU_ID_REPORT:I = 0x2

.field public static final CONTEXT_MENU_ID_SHARE:I


# instance fields
.field protected mCardView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0176
    .end annotation
.end field

.field protected mContentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0178
    .end annotation
.end field

.field protected mCustomContentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0177
    .end annotation
.end field

.field private mDateUtil:LGD;

.field protected mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019c
    .end annotation
.end field

.field protected pnlContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0179
    .end annotation
.end field

.field protected pnlMessage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0172
    .end annotation
.end field

.field protected pnlStatus:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d017b
    .end annotation
.end field

.field protected txtAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00d7
    .end annotation
.end field

.field protected txtComments:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00d8
    .end annotation
.end field

.field protected txtContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d017a
    .end annotation
.end field

.field protected txtHandle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00d3
    .end annotation
.end field

.field protected voteView:Lcom/yik/yak/ui/view/VoteView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00d5
    .end annotation
.end field

.field protected yak:Lcom/yik/yak/data/models/Yak;


# direct methods
.method public constructor <init>(LCQ;Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x7f0d00d5

    const/4 v8, 0x1

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, LDb;-><init>(LCQ;Landroid/view/View;)V

    .line 49
    new-instance v0, LGD;

    invoke-direct {v0}, LGD;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mDateUtil:LGD;

    .line 93
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setOnCardClickListener(LFp;)V

    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    invoke-static {}, LzQ;->p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v3, 0xc

    invoke-static {v3}, LGB;->a(I)I

    move-result v3

    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    invoke-virtual {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 106
    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    :goto_0
    iget-object v3, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v3, v0}, Lcom/yik/yak/ui/view/VoteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/4 v3, 0x3

    invoke-static {v3}, LGB;->a(I)I

    move-result v3

    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    invoke-virtual {v1, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 119
    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private setCustomView(Landroid/view/ViewGroup;Lcom/yik/yak/data/models/Yak;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    iget v0, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    packed-switch v0, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 331
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 262
    :pswitch_2
    invoke-static {}, LzQ;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030050

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 266
    const v0, 0x7f0d0169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 267
    new-instance v2, LCZ;

    invoke-direct {v2, p0, p1}, LCZ;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f0d016c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 294
    const-string v1, ".*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "com.yik.yak.video"

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_3
    invoke-static {}, LzQ;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 301
    const v1, 0x7f0d0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 302
    new-instance v1, LDa;

    invoke-direct {v1, p0, p1}, LDa;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 312
    :pswitch_4
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 313
    const v1, 0x7f0d0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    invoke-static {}, LzQ;->u()Z

    move-result v1

    .line 316
    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x7f030050
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
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCardView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 222
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    if-eqz p6, :cond_1

    .line 226
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    .line 231
    :goto_0
    if-eqz p9, :cond_2

    .line 232
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :goto_1
    if-eqz p7, :cond_3

    .line 239
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 244
    :goto_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, p8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 246
    if-nez p7, :cond_0

    if-eqz p10, :cond_4

    :cond_0
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 252
    :goto_3
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->pnlStatus:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_2

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public onBindView(Lcom/yik/yak/data/models/Yak;)V
    .locals 11

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 136
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->setCustomView(Landroid/view/ViewGroup;Lcom/yik/yak/data/models/Yak;)V

    .line 139
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mCustomContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :goto_1
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-nez v0, :cond_6

    .line 156
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-nez v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->mDateUtil:LGD;

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v1, v2}, LGD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    if-nez v0, :cond_2

    .line 170
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    packed-switch v0, :pswitch_data_0

    .line 207
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

    .line 215
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtContent:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtHandle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 158
    :cond_4
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 159
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

    .line 160
    :cond_5
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 161
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

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 172
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

    .line 177
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

    .line 182
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

    .line 187
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

    .line 192
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

    .line 197
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

    .line 202
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

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

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

    .line 170
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
    .line 35
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->onBindView(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 351
    invoke-super {p0, p1}, LDb;->onClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
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

    .line 336
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    const-string v0, "Share"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 339
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x1

    const v1, 0x7f0800d4

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x2

    const v1, 0x7f080132

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
    .line 356
    invoke-static {}, LzQ;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->b()V

    .line 362
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->broadcastClick()V

    goto :goto_0
.end method

.method public onLinkCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v1, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    .line 377
    invoke-static {}, LGs;->a()LGs;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v2, v1, v0}, LGs;->b(Ljava/lang/String;Z)V

    .line 379
    invoke-static {v1}, LGG;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v0, "url"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPhotoCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 3

    .prologue
    .line 367
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    const-string v2, "Feed"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v1, v2, v0}, LGs;->a(Ljava/lang/String;Z)V

    .line 368
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/yik/yak/ui/activity/PhotoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method
