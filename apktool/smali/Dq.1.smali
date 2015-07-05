.class LDq;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:LDh;


# direct methods
.method constructor <init>(LDh;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, LDq;->b:LDh;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 394
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 399
    iget-object v0, p0, LDq;->b:LDh;

    iget-boolean v0, v0, LDh;->i:Z

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, LDq;->b:LDh;

    iget-object v0, v0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->c()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 401
    iget v1, p0, LDq;->a:I

    if-le v0, v1, :cond_2

    .line 402
    iget-object v1, p0, LDq;->b:LDh;

    iget-boolean v1, v1, LDh;->b:Z

    if-nez v1, :cond_0

    .line 403
    iget-object v1, p0, LDq;->b:LDh;

    iput-boolean v3, v1, LDh;->g:Z

    .line 404
    iget-object v1, p0, LDq;->b:LDh;

    iput-boolean v2, v1, LDh;->b:Z

    .line 405
    iget-object v1, p0, LDq;->b:LDh;

    iget-object v1, v1, LDh;->E:Landroid/widget/LinearLayout;

    iget-object v2, p0, LDq;->b:LDh;

    iget-object v2, v2, LDh;->v:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    :cond_0
    :goto_0
    iput v0, p0, LDq;->a:I

    .line 421
    :cond_1
    return-void

    .line 408
    :cond_2
    iget v1, p0, LDq;->a:I

    if-ge v0, v1, :cond_0

    .line 409
    iget-object v1, p0, LDq;->b:LDh;

    iget-boolean v1, v1, LDh;->g:Z

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, LDq;->b:LDh;

    iput-boolean v2, v1, LDh;->g:Z

    .line 411
    iget-object v1, p0, LDq;->b:LDh;

    iput-boolean v3, v1, LDh;->b:Z

    .line 412
    iget-object v1, p0, LDq;->b:LDh;

    iget-object v1, v1, LDh;->G:Landroid/view/View;

    const v2, 0x7f0d01ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v1, p0, LDq;->b:LDh;

    iget-object v1, v1, LDh;->G:Landroid/view/View;

    const v2, 0x7f0d01a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v1, p0, LDq;->b:LDh;

    iget-object v1, v1, LDh;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    iget-object v1, p0, LDq;->b:LDh;

    iget-object v1, v1, LDh;->E:Landroid/widget/LinearLayout;

    iget-object v2, p0, LDq;->b:LDh;

    iget-object v2, v2, LDh;->u:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
