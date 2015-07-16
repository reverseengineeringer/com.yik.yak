.class public Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;
.super LDp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDp",
        "<",
        "Lcom/yik/yak/data/models/Yak;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTEXT_MENU_ID_DELETE:I = 0x1

.field public static final CONTEXT_MENU_ID_REPORT:I = 0x2

.field public static final CONTEXT_MENU_ID_SHARE:I


# instance fields
.field protected mContentLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0197
    .end annotation
.end field

.field private mDateUtil:LHk;

.field protected mDeletedStatusText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019b
    .end annotation
.end field

.field protected mIdentityView:Lcom/yik/yak/ui/view/IdentityView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0198
    .end annotation
.end field

.field protected mLoadingIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019d
    .end annotation
.end field

.field protected mLoadingLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019c
    .end annotation
.end field

.field protected mReplyBody:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019a
    .end annotation
.end field

.field protected mTimeSinceTextLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0199
    .end annotation
.end field

.field protected mUseLeftVoteLayout:Z

.field protected mVoteView:Lcom/yik/yak/ui/view/VoteView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0089
    .end annotation
.end field

.field protected yak:Lcom/yik/yak/data/models/Yak;


# direct methods
.method public constructor <init>(LDd;Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x1

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, LDp;-><init>(LDd;Landroid/view/View;)V

    .line 42
    iput-boolean v6, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mUseLeftVoteLayout:Z

    .line 43
    new-instance v0, LHk;

    invoke-direct {v0}, LHk;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDateUtil:LHk;

    .line 75
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 77
    invoke-static {}, LAa;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mUseLeftVoteLayout:Z

    .line 78
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/IdentityView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    iget-object v3, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mTimeSinceTextLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    iget-boolean v4, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mUseLeftVoteLayout:Z

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    const/16 v4, 0xc

    invoke-static {v4}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    invoke-static {v5}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    const v4, 0x7f0d0198

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 93
    const v4, 0x7f0d0089

    invoke-virtual {v2, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 95
    invoke-virtual {v3, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v4, v0}, Lcom/yik/yak/ui/view/VoteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/IdentityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mTimeSinceTextLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    invoke-static {v5}, LHi;->a(I)I

    move-result v4

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    const/4 v4, 0x5

    invoke-static {v4}, LHi;->a(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-static {v5}, LHi;->a(I)I

    move-result v5

    invoke-virtual {v1, v6, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    const v4, 0x7f0d0089

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    const v4, 0x7f0d0198

    invoke-virtual {v2, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 111
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 112
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private handleLoading()Z
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 278
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yik/yak/data/models/Yak;

    .line 280
    iget-boolean v0, v7, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 284
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 285
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 286
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 287
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 288
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    :goto_0
    iget-boolean v0, v7, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleReplierIdentity(Lcom/yik/yak/data/models/Yak;)V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->BackgroundId:Ljava/lang/String;

    invoke-static {v0}, LHg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->OverlayId:Ljava/lang/String;

    invoke-static {v1}, LHg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->BackgroundId:Ljava/lang/String;

    invoke-static {v2}, LHi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->OverlayId:Ljava/lang/String;

    invoke-static {v2}, LHi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/IdentityView;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/view/IdentityView;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    invoke-virtual {v2, v0}, Lcom/yik/yak/ui/view/IdentityView;->setUrlForBackground(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mIdentityView:Lcom/yik/yak/ui/view/IdentityView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/IdentityView;->setUrlForForeground(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    if-eqz p6, :cond_2

    .line 228
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    .line 233
    :goto_0
    if-nez p7, :cond_0

    if-eqz p10, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    if-eqz p7, :cond_3

    .line 236
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, p8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 243
    :cond_1
    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_1
.end method

.method private setYakToDeletedStyle(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDeletedStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDeletedStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDeletedStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Lcom/yik/yak/data/models/Yak;)V
    .locals 11

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->handleLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 197
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mTimeSinceTextLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mDateUtil:LHk;

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v1, v2}, LHk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 138
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setYakToDeletedStyle(Z)V

    .line 142
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    if-nez v0, :cond_1

    .line 143
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    packed-switch v0, :pswitch_data_0

    .line 180
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    .line 187
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->TextStyle:Ljava/lang/String;

    const-string v1, "OP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    const v1, 0x7f0b00e9

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    :goto_2
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->handleReplierIdentity(Lcom/yik/yak/data/models/Yak;)V

    .line 196
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :pswitch_0
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto :goto_1

    .line 150
    :pswitch_1
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v2

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto :goto_1

    .line 155
    :pswitch_2
    const/16 v2, -0x100

    const/16 v3, -0x100

    const/high16 v4, -0x1000000

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto :goto_1

    .line 160
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

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto :goto_1

    .line 165
    :pswitch_4
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v4

    const v5, -0xffff01

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_1

    .line 170
    :pswitch_5
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_1

    .line 175
    :pswitch_6
    const/4 v2, -0x1

    const/4 v3, -0x1

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v4

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v10, 0x1

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->setViewStyle(Lcom/yik/yak/data/models/Yak;IIIIZZZZZ)V

    goto/16 :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mReplyBody:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 143
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
    .line 29
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->onBindView(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    const-string v0, "Share"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 251
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x1

    const v1, 0x7f0800ed

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x2

    const v1, 0x7f080159

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDoubleClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 268
    invoke-static {}, LAa;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->a()V

    .line 274
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;->broadcastClick()V

    goto :goto_0
.end method

.method public onItemClicked(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 263
    invoke-super {p0, p1}, LDp;->onItemClicked(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
