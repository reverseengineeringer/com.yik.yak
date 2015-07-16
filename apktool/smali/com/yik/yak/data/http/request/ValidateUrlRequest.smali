.class public Lcom/yik/yak/data/http/request/ValidateUrlRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private mYakTextToValidate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yik/yak/data/http/request/ValidateUrlRequest;->mYakTextToValidate:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v1, "yt"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/ValidateUrlRequest;->mYakTextToValidate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    return-object v0
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
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

    const-string v1, "/validateUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
