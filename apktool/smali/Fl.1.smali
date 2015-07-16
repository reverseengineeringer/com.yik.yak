.class public LFl;
.super LAe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAe",
        "<",
        "Lcom/yik/yak/ui/fragment/PeekListFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, LAe;-><init>(Ljava/lang/Object;)V

    .line 237
    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/ui/fragment/PeekListFragment;Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 243
    invoke-virtual {p1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p1, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1}, LAO;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LFj;->a(Ljava/util/ArrayList;)V

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 233
    check-cast p1, Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-virtual {p0, p1, p2}, LFl;->a(Lcom/yik/yak/ui/fragment/PeekListFragment;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
