.class LEf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEe;


# direct methods
.method constructor <init>(LEe;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, LEf;->a:LEe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    :try_start_0
    iget-object v0, p0, LEf;->a:LEe;

    iget-object v0, v0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, LEf;->a:LEe;

    iget-object v1, v1, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
