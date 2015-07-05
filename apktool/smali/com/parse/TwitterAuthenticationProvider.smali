.class Lcom/parse/TwitterAuthenticationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseAuthenticationProvider;


# static fields
.field private static final AUTH_TOKEN_KEY:Ljava/lang/String; = "auth_token"

.field private static final AUTH_TOKEN_SECRET_KEY:Ljava/lang/String; = "auth_token_secret"

.field private static final CONSUMER_KEY_KEY:Ljava/lang/String; = "consumer_key"

.field private static final CONSUMER_SECRET_KEY:Ljava/lang/String; = "consumer_secret"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final SCREEN_NAME_KEY:Ljava/lang/String; = "screen_name"


# instance fields
.field private baseContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

.field private final twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method public constructor <init>(Lcom/parse/twitter/Twitter;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/parse/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method private handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iput-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method


# virtual methods
.method public authenticate(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/parse/TwitterAuthenticationProvider;->cancel()V

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 34
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_2

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be non-null for Twitter authentication to proceed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    new-instance v2, Lcom/parse/TwitterAuthenticationProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/TwitterAuthenticationProvider$1;-><init>(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/parse/twitter/Twitter;->authorize(Landroid/content/Context;Lcom/parse/internal/AsyncCallback;)V

    .line 78
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-direct {p0, v0}, Lcom/parse/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 95
    return-void
.end method

.method public deauthenticate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "auth_token_secret"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "consumer_key"

    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "consumer_secret"

    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "twitter"

    return-object v0
.end method

.method public getTwitter()Lcom/parse/twitter/Twitter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 146
    :goto_0
    return v0

    .line 139
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v2, "auth_token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v2, "auth_token_secret"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    .line 153
    return-void
.end method
