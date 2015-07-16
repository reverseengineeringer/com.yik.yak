.class LBy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LBx;


# direct methods
.method constructor <init>(LBx;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, LBy;->b:LBx;

    iput-object p2, p0, LBy;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, LBy;->a:Lorg/json/JSONObject;

    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 348
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 350
    new-instance v9, LAv;

    invoke-direct {v9}, LAv;-><init>()V

    move v6, v0

    .line 352
    :goto_0
    if-ge v6, v8, :cond_0

    .line 353
    iget-object v0, p0, LBy;->b:LBx;

    iget-object v0, v0, LBx;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 354
    iget-object v1, p0, LBy;->b:LBx;

    iget-object v1, v1, LBx;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->g(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    :cond_0
    :try_start_1
    iget-object v0, p0, LBy;->b:LBx;

    iget-object v0, v0, LBx;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    :goto_1
    iget-object v0, p0, LBy;->b:LBx;

    iget-object v0, v0, LBx;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c()V

    .line 366
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
