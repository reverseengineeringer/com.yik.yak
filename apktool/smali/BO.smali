.class LBO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LBN;


# direct methods
.method constructor <init>(LBN;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, LBO;->b:LBN;

    iput-object p2, p0, LBO;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, LBO;->a:Lorg/json/JSONObject;

    const-string v1, "getBasecamps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "basecamps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 318
    iget-object v0, p0, LBO;->b:LBN;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, LBN;->b:I

    .line 319
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, LBO;->b:LBN;

    iget v0, v0, LBN;->b:I

    if-ge v4, v0, :cond_4

    .line 320
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 321
    new-instance v7, LAw;

    const-string v0, "bcName"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bcName"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    const-string v0, "bcLat"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bcLat"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    const-string v0, "bcLong"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bcLong"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3
    const-string v0, "bcPeek"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bcPeek"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v7, v3, v2, v1, v0}, LAw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, LBO;->b:LBN;

    iget-object v0, v0, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 321
    :cond_0
    const-string v0, ""

    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v0, "0"

    move-object v2, v0

    goto :goto_2

    :cond_2
    const-string v0, "0"

    move-object v1, v0

    goto :goto_3

    :cond_3
    const-string v0, "0"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 333
    :cond_4
    invoke-static {}, LAa;->C()Z

    move-result v0

    if-nez v0, :cond_5

    .line 334
    iget-object v0, p0, LBO;->b:LBN;

    iget-object v0, v0, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    new-instance v1, LAw;

    const-string v2, "Current Location"

    iget-object v3, p0, LBO;->b:LBN;

    iget-object v3, v3, LBN;->c:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LBO;->b:LBN;

    iget-object v4, v4, LBN;->c:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v4}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {v1, v2, v3, v4, v5}, LAw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_5
    iget-object v0, p0, LBO;->b:LBN;

    iget-object v0, v0, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    iget-object v1, p0, LBO;->b:LBN;

    iget-object v1, v1, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;->setData(Ljava/util/ArrayList;)V

    .line 343
    iget-object v0, p0, LBO;->b:LBN;

    iget-object v0, v0, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;->notifyDataSetChanged()V

    .line 344
    iget-object v0, p0, LBO;->b:LBN;

    iget-object v0, v0, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    return-void
.end method
