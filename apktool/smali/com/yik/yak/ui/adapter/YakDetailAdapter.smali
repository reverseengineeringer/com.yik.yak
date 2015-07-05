.class public Lcom/yik/yak/ui/adapter/YakDetailAdapter;
.super Lcom/yik/yak/ui/adapter/HeaderViewAdapter;
.source "SourceFile"


# instance fields
.field private mFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 33
    iput-object p3, p0, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    .line 34
    return-void
.end method


# virtual methods
.method public addLoadingYak()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    .line 83
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method protected buildViewHolderInstance(Ljava/lang/reflect/Constructor;Landroid/view/View;I)LDb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "LDb;",
            ">;",
            "Landroid/view/View;",
            "I)",
            "LDb;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 72
    if-ne p3, v2, :cond_0

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    aput-object p2, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDb;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->buildViewHolderInstance(Ljava/lang/reflect/Constructor;Landroid/view/View;I)LDb;

    move-result-object v0

    goto :goto_0
.end method

.method protected getHeaderLayoutId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f03005b

    return v0
.end method

.method protected getHeaderViewHolderClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    return-object v0
.end method

.method protected getHeaderViewHolderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "LDb;",
            ">;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "LDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, LCQ;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/support/v4/app/Fragment;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f03005d

    return v0
.end method

.method protected getViewHolderClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/yik/yak/ui/adapter/viewholder/YakReplyViewHolder;

    return-object v0
.end method
