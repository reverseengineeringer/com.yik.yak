.class LEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LEw;


# direct methods
.method constructor <init>(LEw;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, LEx;->b:LEw;

    iput-object p2, p0, LEx;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 170
    :try_start_0
    iget-object v0, p0, LEx;->a:Lorg/json/JSONObject;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 171
    iget-object v0, p0, LEx;->b:LEw;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, LEw;->b:I

    .line 172
    new-instance v9, LAj;

    invoke-direct {v9}, LAj;-><init>()V

    move v6, v7

    .line 174
    :goto_0
    iget-object v0, p0, LEx;->b:LEw;

    iget v0, v0, LEw;->b:I

    if-ge v6, v0, :cond_3

    .line 175
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, LAj;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LEx;->b:LEw;

    iget-object v2, v2, LEw;->d:LEv;

    iget-boolean v2, v2, LEv;->d:Z

    iget-object v3, p0, LEx;->b:LEw;

    iget-object v3, v3, LEw;->d:LEv;

    iget-boolean v3, v3, LEv;->e:Z

    iget-object v4, p0, LEx;->b:LEw;

    iget-object v4, v4, LEw;->d:LEv;

    iget-boolean v4, v4, LEv;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 177
    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_0

    .line 179
    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 196
    :cond_1
    :goto_2
    :try_start_1
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->q:Ljava/util/Comparator;

    iget-object v2, p0, LEx;->b:LEw;

    iget-object v2, v2, LEw;->d:LEv;

    iget-object v2, v2, LEv;->q:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, LEv;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 202
    :goto_3
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    .line 203
    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :goto_4
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    iget-object v0, v0, LEv;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 209
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->m()V

    .line 210
    return-void

    .line 184
    :cond_2
    :try_start_2
    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    iget-boolean v0, v0, LEv;->c:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->n()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 199
    :cond_4
    :try_start_3
    iget-object v0, p0, LEx;->b:LEw;

    iget-object v0, v0, LEw;->d:LEv;

    iget-object v1, p0, LEx;->b:LEw;

    iget-object v1, v1, LEw;->d:LEv;

    iget-object v1, v1, LEv;->q:Ljava/util/Comparator;

    iget-object v2, p0, LEx;->b:LEw;

    iget-object v2, v2, LEw;->d:LEv;

    iget-object v2, v2, LEv;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, LEv;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 204
    :catch_1
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
