.class public Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    return-void
.end method

.method private addParametersToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 32
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "userID"

    invoke-virtual {v0}, LAD;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "lng"

    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->GET:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getConfigurationEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getConfigurationEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;->addParametersToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
