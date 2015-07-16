.class public Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 22
    check-cast p1, Lorg/json/JSONArray;

    .line 23
    new-instance v2, LAu;

    invoke-direct {v2}, LAu;-><init>()V

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Lcom/yik/yak/data/models/Website;

    .line 26
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v2, v0}, LAu;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Website;

    move-result-object v0

    aput-object v0, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 35
    :cond_0
    return-object v3
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->GET:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LAM;->a()LAM;

    move-result-object v1

    invoke-virtual {v1}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/models/Environment;->getLinkEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/getSites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
