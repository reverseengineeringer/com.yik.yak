.class public Lcom/parse/ParsePushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_PUSH_DELETE:Ljava/lang/String; = "com.parse.push.intent.DELETE"

.field public static final ACTION_PUSH_OPEN:Ljava/lang/String; = "com.parse.push.intent.OPEN"

.field public static final ACTION_PUSH_RECEIVE:Ljava/lang/String; = "com.parse.push.intent.RECEIVE"

.field public static final KEY_PUSH_CHANNEL:Ljava/lang/String; = "com.parse.Channel"

.field public static final KEY_PUSH_DATA:Ljava/lang/String; = "com.parse.Data"

.field public static final PROPERTY_PUSH_ICON:Ljava/lang/String; = "com.parse.push.notification_icon"

.field protected static final SMALL_NOTIFICATION_MAX_CHARACTER_LIMIT:I = 0x26

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "com.parse.Data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "com.parse.ParsePushReceiver"

    const-string v2, "Unexpected JSONException when receiving push data: "

    invoke-static {v1, v2, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 223
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 224
    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 230
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 10

    .prologue
    const/high16 v9, 0x8000000

    .line 303
    invoke-direct {p0, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    const-string v1, "alert"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    .line 308
    :cond_1
    const-string v1, "alert"

    const-string v2, "Notification received."

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v2, "title"

    invoke-static {}, Lcom/parse/ManifestInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 314
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 315
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 316
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 323
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.parse.push.intent.OPEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.parse.push.intent.DELETE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v7, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 329
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-static {p1, v4, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 332
    invoke-static {p1, v3, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 335
    new-instance v4, Lcom/parse/NotificationCompat$Builder;

    invoke-direct {v4, p1}, Lcom/parse/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v4, v0}, Lcom/parse/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parse/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/parse/NotificationCompat$Builder;->setSmallIcon(I)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/parse/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/parse/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/parse/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setDefaults(I)Lcom/parse/NotificationCompat$Builder;

    .line 344
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x26

    if-le v0, v2, :cond_2

    .line 345
    new-instance v0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    invoke-direct {v0}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/parse/NotificationCompat$Builder;->setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;

    .line 347
    :cond_2
    invoke-virtual {v4}, Lcom/parse/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationMetadata()Landroid/os/Bundle;

    move-result-object v1

    .line 254
    const/4 v0, 0x0

    .line 255
    if-eqz v1, :cond_0

    .line 256
    const-string v0, "com.parse.push.notification_icon"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 258
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result v0

    goto :goto_0
.end method

.method protected onPushDismiss(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 176
    invoke-static {p2}, Lcom/parse/ParseAnalytics;->trackAppOpened(Landroid/content/Intent;)V

    .line 178
    const/4 v0, 0x0

    .line 180
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "com.parse.Data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    const-string v2, "uri"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v2

    .line 187
    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    .line 194
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 202
    invoke-static {p1, v2, v0}, Lcom/parse/TaskStackBuilderHelper;->startActivities(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 208
    :goto_2
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    const-string v2, "com.parse.ParsePushReceiver"

    const-string v3, "Unexpected JSONException when receiving push data: "

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 204
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "com.parse.Data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    if-eqz v0, :cond_2

    .line 132
    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_1
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 137
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 148
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v2, "com.parse.ParsePushReceiver"

    const-string v3, "Unexpected JSONException when receiving push data: "

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "com.parse.push.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "com.parse.push.intent.DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushDismiss(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "com.parse.push.intent.OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
