.class public Lcom/adjust/sdk/ResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activityKind:Lcom/adjust/sdk/ActivityKind;

.field private adgroup:Ljava/lang/String;

.field private campaign:Ljava/lang/String;

.field private creative:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private success:Z

.field private trackerName:Ljava/lang/String;

.field private trackerToken:Ljava/lang/String;

.field private willRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    iput-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-void
.end method

.method public static fromError(Ljava/lang/String;)Lcom/adjust/sdk/ResponseData;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/adjust/sdk/ResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 117
    iput-object p0, v0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    .line 118
    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adjust/sdk/ResponseData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string v0, "Failed to parse json response: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/adjust/sdk/ResponseData;->fromError(Ljava/lang/String;)Lcom/adjust/sdk/ResponseData;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/adjust/sdk/ResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 104
    const-string v1, "error"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    .line 105
    const-string v1, "tracker_token"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    .line 106
    const-string v1, "tracker_name"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    .line 107
    const-string v1, "network"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->network:Ljava/lang/String;

    .line 108
    const-string v1, "campaign"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->campaign:Ljava/lang/String;

    .line 109
    const-string v1, "adgroup"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->adgroup:Ljava/lang/String;

    .line 110
    const-string v1, "creative"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->creative:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getActivityKind()Lcom/adjust/sdk/ActivityKind;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-object v0
.end method

.method public getActivityKindString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdgroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->adgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->campaign:Ljava/lang/String;

    return-object v0
.end method

.method public getCreative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->creative:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityKind(Lcom/adjust/sdk/ActivityKind;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 141
    return-void
.end method

.method public setWasSuccess(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    .line 145
    return-void
.end method

.method public setWillRetry(Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 149
    return-void
.end method

.method public toDic()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v0, "activityKind"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v2}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "success"

    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    if-eqz v0, :cond_7

    const-string v0, "true"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "willRetry"

    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    if-eqz v0, :cond_8

    const-string v0, "true"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "error"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const-string v0, "trackerToken"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    const-string v0, "trackerName"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->network:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    const-string v0, "network"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->network:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->campaign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    const-string v0, "campaign"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->campaign:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->adgroup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 179
    const-string v0, "adgroup"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->adgroup:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->creative:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 183
    const-string v0, "creative"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->creative:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_6
    return-object v1

    .line 155
    :cond_7
    const-string v0, "false"

    goto :goto_0

    .line 156
    :cond_8
    const-string v0, "false"

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[kind:%s success:%b willRetry:%b error:%s trackerToken:%s trackerName:%s network:%s campaign:%s adgroup:%s creative:%s]"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/adjust/sdk/ResponseData;->getActivityKindString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->network:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->campaign:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->adgroup:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->creative:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasSuccess()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    return v0
.end method

.method public willRetry()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    return v0
.end method
