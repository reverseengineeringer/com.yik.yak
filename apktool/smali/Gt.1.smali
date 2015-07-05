.class LGt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/OnFinishedListener;


# instance fields
.field final synthetic a:LGs;


# direct methods
.method constructor <init>(LGs;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, LGt;->a:LGs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedTracking(Lcom/adjust/sdk/ResponseData;)V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getNetwork()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 78
    :try_start_0
    const-string v2, "[Adjust]Network"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCampaign()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "[Adjust]Campaign"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCampaign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getAdgroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "[Adjust]Adgroup"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getAdgroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCreative()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 86
    const-string v2, "[Adjust]Creative"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCreative()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 89
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    .line 90
    invoke-static {v1}, Lcom/amplitude/api/Amplitude;->setUserProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_3
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
