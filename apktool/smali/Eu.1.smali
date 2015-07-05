.class LEu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LEt;


# direct methods
.method constructor <init>(LEt;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, LEu;->b:LEt;

    iput-object p2, p0, LEu;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, LEu;->a:Lorg/json/JSONObject;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 114
    iget-object v0, p0, LEu;->b:LEt;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, LEt;->b:I

    .line 115
    new-instance v9, LAj;

    invoke-direct {v9}, LAj;-><init>()V

    move v6, v7

    .line 117
    :goto_0
    iget-object v0, p0, LEu;->b:LEt;

    iget v0, v0, LEt;->b:I

    if-ge v6, v0, :cond_1

    .line 118
    iget-object v0, p0, LEu;->b:LEt;

    iget-object v0, v0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, LAj;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LEu;->b:LEt;

    iget-object v2, v2, LEt;->c:LEs;

    iget-boolean v2, v2, LEs;->d:Z

    iget-object v3, p0, LEu;->b:LEt;

    iget-object v3, v3, LEt;->c:LEs;

    iget-boolean v3, v3, LEs;->e:Z

    iget-object v4, p0, LEu;->b:LEt;

    iget-object v4, v4, LEt;->c:LEs;

    iget-boolean v4, v4, LEs;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 119
    iget-object v1, p0, LEu;->b:LEt;

    iget-object v1, v1, LEt;->c:LEs;

    iget-object v1, v1, LEs;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_0

    .line 120
    iget-object v1, p0, LEu;->b:LEt;

    iget-object v1, v1, LEt;->c:LEs;

    iget-object v1, v1, LEs;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, LEu;->b:LEt;

    iget-object v1, v1, LEt;->c:LEs;

    iget-object v1, v1, LEs;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 130
    :cond_1
    :try_start_1
    iget-object v0, p0, LEu;->b:LEt;

    iget-object v0, v0, LEt;->c:LEs;

    iget-object v1, p0, LEu;->b:LEt;

    iget-object v1, v1, LEt;->c:LEs;

    iget-object v1, v1, LEs;->q:Ljava/util/Comparator;

    iget-object v2, p0, LEu;->b:LEt;

    iget-object v2, v2, LEt;->c:LEs;

    iget-object v2, v2, LEs;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, LEs;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 132
    iget-object v0, p0, LEu;->b:LEt;

    iget-object v0, v0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    .line 133
    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :goto_2
    iget-object v0, p0, LEu;->b:LEt;

    iget-object v0, v0, LEt;->c:LEs;

    iget-object v0, v0, LEs;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 139
    iget-object v0, p0, LEu;->b:LEt;

    iget-object v0, v0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->m()V

    .line 140
    return-void

    :catch_1
    move-exception v0

    goto :goto_2
.end method
