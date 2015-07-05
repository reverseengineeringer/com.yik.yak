.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"

.field static final V2_PUSH_NOT_CONFIGURED:Ljava/lang/String; = "In order to use the ParsePush.subscribe or ParsePush.unsubscribe methods you must add the following to your AndroidManifest.xml: \n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n  android:exported=\"false\">\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>\n(Replace \"com.parse.ParsePushBroadcastReceiver\" with your own implementation if you choose to extend ParsePushBroadcastReceiver)"


# instance fields
.field private channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lorg/json/JSONObject;

.field private expirationTime:Ljava/lang/Long;

.field private expirationTimeInterval:Ljava/lang/Long;

.field private pushToAndroid:Ljava/lang/Boolean;

.field private pushToIOS:Ljava/lang/Boolean;

.field private query:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 28
    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 29
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 30
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 31
    iput-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    .line 32
    iput-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method private static checkForManifestAndThrowExceptionIfNeeded()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In order to use the ParsePush.subscribe or ParsePush.unsubscribe methods you must add the following to your AndroidManifest.xml: \n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n  android:exported=\"false\">\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>\n(Replace \"com.parse.ParsePushBroadcastReceiver\" with your own implementation if you choose to extend ParsePushBroadcastReceiver)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 204
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 205
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 206
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()LR;

    move-result-object v0

    return-object v0
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)LR;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 225
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 169
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 170
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()LR;

    move-result-object v0

    return-object v0
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)LR;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 189
    return-void
.end method

.method static setEnabled(Z)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/parse/ParsePush;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 53
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushRouter;->setForceEnabledAsync(Ljava/lang/Boolean;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePush$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePush$1;-><init>(Z)V

    invoke-virtual {v0, v1}, LR;->c(LQ;)LR;

    .line 64
    return-void
.end method

.method public static subscribeInBackground(Ljava/lang/String;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t subscribe to null channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/parse/ParsePush;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 79
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 80
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    :cond_1
    const-string v1, "channels"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveInBackground()LR;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public static subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p0}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 100
    return-void
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t unsubscribe from null channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-static {}, Lcom/parse/ParsePush;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 115
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 116
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "channels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 119
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveInBackground()LR;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 134
    invoke-static {p0}, Lcom/parse/ParsePush;->unsubscribeInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 135
    return-void
.end method


# virtual methods
.method buildCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 401
    new-instance v3, Lcom/parse/ParseCommand;

    const-string v0, "client_push"

    invoke-direct {v3, v0, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send a push without calling either setMessage or setData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    const-string v0, "data"

    iget-object v4, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 408
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-eqz v0, :cond_5

    .line 409
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    .line 410
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 411
    const-string v4, "where"

    invoke-virtual {v3, v4, v0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 422
    const-string v0, "expiration_time"

    iget-object v4, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    .line 430
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    .line 433
    :goto_2
    iget-object v4, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 434
    :goto_3
    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 445
    :cond_4
    :goto_4
    return-object v3

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 414
    const-string v0, "channel"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_6
    const-string v0, "channels"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 423
    :cond_7
    iget-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "expiration_time_interval"

    iget-object v4, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    move v0, v1

    .line 432
    goto :goto_2

    :cond_9
    move v2, v1

    .line 433
    goto :goto_3

    .line 436
    :cond_a
    if-eqz v2, :cond_b

    .line 437
    const-string v0, "type"

    const-string v1, "ios"

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 438
    :cond_b
    if-eqz v0, :cond_c

    .line 439
    const-string v0, "type"

    const-string v1, "android"

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 441
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot push if both pushToIOS and pushToAndroid are false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearExpiration()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 301
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 302
    return-void
.end method

.method public send()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public sendInBackground()LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->buildCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePush$2;

    invoke-direct {v1, p0}, Lcom/parse/ParsePush$2;-><init>(Lcom/parse/ParsePush;)V

    invoke-virtual {v0, v1}, LR;->a(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 395
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 233
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "channel cannot be null"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 234
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 235
    iget-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 237
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 5
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "channels collection cannot be null"

    invoke-static {v0, v3}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 246
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    const-string v4, "channel cannot be null"

    invoke-static {v0, v4}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    :cond_1
    move v0, v2

    .line 247
    goto :goto_2

    .line 249
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 250
    iget-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 252
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    .line 342
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1

    .prologue
    .line 280
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 282
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 293
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 294
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 349
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 351
    :try_start_0
    const-string v0, "alert"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    invoke-virtual {p0, v1}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 356
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 333
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    .line 334
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    .line 318
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot target a null query"

    invoke-static {v0, v3}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v1, v0}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 266
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/parse/ParseInstallation;

    invoke-static {v1}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can only push to a query for Installations"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 269
    iput-object p1, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v1, v2

    .line 264
    goto :goto_1
.end method
