.class public Lcom/parse/ParseInstallation;
.super Lcom/parse/ParseObject;
.source "SourceFile"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Installation"
.end annotation


# static fields
.field private static final APP_IDENTIFIER:Ljava/lang/String; = "appIdentifier"

.field private static final APP_NAME:Ljava/lang/String; = "appName"

.field static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field private static final DEVICE_TOKEN_LAST_MODIFIED:Ljava/lang/String; = "deviceTokenLastModified"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final INSTALLATION_ID:Ljava/lang/String; = "installationId"

.field static final INSTALLATION_ID_LOCATION:Ljava/lang/String; = "installationId"

.field static final OS_VERSION:Ljava/lang/String; = "osVersion"

.field private static final PARSE_VERSION:Ljava/lang/String; = "parseVersion"

.field private static final PIN_CURRENT_INSTALLATION:Ljava/lang/String; = "_currentInstallation"

.field private static final PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final STORAGE_LOCATION:Ljava/lang/String; = "currentInstallation"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseInstallation"

.field private static final TIMEZONE:Ljava/lang/String; = "timeZone"

.field static currentInstallation:Lcom/parse/ParseInstallation;

.field static installationId:Ljava/lang/String;

.field private static final installationLock:Ljava/lang/Object;

.field private static final readonlyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    .line 38
    sput-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 41
    sput-object v1, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installationId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "deviceToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pushType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parseVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deviceTokenLastModified"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appIdentifier"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->readonlyFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$001(Lcom/parse/ParseInstallation;LR;)LR;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->fetchAsync(LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseInstallation;)LR;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/parse/ParseInstallation;->maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseInstallation;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->maybeUpdateInstallationIdOnDisk()V

    return-void
.end method

