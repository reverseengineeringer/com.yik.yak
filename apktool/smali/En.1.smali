.class public LEn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 793
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 795
    iget-object v1, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->d(Lcom/yik/yak/ui/fragment/CommentFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 796
    iget-object v1, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->d(Lcom/yik/yak/ui/fragment/CommentFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 798
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    sub-int v0, v1, v0

    .line 799
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 800
    iget-object v0, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Z

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Z

    .line 802
    iget-object v0, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-object v0, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, LEn;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Z

    goto :goto_0
.end method
