.class public Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONArray;

    .line 22
    new-instance v2, LAi;

    invoke-direct {v2}, LAi;-><init>()V

    .line 23
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Lcom/yik/yak/data/models/Website;

    .line 25
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v2, v0}, LAi;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Website;

    move-result-object v0

    aput-object v0, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 34
    :cond_0
    return-object v3
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->GET:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "http://lv.yikyakapi.net/getSites"

    return-object v0
.end method
