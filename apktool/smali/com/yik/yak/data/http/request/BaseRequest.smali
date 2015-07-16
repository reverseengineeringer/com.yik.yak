.class public abstract Lcom/yik/yak/data/http/request/BaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yik/yak/data/http/request/YikYakRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public buildBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildRequest()LxD;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 32
    sget-object v1, Lcom/yik/yak/data/http/request/BaseRequest$1;->$SwitchMap$com$yik$yak$data$http$request$MethodType:[I

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getMethodType()Lcom/yik/yak/data/http/request/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yik/yak/data/http/request/MethodType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    new-instance v0, LxF;

    invoke-direct {v0}, LxF;-><init>()V

    invoke-virtual {v0}, LxF;->a()LxF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->buildBody()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POST to url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v3}, LHm;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    new-instance v3, LxF;

    invoke-direct {v3}, LxF;-><init>()V

    invoke-virtual {v3, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v2

    invoke-virtual {v1, v2}, LxF;->a(LxG;)LxF;

    move-result-object v1

    invoke-virtual {v1}, LxF;->b()LxD;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    :pswitch_2
    :try_start_1
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yik/yak/data/http/request/BaseRequest;->buildBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v2

    invoke-virtual {v1, v2}, LxF;->b(LxG;)LxF;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, LxF;->b(Ljava/lang/String;Ljava/lang/String;)LxF;

    move-result-object v1

    invoke-virtual {v1}, LxF;->b()LxD;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 32
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
    .line 28
    return-object p1
.end method

.method public execute(Landroid/content/Context;LAp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, LAl;->a()LAl;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, LAl;->a(Landroid/content/Context;Lcom/yik/yak/data/http/request/YikYakRequest;LAp;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
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
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method
