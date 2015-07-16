.class public Lcom/yik/yak/data/http/request/ForceVerifyRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private mYakkerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yik/yak/data/http/request/ForceVerifyRequest;->mYakkerId:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string v1, "userID"

    iget-object v2, p0, Lcom/yik/yak/data/http/request/ForceVerifyRequest;->mYakkerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    return-object v0
.end method

.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 43
    const-string v1, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "forceVerify"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method
