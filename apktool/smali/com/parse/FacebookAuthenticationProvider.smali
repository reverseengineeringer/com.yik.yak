.class Lcom/parse/FacebookAuthenticationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseAuthenticationProvider;


# static fields
.field private static final AUTH_TYPE_NAME:Ljava/lang/String; = "facebook"

.field public static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99


# instance fields
.field private activityCode:I

.field private applicationContext:Landroid/content/Context;

.field protected applicationId:Ljava/lang/String;

.field private baseActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private facebook:Lcom/facebook/android/Facebook;

.field private permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final preciseDateFormat:Ljava/text/DateFormat;

.field private session:Lcom/facebook/Session;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    .line 42
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    const/16 v0, 0x7f99

    iput v0, p0, Lcom/parse/FacebookAuthenticationProvider;->activityCode:I

    .line 66
    iput-object p2, p0, Lcom/parse/FacebookAuthenticationProvider;->applicationId:Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->applicationContext:Landroid/content/Context;

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 73
    new-instance v0, Lcom/facebook/android/Facebook;

    invoke-direct {v0, p2}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    .line 75
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/parse/FacebookAuthenticationProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parse/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parse/FacebookAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/FacebookAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parse/FacebookAuthenticationProvider;->handleCancel()V

    return-void
.end method

.method private handleCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iput-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0, p1}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iput-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method

.method private handleSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/parse/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :try_start_1
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v1, v0}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    iput-object v2, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-direct {p0, v0}, Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method


# virtual methods
.method public declared-synchronized authenticate(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/parse/FacebookAuthenticationProvider;->cancel()V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 110
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 111
    :goto_0
    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must be non-null for Facebook authentication to proceed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 115
    :cond_2
    iget v1, p0, Lcom/parse/FacebookAuthenticationProvider;->activityCode:I

    .line 116
    new-instance v2, Lcom/facebook/Session$Builder;

    invoke-direct {v2, v0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/parse/FacebookAuthenticationProvider;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v2

    new-instance v3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v3, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    .line 119
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v2, v0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 120
    invoke-virtual {v2, v1}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    .line 121
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v2, v0}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 127
    :cond_4
    new-instance v0, Lcom/parse/FacebookAuthenticationProvider$2;

    invoke-direct {v0, p0}, Lcom/parse/FacebookAuthenticationProvider$2;-><init>(Lcom/parse/FacebookAuthenticationProvider;)V

    invoke-virtual {v2, v0}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 161
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v0, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/parse/FacebookAuthenticationProvider;->handleCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deauthenticate()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/FacebookAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    .line 332
    return-void
.end method

.method public declared-synchronized extendAccessToken(Landroid/content/Context;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/parse/FacebookAuthenticationProvider;->cancel()V

    .line 82
    :cond_0
    iput-object p2, p0, Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 83
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    new-instance v1, Lcom/parse/FacebookAuthenticationProvider$1;

    invoke-direct {v1, p0}, Lcom/parse/FacebookAuthenticationProvider$1;-><init>(Lcom/parse/FacebookAuthenticationProvider;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/android/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z

    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/parse/FacebookAuthenticationProvider;->handleCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActivityCode()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/parse/FacebookAuthenticationProvider;->activityCode:I

    return v0
.end method

.method public getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 230
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v1, "expiration_date"

    iget-object v2, p0, Lcom/parse/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "facebook"

    return-object v0
.end method

.method public getFacebook()Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 173
    :cond_0
    return-void
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 291
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1, v4}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 293
    :cond_0
    iput-object v4, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    .line 324
    :goto_0
    return v0

    .line 297
    :cond_1
    :try_start_0
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/parse/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    const-string v3, "expiration_date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 301
    iget-object v3, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    if-eqz v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 305
    :cond_2
    new-instance v1, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    iget-object v3, p0, Lcom/parse/FacebookAuthenticationProvider;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v1}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v3

    .line 308
    const-string v4, "access_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/TokenCachingStrategy;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 309
    invoke-static {v3, v2}, Lcom/facebook/TokenCachingStrategy;->putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V

    .line 310
    invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 313
    new-instance v2, Lcom/facebook/Session$Builder;

    iget-object v3, p0, Lcom/parse/FacebookAuthenticationProvider;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/parse/FacebookAuthenticationProvider;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-ne v2, v3, :cond_3

    .line 316
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 317
    iput-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    .line 318
    iget-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized setActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActivityCode(I)V
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/parse/FacebookAuthenticationProvider;->activityCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPermissions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parse/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
