.class LEg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEd;


# direct methods
.method constructor <init>(LEd;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, LEg;->a:LEd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, LEg;->a:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 531
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 532
    iget-object v1, p0, LEg;->a:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    .line 533
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    .line 534
    iget-object v1, p0, LEg;->a:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, LEg;->a:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, LEg;->a:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setData(Ljava/util/ArrayList;)V

    .line 536
    iget-object v0, p0, LEg;->a:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object v0, p0, LEg;->a:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 538
    return-void
.end method
