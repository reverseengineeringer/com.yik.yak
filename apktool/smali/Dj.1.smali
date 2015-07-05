.class LDj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LDh;


# direct methods
.method constructor <init>(LDh;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, LDj;->a:LDh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->x:LDt;

    sget-object v1, LDt;->a:LDt;

    if-eq v0, v1, :cond_0

    .line 463
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "New"

    iget-object v2, p0, LDj;->a:LDh;

    iget-boolean v2, v2, LDh;->j:Z

    invoke-virtual {v0, v1, v2}, LGs;->c(Ljava/lang/String;Z)V

    .line 464
    iget-object v0, p0, LDj;->a:LDh;

    sget-object v1, LDt;->a:LDt;

    iput-object v1, v0, LDh;->x:LDt;

    .line 465
    iget-object v0, p0, LDj;->a:LDh;

    invoke-virtual {v0}, LDh;->h()V

    .line 468
    :cond_0
    iget-object v0, p0, LDj;->a:LDh;

    sget-object v1, LDt;->a:LDt;

    iput-object v1, v0, LDh;->x:LDt;

    .line 470
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    :cond_1
    iget-object v0, p0, LDj;->a:LDh;

    invoke-virtual {v0}, LDh;->a_()V

    .line 483
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, LDj;->a:LDh;

    iget-object v1, v1, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LCQ;)V

    .line 476
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, LDj;->a:LDh;

    iget-object v1, v1, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setData(Ljava/util/ArrayList;)V

    .line 477
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 478
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 480
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, LDj;->a:LDh;

    iget-object v0, v0, LDh;->C:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, LDj;->a:LDh;

    invoke-virtual {v0}, LDh;->k()V

    goto :goto_0
.end method
