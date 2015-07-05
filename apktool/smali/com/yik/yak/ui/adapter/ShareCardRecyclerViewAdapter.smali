.class public Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;
.super LCQ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LCQ",
        "<",
        "Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;",
        "Lcom/yik/yak/data/models/FamousShareCard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, LCQ;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/FamousShareCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, LCQ;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f030058

    return v0
.end method

.method protected getViewHolderClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/yik/yak/ui/adapter/viewholder/ShareCardViewHolder;

    return-object v0
.end method
