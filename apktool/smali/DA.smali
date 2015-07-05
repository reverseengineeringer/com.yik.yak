.class LDA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LDz;


# direct methods
.method constructor <init>(LDz;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, LDA;->b:LDz;

    iput-object p2, p0, LDA;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 465
    :try_start_0
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 466
    iget-object v0, p0, LDA;->a:Lorg/json/JSONObject;

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 467
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 469
    new-instance v10, LAj;

    invoke-direct {v10}, LAj;-><init>()V

    move v6, v7

    .line 471
    :goto_0
    if-ge v6, v9, :cond_0

    .line 472
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, LAj;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LDA;->b:LDz;

    iget-object v2, v2, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    iget-object v3, p0, LDA;->b:LDz;

    iget-object v3, v3, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v3, v3, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    iget-object v4, p0, LDA;->b:LDz;

    iget-object v4, v4, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v4, v4, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    iget-object v5, p0, LDA;->b:LDz;

    iget-object v5, v5, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-boolean v5, v5, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Z

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 473
    iget-object v1, p0, LDA;->b:LDz;

    iget-object v1, v1, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v1, p0, LDA;->b:LDz;

    iget-object v1, v1, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 477
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, LDA;->b:LDz;

    iget-object v1, v1, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V

    .line 480
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 482
    iget-object v1, p0, LDA;->b:LDz;

    iget-object v1, v1, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    .line 484
    iget-object v1, p0, LDA;->b:LDz;

    iget-object v1, v1, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_1
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, LDA;->b:LDz;

    iget-object v1, v1, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setData(Ljava/util/ArrayList;)V

    .line 488
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_1
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 495
    new-array v0, v11, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List is about to try and scroll to comment with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDA;->b:LDz;

    iget-object v2, v2, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 498
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    .line 511
    :cond_2
    :goto_2
    return-void

    .line 490
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON Failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LDA;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_3
    iget-object v0, p0, LDA;->b:LDz;

    iget-boolean v0, v0, LDz;->a:Z

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, LDA;->b:LDz;

    iget-object v0, v0, LDz;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Landroid/os/Handler;

    new-instance v1, LDB;

    invoke-direct {v1, p0}, LDB;-><init>(LDA;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
