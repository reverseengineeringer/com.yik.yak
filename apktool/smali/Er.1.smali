.class LEr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LEq;


# direct methods
.method constructor <init>(LEq;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, LEr;->b:LEq;

    iput-object p2, p0, LEr;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, LEr;->a:Lorg/json/JSONObject;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 110
    iget-object v0, p0, LEr;->b:LEq;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, LEq;->b:I

    .line 111
    new-instance v9, LAj;

    invoke-direct {v9}, LAj;-><init>()V

    move v6, v7

    .line 113
    :goto_0
    iget-object v0, p0, LEr;->b:LEq;

    iget v0, v0, LEq;->b:I

    if-ge v6, v0, :cond_1

    .line 114
    iget-object v0, p0, LEr;->b:LEq;

    iget-object v0, v0, LEq;->c:LEp;

    invoke-virtual {v0}, LEp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, LAj;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LEr;->b:LEq;

    iget-object v2, v2, LEq;->c:LEp;

    iget-boolean v2, v2, LEp;->d:Z

    iget-object v3, p0, LEr;->b:LEq;

    iget-object v3, v3, LEq;->c:LEp;

    iget-boolean v3, v3, LEp;->e:Z

    iget-object v4, p0, LEr;->b:LEq;

    iget-object v4, v4, LEq;->c:LEp;

    iget-boolean v4, v4, LEp;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 116
    iget-object v1, p0, LEr;->b:LEq;

    iget-object v1, v1, LEq;->c:LEp;

    iget-object v1, v1, LEp;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, p0, LEr;->b:LEq;

    iget-object v1, v1, LEq;->c:LEp;

    iget-object v1, v1, LEp;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, LEr;->b:LEq;

    iget-object v1, v1, LEq;->c:LEp;

    iget-object v1, v1, LEp;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    :cond_1
    :try_start_1
    iget-object v0, p0, LEr;->b:LEq;

    iget-object v0, v0, LEq;->c:LEp;

    iget-object v1, p0, LEr;->b:LEq;

    iget-object v1, v1, LEq;->c:LEp;

    iget-object v1, v1, LEp;->q:Ljava/util/Comparator;

    iget-object v2, p0, LEr;->b:LEq;

    iget-object v2, v2, LEq;->c:LEp;

    iget-object v2, v2, LEp;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, LEp;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 129
    iget-object v0, p0, LEr;->b:LEq;

    iget-object v0, v0, LEq;->c:LEp;

    invoke-virtual {v0}, LEp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    .line 130
    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_2
    iget-object v0, p0, LEr;->b:LEq;

    iget-object v0, v0, LEq;->c:LEp;

    iget-object v0, v0, LEp;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 136
    iget-object v0, p0, LEr;->b:LEq;

    iget-object v0, v0, LEq;->c:LEp;

    invoke-virtual {v0}, LEp;->m()V

    .line 137
    return-void

    .line 131
    :catch_1
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
