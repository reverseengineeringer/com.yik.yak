.class public Lcom/parse/signpost/signature/SignatureBaseString;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private request:Lcom/parse/signpost/http/HttpRequest;

.field private requestParameters:Lcom/parse/signpost/http/HttpParameters;


# direct methods
.method public constructor <init>(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/parse/signpost/signature/SignatureBaseString;->request:Lcom/parse/signpost/http/HttpRequest;

    .line 42
    iput-object p2, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 43
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/signpost/signature/SignatureBaseString;->normalizeRequestUrl()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/parse/signpost/signature/SignatureBaseString;->normalizeRequestParameters()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parse/signpost/signature/SignatureBaseString;->request:Lcom/parse/signpost/http/HttpRequest;

    invoke-interface {v3}, Lcom/parse/signpost/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/parse/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v1, v0}, Lcom/parse/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public normalizeRequestParameters()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    if-nez v0, :cond_0

    .line 97
    const-string v0, ""

    .line 116
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v0}, Lcom/parse/signpost/http/HttpParameters;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    const-string v4, "oauth_signature"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "realm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 110
    :cond_2
    if-lez v1, :cond_3

    .line 111
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    iget-object v4, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v4, v0}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public normalizeRequestUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v3, Ljava/net/URI;

    iget-object v0, p0, Lcom/parse/signpost/signature/SignatureBaseString;->request:Lcom/parse/signpost/http/HttpRequest;

    invoke-interface {v0}, Lcom/parse/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    :cond_0
    const-string v1, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v5, 0x1bb

    if-ne v1, v5, :cond_5

    :cond_1
    const/4 v1, 0x1

    .line 71
    :goto_0
    if-eqz v1, :cond_2

    .line 73
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 74
    if-ltz v1, :cond_2

    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_2
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 80
    :cond_3
    const-string v1, "/"

    .line 83
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v1, v2

    .line 69
    goto :goto_0
.end method
