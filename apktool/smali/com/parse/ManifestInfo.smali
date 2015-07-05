.class Lcom/parse/ManifestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NUMBER_OF_PUSH_INTENTS:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "com.parse.ManifestInfo"

.field private static displayName:Ljava/lang/String;

.field private static iconId:I

.field private static lastModified:J

.field private static lock:Ljava/lang/Object;

.field private static pushType:Lcom/parse/PushType;

.field private static pushUsesBroadcastReceivers:Ljava/lang/Boolean;

.field private static versionCode:I

.field private static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->NUMBER_OF_PUSH_INTENTS:Ljava/lang/Integer;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    .line 33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/parse/ManifestInfo;->lastModified:J

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/parse/ManifestInfo;->versionCode:I

    .line 35
    sput-object v2, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 37
    sput-object v2, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    .line 157
    sput-object v2, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method private static checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-static {p0}, Lcom/parse/ManifestInfo;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 408
    if-nez v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    :cond_2
    array-length v2, p2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p2, v1

    .line 417
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 418
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    invoke-static {p0, v3}, Lcom/parse/ManifestInfo;->checkResolveInfo(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkResolveInfo(Ljava/lang/Class;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 397
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deviceSupportsGcm()Z
    .locals 2

    .prologue
    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v0, "com.google.android.gsf"

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gcmSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 445
    const-class v0, Lcom/parse/PushService;

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 485
    :goto_0
    return-object v0

    .line 449
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v6

    const-string v1, "android.permission.WAKE_LOCK"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 458
    invoke-static {v0}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 463
    const-string v1, "com.google.android.c2dm.permission.SEND"

    .line 464
    new-array v2, v4, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, v2, v6

    .line 473
    const-class v0, Lcom/parse/GcmBroadcastReceiver;

    invoke-static {v0, v1, v2}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 477
    :cond_2
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission.VIBRATE"

    aput-object v1, v0, v5

    .line 481
    invoke-static {v0}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 482
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 485
    :cond_3
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto/16 :goto_0
.end method

.method private static getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplicationMetadata()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 349
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    .line 100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-object v0, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getGcmManifestMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n<uses-permission android:name=\"android.permission.GET_ACCOUNTS\" />\n<uses-permission android:name=\"com.google.android.c2dm.permission.RECEIVE\" />\n<permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android:protectionLevel=\"signature\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Also, please make sure that these services and broadcast receivers are declared as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "children of the <application> element:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<service android:name=\"com.parse.PushService\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<receiver android:name=\"com.parse.GcmBroadcastReceiver\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android:permission=\"com.google.android.c2dm.permission.SEND\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  <intent-filter>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    <action android:name=\"com.google.android.c2dm.intent.RECEIVE\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    <action android:name=\"com.google.android.c2dm.intent.REGISTRATION\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    <category android:name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  </intent-filter>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</receiver>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconId()I
    .locals 2

    .prologue
    .line 110
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    return v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static varargs getIntentReceivers([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p0, v0

    .line 135
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 142
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 147
    :cond_2
    return-object v3
.end method

.method public static getLastModified()J
    .locals 6

    .prologue
    .line 45
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-wide v2, Lcom/parse/ManifestInfo;->lastModified:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sput-wide v2, Lcom/parse/ManifestInfo;->lastModified:J

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-wide v0, Lcom/parse/ManifestInfo;->lastModified:J

    return-wide v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getNonePushTypeLogMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v2, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    if-ne v0, v2, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push is not configured for this app because the app manifest is missing required declarations. Please add the following declarations to your app manifest to support either GCM or PPNS for push (or both). To enable GCM support, please "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "To enable PPNS support, please "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 356
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPpnsManifestMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string v0, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.RECEIVE_BOOT_COMPLETED\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n\nAlso, please make sure that these services and broadcast receivers are declared as children of the <application> element:\n\n<service android:name=\"com.parse.PushService\" />\n<receiver android:name=\"com.parse.ParseBroadcastReceiver\">\n  <intent-filter>\n    <action android:name=\"android.intent.action.BOOT_COMPLETED\" />\n    <action android:name=\"android.intent.action.USER_PRESENT\" />\n  </intent-filter>\n</receiver>\n"

    return-object v0
.end method

.method public static getPushType()Lcom/parse/PushType;
    .locals 7

    .prologue
    .line 208
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    if-nez v0, :cond_3

    .line 210
    invoke-static {}, Lcom/parse/ManifestInfo;->deviceSupportsGcm()Z

    move-result v0

    .line 211
    invoke-static {}, Lcom/parse/ManifestInfo;->hasAnyGcmSpecificDeclaration()Z

    move-result v2

    .line 212
    invoke-static {}, Lcom/parse/ManifestInfo;->gcmSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;

    move-result-object v3

    .line 213
    invoke-static {}, Lcom/parse/ManifestInfo;->ppnsSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;

    move-result-object v4

    .line 215
    if-eqz v0, :cond_4

    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v3, v5, :cond_4

    .line 216
    sget-object v5, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    sput-object v5, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 243
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_0

    .line 244
    sget-object v5, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v6, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v5, v6, :cond_7

    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-ne v3, v5, :cond_7

    .line 245
    const-string v4, "com.parse.ManifestInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using GCM for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_1
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_2

    .line 261
    sget-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v5, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    if-ne v4, v5, :cond_2

    if-eqz v2, :cond_2

    .line 262
    if-nez v0, :cond_1

    .line 263
    const-string v0, "com.parse.ManifestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot use GCM for push on this device because Google Play Services is not installed. Install Google Play Service from the Play Store, or enable PPNS as a fallback push service. To enable PPNS as a fallback push service on devices without Google Play support, please "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v3, v0, :cond_2

    .line 271
    const-string v0, "com.parse.ManifestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot use GCM for push because the app manifest is missing some required declarations. Please "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_2
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    .line 278
    const-string v0, "com.parse.ManifestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for push."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    sget-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    return-object v0

    .line 232
    :cond_4
    if-eqz v2, :cond_5

    if-nez v0, :cond_6

    :cond_5
    :try_start_1
    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v4, v5, :cond_6

    .line 234
    sget-object v5, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    sput-object v5, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    goto/16 :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 236
    :cond_6
    :try_start_2
    sget-object v5, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    sput-object v5, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    goto/16 :goto_0

    .line 248
    :cond_7
    sget-object v5, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v6, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-ne v4, v5, :cond_0

    .line 249
    const-string v4, "com.parse.ManifestInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using PPNS for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method static getPushUsesBroadcastReceivers()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    sget-object v0, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    const-string v2, "com.parse.push.intent.RECEIVE"

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 178
    :cond_1
    const-string v2, "com.parse.push.intent.OPEN"

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    :cond_2
    const-string v2, "com.parse.push.intent.DELETE"

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/parse/ManifestInfo;->NUMBER_OF_PUSH_INTENTS:Ljava/lang/Integer;

    if-eq v0, v2, :cond_4

    .line 187
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The Parse Push BroadcastReceiver must implement a filter for all of com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_4
    sget-object v2, Lcom/parse/ManifestInfo;->NUMBER_OF_PUSH_INTENTS:Ljava/lang/Integer;

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    .line 193
    sget-object v0, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 192
    goto :goto_1
.end method

.method private static getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 378
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 367
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 4

    .prologue
    .line 60
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget v0, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    sget v0, Lcom/parse/ManifestInfo;->versionCode:I

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_3
    const-string v2, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 81
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    sget-object v0, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_3
    const-string v2, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static hasAnyGcmSpecificDeclaration()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 431
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.C2D_MESSAGE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/parse/GcmBroadcastReceiver;

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 437
    :cond_1
    return v0
.end method

.method static hasIntentReceiver(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    new-array v2, v0, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static varargs hasPermissions([Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 386
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 387
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    :goto_1
    return v0

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static ppnsSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    const-class v0, Lcom/parse/PushService;

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 518
    :goto_0
    return-object v0

    .line 497
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.VIBRATE"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "android.permission.WAKE_LOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v2, v0, v1

    .line 505
    invoke-static {v0}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 509
    :cond_1
    new-array v0, v5, [Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v4

    .line 514
    const-class v1, Lcom/parse/ParseBroadcastReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 515
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 518
    :cond_2
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0
.end method

.method static setPushType(Lcom/parse/PushType;)V
    .locals 2

    .prologue
    .line 198
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    sput-object p0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setPushUsesBroadcastReceivers(Z)V
    .locals 1

    .prologue
    .line 160
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    .line 161
    return-void
.end method
