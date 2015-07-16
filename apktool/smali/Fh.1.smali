.class public LFh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/PeekListFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, LFh;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, LFh;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    invoke-virtual {v0, p3}, LFj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 99
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, LFh;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->a(Lcom/yik/yak/ui/fragment/PeekListFragment;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    if-eqz v1, :cond_2

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 106
    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1, v0}, LAO;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    .line 107
    iget-object v1, p0, LFh;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekListFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 110
    :cond_2
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    invoke-virtual {v1, v0}, LHa;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    .line 117
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    if-eqz v1, :cond_3

    .line 118
    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->c(Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/ui/fragment/PhotoPeekFragment;

    move-result-object v0

    .line 123
    :goto_1
    iget-object v1, p0, LFh;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    sget-object v2, LCU;->b:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->a(Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/ui/fragment/PeekFragment;

    move-result-object v0

    goto :goto_1
.end method
