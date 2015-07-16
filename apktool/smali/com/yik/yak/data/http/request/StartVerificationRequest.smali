.class public Lcom/yik/yak/data/http/request/StartVerificationRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private final TEMP_USER_ID:Ljava/lang/String;

.field private mCountry3:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    .line 14
    const-string v0, "124123124112"

    iput-object v0, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->TEMP_USER_ID:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mType:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mPrefix:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mNumber:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mCountry3:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string v1, "type"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "prefix"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "number"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "country3"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest;->mCountry3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    return-object v0
.end method

.method public buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 52
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 55
    :try_start_0
    new-instance v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;

    invoke-direct {v1}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;-><init>()V

    .line 57
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;->mErrorCode:I

    .line 61
    :cond_0
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;->mMessage:Ljava/lang/String;

    .line 65
    :cond_1
    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;->mToken:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object p1, v1

    .line 74
    :goto_0
    return-object p1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 79
    const-string v1, "userID"

    const-string v2, "124123124112"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "startVerification"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method
