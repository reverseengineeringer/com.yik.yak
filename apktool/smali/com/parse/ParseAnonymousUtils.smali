.class public final Lcom/parse/ParseAnonymousUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ANONYMOUS_AUTH_TYPE:Ljava/lang/String; = "anonymous"

.field private static provider:Lcom/parse/AnonymousAuthenticationProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static initialize()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/parse/AnonymousAuthenticationProvider;

    invoke-direct {v0}, Lcom/parse/AnonymousAuthenticationProvider;-><init>()V

    sput-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    .line 36
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static lazyLogIn()V
    .locals 2

    .prologue
    .line 73
    :try_start_0
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/AnonymousAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    invoke-virtual {v1}, Lcom/parse/AnonymousAuthenticationProvider;->getAuthData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static logIn(Lcom/parse/LogInCallback;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->logInInBackground()LR;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 69
    return-void
.end method

.method public static logInInBackground()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/AnonymousAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;)LR;

    move-result-object v0

    return-object v0
.end method
