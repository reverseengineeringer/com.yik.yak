.class public abstract Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;
.super LCQ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LDb;",
        "K:",
        "Lcom/yik/yak/data/models/YikYakObject;",
        ">",
        "LCQ",
        "<TT;TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, LCQ;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, LCQ;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected assignClickListener(LDb;Landroid/view/View;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, LCE;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LCE;-><init>(Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;LCQ;Landroid/view/View;ILDb;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public broadcastDoubleClick(LDb;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1, p2}, LDb;->onDoubleClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getListener()LCS;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getListener()LCS;

    move-result-object v0

    instance-of v0, v0, LCF;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getListener()LCS;

    .line 49
    :cond_0
    return-void
.end method
