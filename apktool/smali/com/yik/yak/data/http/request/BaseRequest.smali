.class public abstract Lcom/yik/yak/data/http/request/BaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yik/yak/data/http/request/YikYakRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildRequest()Lxt;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 31
    sget-object v1, Lcom/yik/yak/data/http/request/BaseRequest$1;->$SwitchMap$com$yik$yak$data$http$request$MethodType:[I

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getMethodType()Lcom/yik/yak/data/http/request/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yik/yak/data/http/request/MethodType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    new-instance v0, Lxv;

    invoke-direct {v0}, Lxv;-><init>()V

    invoke-virtual {v0}, Lxv;->a()Lxv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_1
    :try_start_0
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->buildBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxv;->a(Lxw;)Lxv;

    move-result-object v1

    invoke-virtual {v1}, Lxv;->b()Lxt;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    :pswitch_2
    :try_start_1
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->buildBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxv;->b(Lxw;)Lxv;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lxv;->b(Ljava/lang/String;Ljava/lang/String;)Lxv;

    move-result-object v1

    invoke-virtual {v1}, Lxv;->b()Lxt;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    return-object p1
.end method

.method public execute(Landroid/content/Context;LAe;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, LAa;->a()LAa;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, LAa;->a(Landroid/content/Context;Lcom/yik/yak/data/http/request/YikYakRequest;LAe;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrlPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrlBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
