.class public final Lcom/parse/ParseTwitterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isInitialized:Z

.field private static provider:Lcom/parse/TwitterAuthenticationProvider;

.field private static twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 52
    sget-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call ParseTwitterUtils.initialize() before using ParseTwitterUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method private static getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/parse/TwitterAuthenticationProvider;

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/TwitterAuthenticationProvider;-><init>(Lcom/parse/twitter/Twitter;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    .line 20
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    return-object v0
.end method

.method public static getTwitter()Lcom/parse/twitter/Twitter;
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/parse/twitter/Twitter;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/parse/twitter/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    .line 32
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/twitter/Twitter;->setConsumerKey(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/twitter/Twitter;->setConsumerSecret(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    .line 49
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 90
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2

    .prologue
    .line 108
    invoke-static {p1, p0}, Lcom/parse/ParseTwitterUtils;->linkInBackground(Landroid/content/Context;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;Z)LN;

    .line 109
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 149
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 173
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseTwitterUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 177
    return-void
.end method

.method public static linkInBackground(Landroid/content/Context;Lcom/parse/ParseUser;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 80
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 132
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LN;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public static logIn(Landroid/content/Context;Lcom/parse/LogInCallback;)V
    .locals 2

    .prologue
    .line 264
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->logInInBackground(Landroid/content/Context;)LN;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;Z)LN;

    .line 265
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1

    .prologue
    .line 229
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseTwitterUtils;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 233
    return-void
.end method

.method public static logInInBackground(Landroid/content/Context;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "LN",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 246
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)V

    .line 247
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 199
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LN;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public static unlink(Lcom/parse/ParseUser;)V
    .locals 1

    .prologue
    .line 274
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 287
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 302
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 303
    return-void
.end method
