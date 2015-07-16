.class LEe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LEd;


# direct methods
.method constructor <init>(LEd;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, LEe;->b:LEd;

    iput-object p2, p0, LEe;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 471
    :try_start_0
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v0, p0, LEe;->a:Lorg/json/JSONObject;

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 473
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 475
    new-instance v10, LAv;

    invoke-direct {v10}, LAv;-><init>()V

    move v6, v7

    .line 477
    :goto_0
    if-ge v6, v9, :cond_0

    .line 478
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LEe;->b:LEd;

    iget-object v2, v2, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    iget-object v3, p0, LEe;->b:LEd;

    iget-object v3, v3, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v3, v3, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    iget-object v4, p0, LEe;->b:LEd;

    iget-object v4, v4, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v4, v4, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    iget-object v5, p0, LEe;->b:LEd;

    iget-object v5, v5, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v5, v5, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 479
    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->parentYak:Lcom/yik/yak/data/models/Yak;

    .line 480
    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 484
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V

    .line 487
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 489
    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    .line 491
    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, LEe;->b:LEd;

    iget-object v1, v1, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setData(Ljava/util/ArrayList;)V

    .line 495
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_1
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 503
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 504
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    .line 518
    :cond_2
    :goto_2
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 505
    :cond_3
    iget-object v0, p0, LEe;->b:LEd;

    iget-boolean v0, v0, LEd;->a:Z

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, LEe;->b:LEd;

    iget-object v0, v0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    new-instance v1, LEf;

    invoke-direct {v1, p0}, LEf;-><init>(LEe;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
