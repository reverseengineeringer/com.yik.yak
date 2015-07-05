.class public abstract Lcom/parse/signpost/AbstractOAuthProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/signpost/OAuthProvider;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accessTokenEndpointUrl:Ljava/lang/String;

.field private authorizationWebsiteUrl:Ljava/lang/String;

.field private defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isOAuth10a:Z

.field private transient listener:Lcom/parse/signpost/OAuthProviderListener;

.field private requestTokenEndpointUrl:Ljava/lang/String;

.field private responseParameters:Lcom/parse/signpost/http/HttpParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v0}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method public closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public abstract createRequest(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;
.end method

.method public getAccessTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationWebsiteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v0, p1}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseParameters()Lcom/parse/signpost/http/HttpParameters;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    return-object v0
.end method

.method protected handleUnexpectedResponse(ILcom/parse/signpost/http/HttpResponse;)V
    .locals 4

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lcom/parse/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 244
    new-instance v0, Lcom/parse/signpost/exception/OAuthCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service provider responded in error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/parse/signpost/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_0
    new-instance v0, Lcom/parse/signpost/exception/OAuthNotAuthorizedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/signpost/exception/OAuthNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method public isOAuth10a()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    return v0
.end method

.method public removeListener(Lcom/parse/signpost/OAuthProviderListener;)V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    .line 343
    return-void
.end method

.method public retrieveAccessToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "Authorized request token or token secret not set. Did you retrieve an authorized request token before?"

    invoke-direct {v0, v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 98
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "oauth_verifier"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public retrieveRequestToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-interface {p1, v0, v0}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "oauth_callback"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    const-string v1, "oauth_callback_confirmed"

    invoke-virtual {v0, v1}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    const-string v2, "oauth_callback_confirmed"

    invoke-virtual {v1, v2}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 74
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    .line 78
    iget-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "oauth_token"

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/parse/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "oauth_token"

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "oauth_callback"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/parse/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected varargs retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/parse/signpost/AbstractOAuthProvider;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 151
    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "Consumer key or secret not set"

    invoke-direct {v0, v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/parse/signpost/AbstractOAuthProvider;->createRequest(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_0
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 159
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Lcom/parse/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 211
    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 218
    :goto_2
    :try_start_3
    invoke-virtual {p0, v3, v2}, Lcom/parse/signpost/AbstractOAuthProvider;->closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 220
    throw v0

    .line 162
    :cond_2
    if-eqz p3, :cond_3

    .line 163
    :try_start_4
    new-instance v0, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v0}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/parse/signpost/http/HttpParameters;->putAll([Ljava/lang/String;Z)V

    .line 165
    invoke-interface {p1, v0}, Lcom/parse/signpost/OAuthConsumer;->setAdditionalParameters(Lcom/parse/signpost/http/HttpParameters;)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    invoke-interface {v0, v3}, Lcom/parse/signpost/OAuthProviderListener;->prepareRequest(Lcom/parse/signpost/http/HttpRequest;)V

    .line 172
    :cond_4
    invoke-interface {p1, v3}, Lcom/parse/signpost/OAuthConsumer;->sign(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpRequest;

    .line 174
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    invoke-interface {v0, v3}, Lcom/parse/signpost/OAuthProviderListener;->prepareSubmission(Lcom/parse/signpost/http/HttpRequest;)V

    .line 178
    :cond_5
    invoke-virtual {p0, v3}, Lcom/parse/signpost/AbstractOAuthProvider;->sendRequest(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;
    :try_end_4
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 179
    :try_start_5
    invoke-interface {v1}, Lcom/parse/signpost/http/HttpResponse;->getStatusCode()I

    move-result v2

    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v4, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    if-eqz v4, :cond_6

    .line 183
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    invoke-interface {v0, v3, v1}, Lcom/parse/signpost/OAuthProviderListener;->onResponseReceived(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)Z
    :try_end_5
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v0

    .line 185
    :cond_6
    if-eqz v0, :cond_7

    .line 218
    :try_start_6
    invoke-virtual {p0, v3, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 223
    :goto_3
    return-void

    .line 219
    :catch_1
    move-exception v0

    .line 220
    new-instance v1, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v1, v0}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 189
    :cond_7
    const/16 v0, 0x12c

    if-lt v2, v0, :cond_8

    .line 190
    :try_start_7
    invoke-virtual {p0, v2, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->handleUnexpectedResponse(ILcom/parse/signpost/http/HttpResponse;)V

    .line 193
    :cond_8
    invoke-interface {v1}, Lcom/parse/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v0

    .line 195
    const-string v2, "oauth_token"

    invoke-virtual {v0, v2}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v4, "oauth_token_secret"

    invoke-virtual {v0, v4}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v5, "oauth_token"

    invoke-virtual {v0, v5}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 198
    const-string v5, "oauth_token_secret"

    invoke-virtual {v0, v5}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 200
    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthProvider;->setResponseParameters(Lcom/parse/signpost/http/HttpParameters;)V

    .line 202
    if-eqz v2, :cond_9

    if-nez v4, :cond_a

    .line 203
    :cond_9
    new-instance v0, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v2, "Request token or token secret not set in server reply. The service provider you use is probably buggy."

    invoke-direct {v0, v2}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catch_2
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1

    .line 208
    :cond_a
    invoke-interface {p1, v2, v4}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 218
    :try_start_8
    invoke-virtual {p0, v3, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 219
    :catch_3
    move-exception v0

    .line 220
    new-instance v1, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v1, v0}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 212
    :catch_4
    move-exception v0

    move-object v3, v2

    .line 213
    :goto_4
    :try_start_9
    throw v0

    .line 217
    :catchall_1
    move-exception v0

    goto/16 :goto_2

    .line 214
    :catch_5
    move-exception v0

    move-object v3, v2

    .line 215
    :goto_5
    new-instance v1, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v1, v0}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 219
    :catch_6
    move-exception v0

    .line 220
    new-instance v1, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v1, v0}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 217
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    .line 214
    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 212
    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 210
    :catch_b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public abstract sendRequest(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;
.end method

.method public setListener(Lcom/parse/signpost/OAuthProviderListener;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    .line 339
    return-void
.end method

.method public setOAuth10a(Z)V
    .locals 0

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    .line 311
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public setResponseParameters(Lcom/parse/signpost/http/HttpParameters;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 307
    return-void
.end method