.method static clearCurrentInstallationFromDisk(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 456
    sget-object v1, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 458
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 460
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "_currentInstallation"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LR;

    .line 464
    :cond_0
    const-string v0, "currentInstallation"

    invoke-static {p0, v0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 465
    const-string v0, "installationId"

    invoke-static {p0, v0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    monitor-exit v1

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static clearCurrentInstallationFromMemory()V
    .locals 2

    .prologue
    .line 446
    sget-object v1, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 448
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentInstallation()Lcom/parse/ParseInstallation;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v1, 0x0

    .line 91
    sget-object v3, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 92
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-nez v0, :cond_3

    .line 95
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :try_start_1
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v4, "_currentInstallation"

    invoke-virtual {v0, v4}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v4

    .line 102
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ParseUser;

    invoke-virtual {v4, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    new-instance v4, Lcom/parse/ParseInstallation$1;

    invoke-direct {v4}, Lcom/parse/ParseInstallation$1;-><init>()V

    invoke-virtual {v0, v4}, LR;->d(LQ;)LR;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_0
    if-nez v0, :cond_2

    .line 126
    :try_start_2
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 127
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-direct {v0}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    move v0, v1

    .line 134
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-direct {v0}, Lcom/parse/ParseInstallation;->maybeUpdateInstallationIdOnDisk()V

    .line 140
    :cond_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 122
    :cond_1
    :try_start_3
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentInstallation"

    invoke-static {v0, v2}, Lcom/parse/ParseInstallation;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_2
    const/4 v1, 0x1

    .line 130
    check-cast v0, Lcom/parse/ParseInstallation;

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 131
    const-string v0, "com.parse.ParseInstallation"

    const-string v2, "Successfully deserialized Installation object"

    invoke-static {v0, v2}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static getOrCreateCurrentInstallationId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    sget-object v1, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 163
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "installationId"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseInstallation;->setCurrentInstallationId(Ljava/lang/String;)V

    .line 176
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    sget-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "com.parse.ParseInstallation"

    const-string v2, "Couldn\'t find existing installationId file. Creating one instead."

    invoke-static {v0, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    :try_start_4
    const-string v2, "com.parse.ParseInstallation"

    const-string v3, "Unexpected exception reading installation id from disk"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static hasCurrentInstallation()Z
    .locals 4

    .prologue
    .line 80
    sget-object v1, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "currentInstallation"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_0
    monitor-exit v1

    .line 85
    return v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseInstallation;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 407
    sget-object v1, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    .line 409
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-nez v0, :cond_1

    .line 412
    invoke-static {v2}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 442
    :goto_1
    return-object v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 416
    :cond_1
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    const-string v0, "_currentInstallation"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$7;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$7;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    .line 434
    :goto_2
    new-instance v1, Lcom/parse/ParseInstallation$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$9;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    goto :goto_1

    .line 425
    :cond_2
    invoke-static {v2}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$8;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$8;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    goto :goto_2
.end method

.method private maybeUpdateInstallationIdOnDisk()V
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 304
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 306
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    const-string v0, "com.parse.ParseInstallation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will update installation id on disk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it does not match installation id in ParseInstallation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v1}, Lcom/parse/ParseInstallation;->setCurrentInstallationId(Ljava/lang/String;)V

    .line 311
    :cond_1
    return-void

    .line 304
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setCurrentInstallationId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 182
    sget-object v1, Lcom/parse/ParseInstallation;->installationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "installationId"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    :try_start_2
    sput-object p0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v2, "com.parse.ParseInstallation"

    const-string v3, "Unexpected exception writing installation id to disk"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateDeviceInfo()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "installationId"

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_0
    const-string v0, "android"

    .line 360
    const-string v1, "deviceType"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    const-string v1, "deviceType"

    invoke-super {p0, v1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    :cond_1
    return-void
.end method

.method private updateTimezone()V
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 318
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "timeZone"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const-string v1, "timeZone"

    invoke-super {p0, v1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    :cond_1
    return-void
.end method

.method private updateVersionInfo()V
    .locals 5

    .prologue
    .line 324
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 327
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 329
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 330
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    if-eqz v0, :cond_0

    const-string v4, "appIdentifier"

    invoke-virtual {p0, v4}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    const-string v4, "appIdentifier"

    invoke-super {p0, v4, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "appName"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const-string v0, "appName"

    invoke-super {p0, v0, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "appVersion"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    const-string v0, "appVersion"

    invoke-super {p0, v0, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "1.7.1"

    const-string v2, "parseVersion"

    invoke-virtual {p0, v2}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    const-string v0, "parseVersion"

    const-string v2, "1.7.1"

    invoke-super {p0, v0, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    :cond_3
    monitor-exit v1

    .line 349
    return-void

    .line 342
    :catch_0
    move-exception v0

    const-string v0, "com.parse.ParseInstallation"

    const-string v2, "Cannot load package info; will not be saved to installation"

    invoke-static {v0, v2}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method checkKeyIsMutable(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->readonlyFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property of an installation object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    return-void
.end method

.method fetchAsync(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->saveAsync(LR;)LR;

    move-result-object v0

    .line 249
    :goto_0
    new-instance v2, Lcom/parse/ParseInstallation$2;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseInstallation$2;-><init>(Lcom/parse/ParseInstallation;LR;)V

    invoke-virtual {v0, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const-string v0, "deviceToken"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushType()Lcom/parse/PushType;
    .locals 1

    .prologue
    .line 366
    const-string v0, "pushType"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushType;->fromString(Ljava/lang/String;)Lcom/parse/PushType;

    move-result-object v0

    return-object v0
.end method

.method handleFetchResultAsync(Lorg/json/JSONObject;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->handleFetchResultAsync(Lorg/json/JSONObject;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$6;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$6;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LR;

    move-result-object v0

    .line 265
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lcom/parse/ParseInstallation$4;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$4;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$3;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->c(LQ;)LR;

    move-result-object v0

    .line 283
    :cond_0
    new-instance v1, Lcom/parse/ParseInstallation$5;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$5;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method isDeviceTokenStale()Z
    .locals 4

    .prologue
    .line 384
    const-string v0, "deviceTokenLastModified"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 225
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeDeviceToken()V
    .locals 1

    .prologue
    .line 400
    const-string v0, "deviceToken"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 401
    const-string v0, "deviceTokenLastModified"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method removePushType()V
    .locals 1

    .prologue
    .line 376
    const-string v0, "pushType"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method setDefaultValues()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/parse/ParseObject;->setDefaultValues()V

    .line 70
    const-string v0, "deviceType"

    const-string v1, "android"

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "installationId"

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method setDeviceToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 394
    const-string v0, "deviceToken"

    invoke-super {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    const-string v0, "deviceTokenLastModified"

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    :cond_0
    return-void
.end method

.method setDeviceTokenLastModified(J)V
    .locals 3

    .prologue
    .line 389
    const-string v0, "deviceTokenLastModified"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method setPushType(Lcom/parse/PushType;)V
    .locals 2

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 371
    const-string v0, "pushType"

    invoke-virtual {p1}, Lcom/parse/PushType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    :cond_0
    return-void
.end method

.method updateBeforeSave()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 232
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    .line 233
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    .line 234
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    .line 235
    return-void
.end method
