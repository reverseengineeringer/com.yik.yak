.class public Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;
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


# instance fields
.field private DEFAULT_HEIGHT_FOR_IMAGE:I

.field private MAX_HEIGHT_FOR_IMAGE:I

.field private mDateUtil:LHk;

.field private mMaxWidthPossible:D

.field private mPhotoView:Landroid/widget/ImageView;

.field private mReplyCount:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;

.field private mVoteView:Lcom/yik/yak/ui/view/VoteView;

.field private mYakBody:Landroid/widget/TextView;

.field private mYakHandle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LDd;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, LDp;-><init>(LDd;Landroid/view/View;)V

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->MAX_HEIGHT_FOR_IMAGE:I

    .line 25
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->DEFAULT_HEIGHT_FOR_IMAGE:I

    .line 27
    new-instance v0, LHk;

    invoke-direct {v0}, LHk;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mDateUtil:LHk;

    .line 44
    const v0, 0x7f0d0171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0d0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mYakHandle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mYakBody:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0d0089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    .line 48
    const v0, 0x7f0d008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mTimestamp:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0d008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mReplyCount:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x10

    invoke-static {v1}, LHi;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mMaxWidthPossible:D

    .line 51
    return-void
.end method

.method private gotoPhotoActivity()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yik/yak/data/models/Yak;

    iget-boolean v1, v1, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-static {v2, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->a(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;Z)Landroid/content/Intent;

    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private resizeImageViewToCurrentYak()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    .line 105
    iget-wide v2, v0, Lcom/yik/yak/data/models/Yak;->ImageWidth:D

    .line 106
    iget-wide v0, v0, Lcom/yik/yak/data/models/Yak;->ImageHeight:D

    .line 110
    cmpl-double v4, v0, v6

    if-eqz v4, :cond_0

    cmpl-double v4, v2, v6

    if-nez v4, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    iget v1, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->DEFAULT_HEIGHT_FOR_IMAGE:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 114
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_1
    div-double/2addr v0, v2

    .line 119
    iget-wide v2, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mMaxWidthPossible:D

    mul-double/2addr v0, v2

    .line 121
    iget v2, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->MAX_HEIGHT_FOR_IMAGE:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    .line 122
    iget v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->MAX_HEIGHT_FOR_IMAGE:I

    int-to-double v0, v0

    move-wide v2, v0

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    double-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 127
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method


# virtual methods
.method public onBindView(Lcom/yik/yak/data/models/Yak;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 71
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->resizeImageViewToCurrentYak()V

    .line 74
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 79
    :goto_2
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mYakHandle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_3
    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-nez v0, :cond_7

    .line 87
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-nez v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mReplyCount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mTimestamp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mDateUtil:LHk;

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v1, v2}, LHk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mYakBody:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mYakHandle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mYakHandle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 89
    :cond_5
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-ne v0, v4, :cond_6

    .line 90
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mReplyCount:Landroid/widget/TextView;

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

    goto :goto_4

    .line 91
    :cond_6
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-le v0, v4, :cond_1

    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mReplyCount:Landroid/widget/TextView;

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

    goto :goto_4

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mReplyCount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->onBindView(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public onDoubleClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->mVoteView:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/VoteView;->a()V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClicked(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;->gotoPhotoActivity()V

    goto :goto_0
.end method
