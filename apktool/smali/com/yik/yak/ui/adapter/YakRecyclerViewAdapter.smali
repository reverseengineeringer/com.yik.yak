.class public Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;
.super Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter",
        "<",
        "Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;",
        "Lcom/yik/yak/data/models/Yak;",
        ">;"
    }
.end annotation


# instance fields
.field mShouldShowReplierIdentities:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->mShouldShowReplierIdentities:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->mShouldShowReplierIdentities:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f03005a

    return v0
.end method

.method protected getViewHolderClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    return-object v0
.end method
