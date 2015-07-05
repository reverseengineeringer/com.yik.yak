.class public Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private mToken:Ljava/lang/Integer;

.field private mYakkerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;->mToken:Ljava/lang/Integer;

    .line 22
    iput-object p1, p0, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;->mYakkerId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;->mYakkerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v1, "userID"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;->mYakkerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method

.method public buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 45
    :try_start_0
    new-instance v2, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest$AuthenticateWebTokenResponse;

    invoke-direct {v2}, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest$AuthenticateWebTokenResponse;-><init>()V

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    .line 47
    const-string v3, "validationToken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest$AuthenticateWebTokenResponse;->mValidationToken:Ljava/lang/String;

    .line 48
    const-string v3, "yid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest$AuthenticateWebTokenResponse;->mYid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 54
    :goto_0
    return-object p1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->PUT:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://webclient.yikyakapi.net/api/auth/token/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;->mToken:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
