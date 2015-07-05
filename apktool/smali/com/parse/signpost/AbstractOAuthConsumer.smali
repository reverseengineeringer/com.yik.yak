.class public abstract Lcom/parse/signpost/AbstractOAuthConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/signpost/OAuthConsumer;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private additionalParameters:Lcom/parse/signpost/http/HttpParameters;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private messageSigner:Lcom/parse/signpost/signature/OAuthMessageSigner;

.field private requestParameters:Lcom/parse/signpost/http/HttpParameters;

.field private sendEmptyTokens:Z

.field private signingStrategy:Lcom/parse/signpost/signature/SigningStrategy;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/parse/signpost/signature/HmacSha1MessageSigner;

    invoke-direct {v0}, Lcom/parse/signpost/signature/HmacSha1MessageSigner;-><init>()V

    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->setMessageSigner(Lcom/parse/signpost/signature/OAuthMessageSigner;)V

    .line 66
    new-instance v0, Lcom/parse/signpost/signature/AuthorizationHeaderSigningStrategy;

    invoke-direct {v0}, Lcom/parse/signpost/signature/AuthorizationHeaderSigningStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->setSigningStrategy(Lcom/parse/signpost/signature/SigningStrategy;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected collectBodyParameters(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V
    .locals 2

    .prologue
    .line 235
    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->getMessagePayload()Ljava/io/InputStream;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/parse/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/parse/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method protected collectHeaderParameters(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V
    .locals 2

    .prologue
    .line 223
    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lcom/parse/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/signpost/OAuth;->oauthHeaderToParamsMap(Ljava/lang/String;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/parse/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 225
    return-void
.end method

.method protected collectQueryParameters(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V
    .locals 2

    .prologue
    .line 248
    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    .line 249
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 250
    if-ltz v1, :cond_0

    .line 252
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/signpost/OAuth;->decodeForm(Ljava/lang/String;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/parse/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 254
    :cond_0
    return-void
.end method

.method protected completeOAuthParameters(Lcom/parse/signpost/http/HttpParameters;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 188
    const-string v0, "oauth_consumer_key"

    invoke-virtual {p1, v0}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 191
    :cond_0
    const-string v0, "oauth_signature_method"

    invoke-virtual {p1, v0}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/parse/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v1}, Lcom/parse/signpost/signature/OAuthMessageSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 194
    :cond_1
    const-string v0, "oauth_timestamp"

    invoke-virtual {p1, v0}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "oauth_timestamp"

    invoke-virtual {p0}, Lcom/parse/signpost/AbstractOAuthConsumer;->generateTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 197
    :cond_2
    const-string v0, "oauth_nonce"

    invoke-virtual {p1, v0}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    const-string v0, "oauth_nonce"

    invoke-virtual {p0}, Lcom/parse/signpost/AbstractOAuthConsumer;->generateNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 200
    :cond_3
    const-string v0, "oauth_version"

    invoke-virtual {p1, v0}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 203
    :cond_4
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 204
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    if-eqz v0, :cond_7

    .line 205
    :cond_6
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 208
    :cond_7
    return-void
.end method

.method protected generateNonce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateTimestamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParameters()Lcom/parse/signpost/http/HttpParameters;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/parse/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0}, Lcom/parse/signpost/signature/OAuthMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdditionalParameters(Lcom/parse/signpost/http/HttpParameters;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->additionalParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 80
    return-void
.end method

.method public setMessageSigner(Lcom/parse/signpost/signature/OAuthMessageSigner;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/parse/signpost/signature/OAuthMessageSigner;

    .line 71
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/signpost/signature/OAuthMessageSigner;->setConsumerSecret(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setSendEmptyTokens(Z)V
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    .line 216
    return-void
.end method

.method public setSigningStrategy(Lcom/parse/signpost/signature/SigningStrategy;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/parse/signpost/signature/SigningStrategy;

    .line 76
    return-void
.end method

.method public setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/parse/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0, p2}, Lcom/parse/signpost/signature/OAuthMessageSigner;->setTokenSecret(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public sign(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpRequest;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "consumer key not set"

    invoke-direct {v0, v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "consumer secret not set"

    invoke-direct {v0, v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    new-instance v0, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v0}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->additionalParameters:Lcom/parse/signpost/http/HttpParameters;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->additionalParameters:Lcom/parse/signpost/http/HttpParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->collectHeaderParameters(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V

    .line 97
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->collectQueryParameters(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V

    .line 98
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->collectBodyParameters(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V

    .line 101
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->completeOAuthParameters(Lcom/parse/signpost/http/HttpParameters;)V

    .line 103
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    const-string v1, "oauth_signature"

    invoke-virtual {v0, v1}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/parse/signpost/signature/OAuthMessageSigner;

    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v0, p1, v1}, Lcom/parse/signpost/signature/OAuthMessageSigner;->sign(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "signature"

    invoke-static {v1, v0}, Lcom/parse/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/parse/signpost/signature/SigningStrategy;

    iget-object v2, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-interface {v1, v0, p1, v2}, Lcom/parse/signpost/signature/SigningStrategy;->writeSignature(Ljava/lang/String;Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)Ljava/lang/String;

    .line 113
    const-string v0, "Auth header"

    const-string v1, "Authorization"

    invoke-interface {p1, v1}, Lcom/parse/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "Request URL"

    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-object p1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v1, v0}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/parse/signpost/AbstractOAuthConsumer;->wrap(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->sign(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/parse/signpost/basic/UrlStringRequestAdapter;

    invoke-direct {v0, p1}, Lcom/parse/signpost/basic/UrlStringRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/parse/signpost/signature/SigningStrategy;

    .line 130
    new-instance v2, Lcom/parse/signpost/signature/QueryStringSigningStrategy;

    invoke-direct {v2}, Lcom/parse/signpost/signature/QueryStringSigningStrategy;-><init>()V

    iput-object v2, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/parse/signpost/signature/SigningStrategy;

    .line 132
    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthConsumer;->sign(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpRequest;

    .line 135
    iput-object v1, p0, Lcom/parse/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/parse/signpost/signature/SigningStrategy;

    .line 137
    invoke-interface {v0}, Lcom/parse/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract wrap(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
.end method
