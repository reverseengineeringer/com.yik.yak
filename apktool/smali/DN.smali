.class public LDN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    sget-object v1, LDX;->a:LDX;

    if-eq v0, v1, :cond_0

    .line 471
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "New"

    iget-object v2, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/BaseYakFragment;->k:Z

    invoke-virtual {v0, v1, v2}, LHa;->c(Ljava/lang/String;Z)V

    .line 472
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    sget-object v1, LDX;->a:LDX;

    iput-object v1, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 473
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->l()V

    .line 476
    :cond_0
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    sget-object v1, LDX;->a:LDX;

    iput-object v1, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 478
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_1
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a_()V

    .line 491
    :goto_0
    return-void

    .line 483
    :cond_2
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LDd;)V

    .line 484
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    iget-object v1, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, LDd;->setData(Ljava/util/ArrayList;)V

    .line 485
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    .line 486
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 488
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->D:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, LDN;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o()V

    goto :goto_0
.end method
