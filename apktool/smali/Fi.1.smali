.class public LFi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/PeekListFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, LFi;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, LFi;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    invoke-virtual {v0, p3}, LFj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 132
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v2, "My Peeks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    const-string v2, "Click here to discover new places!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, LFi;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekListFragment;->d:Landroid/os/Vibrator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 136
    iget-object v1, p0, LFi;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->a(Lcom/yik/yak/ui/fragment/PeekListFragment;Lcom/yik/yak/data/models/PeekLocation;)V

    .line 139
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
