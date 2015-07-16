.class LDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LDJ;


# direct methods
.method constructor <init>(LDJ;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, LDK;->b:LDJ;

    iput-object p2, p0, LDK;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 125
    :try_start_0
    iget-object v0, p0, LDK;->a:Lorg/json/JSONObject;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 128
    iget-object v0, p0, LDK;->b:LDJ;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, LDJ;->b:I

    .line 129
    new-instance v9, LAv;

    invoke-direct {v9}, LAv;-><init>()V

    move v6, v7

    .line 131
    :goto_0
    iget-object v0, p0, LDK;->b:LDJ;

    iget v0, v0, LDJ;->b:I

    if-ge v6, v0, :cond_0

    .line 132
    iget-object v0, p0, LDK;->b:LDJ;

    iget-object v0, v0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LDK;->b:LDJ;

    iget-object v2, v2, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->e:Z

    iget-object v3, p0, LDK;->b:LDJ;

    iget-object v3, v3, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-boolean v3, v3, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->f:Z

    iget-object v4, p0, LDK;->b:LDJ;

    iget-object v4, v4, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-boolean v4, v4, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->g:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 134
    iget-object v1, p0, LDK;->b:LDJ;

    iget-object v1, v1, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, LDK;->b:LDJ;

    iget-object v1, v1, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, LDK;->b:LDJ;

    iget-object v0, v0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v1, p0, LDK;->b:LDJ;

    iget-object v1, v1, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->r:Ljava/util/Comparator;

    iget-object v2, p0, LDK;->b:LDJ;

    iget-object v2, v2, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->s:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 144
    iget-object v0, p0, LDK;->b:LDJ;

    iget-object v0, v0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    .line 145
    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :goto_1
    iget-object v0, p0, LDK;->b:LDJ;

    iget-object v0, v0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 151
    iget-object v0, p0, LDK;->b:LDJ;

    iget-object v0, v0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->q()V

    .line 153
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
