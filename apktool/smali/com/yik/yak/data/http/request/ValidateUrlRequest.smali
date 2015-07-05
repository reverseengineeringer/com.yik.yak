.class public Lcom/yik/yak/data/http/request/ValidateUrlRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private mYakTextToValidate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yik/yak/data/http/request/ValidateUrlRequest;->mYakTextToValidate:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v1, "yt"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/ValidateUrlRequest;->mYakTextToValidate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    return-object v0
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://lv.yikyakapi.net/validateUrl"

    return-object v0
.end method
