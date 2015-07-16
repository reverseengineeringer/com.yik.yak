.class public Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;
.super LDd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDd",
        "<",
        "Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;",
        "LAw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, LDd;-><init>(Landroid/content/Context;)V

    .line 15
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
            "LAw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, LDd;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f030059

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f030059

    return v0
.end method

.method protected getViewHolderClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yik/yak/ui/adapter/viewholder/BaseCampOptionViewHolder;

    return-object v0
.end method
