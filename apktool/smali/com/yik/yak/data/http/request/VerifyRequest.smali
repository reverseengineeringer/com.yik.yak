.class public Lcom/yik/yak/data/http/request/VerifyRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private mToken:Ljava/lang/String;

.field private mVerificationCode:Ljava/lang/String;

.field private mYakkerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yik/yak/data/http/request/VerifyRequest;->mYakkerId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yik/yak/data/http/request/VerifyRequest;->mVerificationCode:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yik/yak/data/http/request/VerifyRequest;->mToken:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v1, "userID"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/VerifyRequest;->mYakkerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "token"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/VerifyRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "code"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/VerifyRequest;->mVerificationCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    return-object v0
.end method

.method public buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    check-cast p1, Lorg/json/JSONObject;

    .line 49
    new-instance v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;

    invoke-direct {v1, p0}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;-><init>(Lcom/yik/yak/data/http/request/VerifyRequest;)V

    .line 52
    :try_start_0
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;->mErrorCode:I

    .line 56
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;->mErrorMessage:Ljava/lang/String;

    .line 60
    :cond_1
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;->mVerificationSuccessful:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_2
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 72
    const-string v1, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "verify"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0
.end method
