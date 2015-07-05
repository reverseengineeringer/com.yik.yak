.class public LDH;
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
    .line 766
    iput-object p1, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 769
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 771
    iget-object v1, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->d(Lcom/yik/yak/ui/fragment/CommentFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 772
    iget-object v1, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->d(Lcom/yik/yak/ui/fragment/CommentFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 774
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    sub-int v0, v1, v0

    .line 775
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 776
    iget-object v0, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 778
    iget-object v0, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, LDH;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    goto :goto_0
.end method
