.class public LEh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;I)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, LEh;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iput p2, p0, LEh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 573
    iget-object v0, p0, LEh;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, LEh;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 578
    iget v1, p0, LEh;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 580
    iget v0, p0, LEh;->a:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x64

    add-int/lit16 v0, v0, 0x1f4

    .line 582
    iget-object v1, p0, LEh;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    new-instance v2, LEi;

    invoke-direct {v2, p0}, LEi;-><init>(LEh;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
