.class LFg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LFf;


# direct methods
.method constructor <init>(LFf;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, LFg;->b:LFf;

    iput-object p2, p0, LFg;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 218
    :try_start_0
    iget-object v0, p0, LFg;->a:Lorg/json/JSONObject;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 219
    iget-object v0, p0, LFg;->b:LFf;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, LFf;->b:I

    .line 220
    new-instance v9, LAv;

    invoke-direct {v9}, LAv;-><init>()V

    move v6, v7

    .line 222
    :goto_0
    iget-object v0, p0, LFg;->b:LFf;

    iget v0, v0, LFf;->b:I

    if-ge v6, v0, :cond_3

    .line 223
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LFg;->b:LFf;

    iget-object v2, v2, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/PeekFragment;->e:Z

    iget-object v3, p0, LFg;->b:LFf;

    iget-object v3, v3, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-boolean v3, v3, Lcom/yik/yak/ui/fragment/PeekFragment;->f:Z

    iget-object v4, p0, LFg;->b:LFf;

    iget-object v4, v4, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-boolean v4, v4, Lcom/yik/yak/ui/fragment/PeekFragment;->g:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 225
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->b(Lcom/yik/yak/data/models/Yak;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->y:LDX;

    sget-object v2, LDX;->b:LDX;

    if-ne v1, v2, :cond_1

    .line 231
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 247
    :goto_2
    :try_start_1
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->r:Ljava/util/Comparator;

    iget-object v2, p0, LFg;->b:LFf;

    iget-object v2, v2, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/PeekFragment;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/PeekFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 253
    :goto_3
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    .line 254
    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :goto_4
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/PeekFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 260
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->q()V

    .line 261
    return-void

    .line 233
    :cond_1
    :try_start_2
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_2
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 241
    :cond_3
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->r()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 250
    :cond_4
    :try_start_3
    iget-object v0, p0, LFg;->b:LFf;

    iget-object v0, v0, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, p0, LFg;->b:LFf;

    iget-object v1, v1, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/PeekFragment;->r:Ljava/util/Comparator;

    iget-object v2, p0, LFg;->b:LFf;

    iget-object v2, v2, LFf;->d:Lcom/yik/yak/ui/fragment/PeekFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/PeekFragment;->s:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/PeekFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 255
    :catch_1
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
