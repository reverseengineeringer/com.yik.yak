.class public Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;
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
.field private mPhotoView:Landroid/widget/ImageView;

.field private mVoteCount:Lcom/yik/yak/ui/view/AnimatedTextView;


# direct methods
.method public constructor <init>(LDd;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, LDp;-><init>(LDd;Landroid/view/View;)V

    .line 31
    const v0, 0x7f0d0171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    .line 32
    const v0, 0x7f0d0172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/AnimatedTextView;

    iput-object v0, p0, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->mVoteCount:Lcom/yik/yak/ui/view/AnimatedTextView;

    .line 33
    return-void
.end method

.method private gotoPhotoActivity()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yik/yak/data/models/Yak;

    iget-boolean v1, v1, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-static {v2, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->a(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;Z)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method private invalidateNumberOfLikes(Z)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->mVoteCount:Lcom/yik/yak/ui/view/AnimatedTextView;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->mVoteCount:Lcom/yik/yak/ui/view/AnimatedTextView;

    sget-object v2, LFL;->c:LFL;

    invoke-virtual {v1, v0, v2}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(ILFL;)V

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Lcom/yik/yak/data/models/Yak;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 41
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_0
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 55
    :goto_1
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->invalidateNumberOfLikes(Z)V

    .line 56
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->onBindView(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public onDoubleClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Yak;->upvote(Z)Z

    .line 84
    invoke-direct {p0, v1}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->invalidateNumberOfLikes(Z)V

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClicked(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/yik/yak/ui/adapter/viewholder/GridPhotoViewHolder;->gotoPhotoActivity()V

    goto :goto_0
.end method
