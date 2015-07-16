.class public Lcom/yik/yak/ui/adapter/EnlargedPhotoPeekAdapter;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 18
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
            "Lcom/yik/yak/data/models/Yak;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f03005f

    return v0
.end method

.method protected getViewHolderClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/yik/yak/ui/adapter/viewholder/EnlargedPhotoViewHolder;

    return-object v0
.end method
