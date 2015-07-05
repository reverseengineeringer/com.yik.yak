.class public final Lcom/parse/ParseFacebookUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isInitialized:Z

.field protected static provider:Lcom/parse/FacebookAuthenticationProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    return-void
.end method

.method private static checkInitialization()V
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/parse/ParseFacebookUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->initialize()V

    .line 101
    :cond_0
    return-void
.end method

.method public static extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 636
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    new-instance v1, Lcom/parse/ParseFacebookUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/parse/ParseFacebookUtils$1;-><init>(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/parse/FacebookAuthenticationProvider;->extendAccessToken(Landroid/content/Context;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 659
    return-void
.end method

.method public static extendAccessTokenIfNeeded(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->shouldExtendAccessToken(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 669
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static finishAuthentication(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p0, p1, p2}, Lcom/parse/FacebookAuthenticationProvider;->onActivityResult(IILandroid/content/Intent;)V

    .line 580
    :cond_0
    return-void
.end method

.method public static getFacebook()Lcom/facebook/android/Facebook;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must initialize ParseFacebookUtils before calling getFacebook()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/FacebookAuthenticationProvider;->getFacebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    return-object v0
.end method

.method public static getSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must initialize ParseFacebookUtils before calling getSession()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/FacebookAuthenticationProvider;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method protected static initialize()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationMetadata()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    const-string v0, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/parse/ParseFacebookUtils;->initialize(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Parse.initialize() before using ParseFacebookUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    new-instance v0, Lcom/parse/FacebookAuthenticationProvider;

    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/parse/FacebookAuthenticationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    .line 93
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseFacebookUtils;->isInitialized:Z

    .line 95
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "facebook"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    invoke-static {p0, p1}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Landroid/app/Activity;)LR;

    .line 384
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Landroid/app/Activity;I)LR;

    .line 376
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;ILcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 360
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;Lcom/parse/SaveCallback;)V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7f99

    invoke-static {p0, v0, p1, v1, p2}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 368
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LR;

    .line 174
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 194
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LR;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 198
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;)LR;

    .line 353
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)LR;

    .line 344
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;

    .line 323
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;Lcom/parse/SaveCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    const/16 v0, 0x7f99

    invoke-static {p0, p1, p2, v0, p3}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 334
    return-void
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Landroid/app/Activity;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Landroid/app/Activity;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7f99

    invoke-static {p0, v0, p1, v1}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    return-object v0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Landroid/app/Activity;I)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Landroid/app/Activity;",
            "I)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    return-object v0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 158
    :try_start_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/parse/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LR;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, LR;->a(Ljava/lang/Exception;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    const/16 v0, 0x7f99

    invoke-static {p0, p1, p2, v0}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    return-object v0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 241
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p2}, Lcom/parse/FacebookAuthenticationProvider;->setActivity(Landroid/app/Activity;)V

    .line 242
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p3}, Lcom/parse/FacebookAuthenticationProvider;->setActivityCode(I)V

    .line 243
    if-nez p1, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 246
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p1}, Lcom/parse/FacebookAuthenticationProvider;->setPermissions(Ljava/util/Collection;)V

    .line 247
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Landroid/app/Activity;ILcom/parse/LogInCallback;)V
    .locals 2

    .prologue
    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/parse/ParseFacebookUtils;->logInInBackground(Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;

    .line 538
    return-void
.end method

.method public static logIn(Landroid/app/Activity;Lcom/parse/LogInCallback;)V
    .locals 2

    .prologue
    .line 557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7f99

    invoke-static {v0, p0, v1}, Lcom/parse/ParseFacebookUtils;->logInInBackground(Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;

    .line 562
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/LogInCallback;)V
    .locals 1

    .prologue
    .line 428
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LR;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 432
    return-void
.end method

.method public static logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcom/parse/LogInCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 522
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->logInInBackground(Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;

    .line 527
    return-void
.end method

.method public static logIn(Ljava/util/Collection;Landroid/app/Activity;Lcom/parse/LogInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/parse/LogInCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 546
    const/16 v0, 0x7f99

    invoke-static {p0, p1, v0}, Lcom/parse/ParseFacebookUtils;->logInInBackground(Ljava/util/Collection;Landroid/app/Activity;I)LR;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;

    .line 551
    return-void
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 403
    :try_start_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v1, p0, p1, p2}, Lcom/parse/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LR;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, LR;->a(Ljava/lang/Exception;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public static logInInBackground(Ljava/util/Collection;Landroid/app/Activity;I)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I)",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 473
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p1}, Lcom/parse/FacebookAuthenticationProvider;->setActivity(Landroid/app/Activity;)V

    .line 474
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p2}, Lcom/parse/FacebookAuthenticationProvider;->setActivityCode(I)V

    .line 475
    if-nez p0, :cond_0

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 478
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0, p0}, Lcom/parse/FacebookAuthenticationProvider;->setPermissions(Ljava/util/Collection;)V

    .line 479
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static saveLatestSessionData(Lcom/parse/ParseUser;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->saveLatestSessionDataInBackground(Lcom/parse/ParseUser;)LR;

    .line 619
    return-void
.end method

.method public static saveLatestSessionData(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 610
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->saveLatestSessionDataInBackground(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 611
    return-void
.end method

.method public static saveLatestSessionDataInBackground(Lcom/parse/ParseUser;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 592
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The user must already be linked to Facebook."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 596
    sget-object v1, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v1}, Lcom/parse/FacebookAuthenticationProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/parse/ParseFacebookUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static shouldExtendAccessToken(Lcom/parse/ParseUser;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getFacebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unlink(Lcom/parse/ParseUser;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->unlinkInBackground(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 123
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->unlinkInBackground(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 137
    return-void
.end method
