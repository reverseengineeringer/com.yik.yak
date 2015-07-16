.class LHb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/OnFinishedListener;


# instance fields
.field final synthetic a:LHa;


# direct methods
.method constructor <init>(LHa;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, LHb;->a:LHa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedTracking(Lcom/adjust/sdk/ResponseData;)V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->e()LsK;

    move-result-object v0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getNetwork()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 85
    :try_start_0
    const-string v2, "[Adjust]Network"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCampaign()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "[Adjust]Campaign"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCampaign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getAdgroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "[Adjust]Adgroup"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getAdgroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCreative()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 93
    const-string v2, "[Adjust]Creative"

    invoke-virtual {p1}, Lcom/adjust/sdk/ResponseData;->getCreative()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 96
    invoke-virtual {v0, v1}, LsK;->a(Lorg/json/JSONObject;)V

    .line 97
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_3
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
