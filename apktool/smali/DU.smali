.class public LDU;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 410
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 415
    iget-object v0, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->j:Z

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->c()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->d()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 424
    iget v1, p0, LDU;->a:I

    if-le v0, v1, :cond_2

    .line 425
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-boolean v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->c:Z

    if-nez v1, :cond_0

    .line 426
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-boolean v3, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h:Z

    .line 427
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-boolean v2, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->c:Z

    .line 428
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->F:Landroid/widget/LinearLayout;

    iget-object v2, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/BaseYakFragment;->w:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 442
    :cond_0
    :goto_0
    iput v0, p0, LDU;->a:I

    .line 444
    :cond_1
    return-void

    .line 431
    :cond_2
    iget v1, p0, LDU;->a:I

    if-ge v0, v1, :cond_0

    .line 432
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-boolean v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h:Z

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-boolean v2, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h:Z

    .line 434
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-boolean v3, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->c:Z

    .line 435
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v2, 0x7f0d01c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v2, 0x7f0d01c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    iget-object v1, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->F:Landroid/widget/LinearLayout;

    iget-object v2, p0, LDU;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/BaseYakFragment;->v:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
