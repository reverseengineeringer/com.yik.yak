.class public Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;
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


# instance fields
.field public fragment:Landroid/support/v4/app/Fragment;

.field private mDateUtil:LGD;

.field protected mMessageBody:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d017d
    .end annotation
.end field

.field protected mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d019c
    .end annotation
.end field

.field protected mShareIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d017f
    .end annotation
.end field

.field protected mUseLeftVoteLayout:Z

.field public shareButton:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d00d9
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
        value = 0x7f0d00d4
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


# direct methods
.method public constructor <init>(LCQ;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    const v7, 0x7f0d00d5

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, LDb;-><init>(LCQ;Landroid/view/View;)V

    .line 57
    iput-boolean v3, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mUseLeftVoteLayout:Z

    .line 59
    new-instance v0, LGD;

    invoke-direct {v0}, LGD;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mDateUtil:LGD;

    .line 94
    iput-object p3, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    .line 95
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setOnCardClickListener(LFp;)V

    .line 98
    invoke-static {}, LzQ;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mUseLeftVoteLayout:Z

    .line 99
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    iget-boolean v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mUseLeftVoteLayout:Z

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 104
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    const/16 v2, 0xc

    invoke-static {v2}, LGB;->a(I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    const v2, 0x7f0d0181

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v2, v0}, Lcom/yik/yak/ui/view/VoteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/4 v2, 0x3

    invoke-static {v2}, LGB;->a(I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    invoke-virtual {v1, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    const v2, 0x7f0d0181

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public static synthetic access$000(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->launchMapActivity()V

    return-void
.end method

.method private isYakFamousWorth()Z
    .locals 5

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    const-string v2, "shareThreshold"

    const-string v3, "famousThreshold"

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchMapActivity()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 152
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/yik/yak/ui/activity/MapActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v3, "lat"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-wide v4, v0, Lcom/yik/yak/data/models/Yak;->Latitude:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 154
    const-string v3, "lon"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-wide v4, v0, Lcom/yik/yak/data/models/Yak;->Longitude:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 155
    const-string v3, "hidePin"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->HidePin:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initMap(DDZ)V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "commentsMap"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lkl;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lkl;->d()LkE;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LkE;->a(Z)V

    .line 136
    invoke-virtual {v0}, Lkl;->d()LkE;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LkE;->b(Z)V

    .line 137
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lkk;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lkj;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lkl;->a(Lkj;)V

    .line 139
    new-instance v1, LCW;

    invoke-direct {v1, p0}, LCW;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V

    invoke-virtual {v0, v1}, Lkl;->a(Lkn;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBindView(Lcom/yik/yak/data/models/Yak;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0xf

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtHandle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, v4}, Lcom/yik/yak/ui/view/VoteView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    const v1, 0x7f080113

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtHandle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_1
    iget-boolean v1, p1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-nez v1, :cond_5

    .line 181
    iget v1, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-nez v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtAge:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mDateUtil:LGD;

    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v2, v3}, LGD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->voteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v1, p1}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 196
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v1}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 199
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v1, p1}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 203
    iget v1, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    packed-switch v1, :pswitch_data_0

    .line 224
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 225
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 226
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 244
    :goto_3
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->isYakFamousWorth()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    const-string v2, "FAMOUS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mShareIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    const v2, 0x7f0b00e9

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LCX;

    invoke-direct {v2, p0}, LCX;-><init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :goto_4
    iget-wide v2, p1, Lcom/yik/yak/data/models/Yak;->Latitude:D

    iget-wide v4, p1, Lcom/yik/yak/data/models/Yak;->Longitude:D

    iget v1, p1, Lcom/yik/yak/data/models/Yak;->HidePin:I

    if-ne v1, v6, :cond_8

    :goto_5
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->initMap(DDZ)V

    goto/16 :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtHandle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtHandle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 183
    :cond_3
    iget v1, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-ne v1, v6, :cond_4

    .line 184
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " REPLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 185
    :cond_4
    iget v1, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-le v1, v6, :cond_1

    .line 186
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " REPLIES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 188
    :cond_5
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtComments:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 206
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 207
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto/16 :goto_3

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 214
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 215
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto/16 :goto_3

    .line 219
    :pswitch_2
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 220
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 221
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto/16 :goto_3

    .line 241
    :cond_6
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mPhotoLinkCardView:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v1, v4}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->setVisibility(I)V

    goto/16 :goto_3

    .line 279
    :cond_7
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->mShareIcon:Landroid/widget/ImageView;

    const v2, 0x7f020162

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    const-string v2, "SHARE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_8
    move v6, v0

    .line 284
    goto/16 :goto_5

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->onBindView(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public onClick()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d00d9
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    const-string v2, "shareThreshold"

    const-string v3, "shareThreshold"

    invoke-virtual {v1, v2, v3, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 301
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "shareThreshold"

    const-string v2, "message"

    const v3, 0x7f080164

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v0, "okText"

    const-string v2, "OK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v0, "okOnly"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->isYakFamousWorth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/yik/yak/ui/activity/FamousActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    :try_start_0
    const-string v2, "yak"

    new-instance v3, LAj;

    invoke-direct {v3}, LAj;-><init>()V

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v3, v0}, LAj;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 320
    :cond_1
    new-instance v1, LGH;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v1, v2, v0}, LGH;-><init>(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, LGH;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onLinkCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v1, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    .line 357
    invoke-static {}, LGs;->a()LGs;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v2, v1, v0}, LGs;->b(Ljava/lang/String;Z)V

    .line 359
    invoke-static {v1}, LGG;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 368
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v0, "url"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPhotoCardClicked(Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    const-string v2, "Detail"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v1, v2, v0}, LGs;->a(Ljava/lang/String;Z)V

    .line 348
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/yik/yak/ui/activity/PhotoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method public openUrl()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d00d4
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v2, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v1, v2, v0}, LGs;->b(Ljava/lang/String;Z)V

    .line 331
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PhotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .line 337
    :goto_0
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    :goto_1
    return-void

    .line 334
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    goto :goto_0

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->launchMapActivity()V

    goto :goto_1
.end method
