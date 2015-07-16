.class public LAJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static d:LAJ;


# instance fields
.field private final c:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/yik/yak/data/models/Configuration;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LAL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LAJ;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LAJ;->b:Ljava/lang/String;

    .line 42
    new-instance v0, LAJ;

    invoke-direct {v0}, LAJ;-><init>()V

    sput-object v0, LAJ;->d:LAJ;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "new_configuration"

    iput-object v0, p0, LAJ;->c:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, LAJ;->e:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LAJ;->h:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAJ;->i:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0}, LAJ;->h()V

    .line 61
    return-void
.end method

.method public static declared-synchronized a()LAJ;
    .locals 2

    .prologue
    .line 68
    const-class v1, LAJ;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAJ;->d:LAJ;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, LAJ;

    invoke-direct {v0}, LAJ;-><init>()V

    sput-object v0, LAJ;->d:LAJ;

    .line 72
    :cond_0
    sget-object v0, LAJ;->d:LAJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LAJ;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LAJ;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(LAJ;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, LAJ;->e:Z

    return p1
.end method

.method static synthetic b(LAJ;)Lcom/yik/yak/data/models/Configuration;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LAJ;->f:Lcom/yik/yak/data/models/Configuration;

    return-object v0
.end method

.method static synthetic c(LAJ;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, LAJ;->k()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 180
    const-string v0, "bg"

    invoke-static {v0, v1}, LHi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yik/yak/YikYak;->b:Ljava/lang/String;

    .line 181
    const-string v0, "fg"

    invoke-static {v0, v1}, LHi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yik/yak/YikYak;->c:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "new_configuration"

    invoke-static {v0, v1}, LHi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LAJ;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    .line 373
    :try_start_0
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 377
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p3

    .line 388
    :cond_0
    :goto_0
    return p3

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 384
    :catch_1
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, LAJ;->f:Lcom/yik/yak/data/models/Configuration;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, LAJ;->k()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LAJ;->a(Lorg/json/JSONObject;Z)V

    .line 100
    invoke-virtual {p0, p1}, LAJ;->b(Landroid/content/Context;)V

    .line 103
    :cond_0
    iget-object v0, p0, LAJ;->f:Lcom/yik/yak/data/models/Configuration;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LAJ;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    .line 395
    :try_start_0
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 410
    :cond_0
    :goto_0
    return-object p3

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;LAL;)V
    .locals 2

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, LAJ;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget-boolean v0, p0, LAJ;->e:Z

    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, LAJ;->e:Z

    .line 132
    new-instance v0, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;

    invoke-direct {v0}, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;-><init>()V

    new-instance v1, LAK;

    invoke-direct {v1, p0}, LAK;-><init>(LAJ;)V

    invoke-virtual {v0, p1, v1}, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;->execute(Landroid/content/Context;LAp;)Landroid/os/Handler;

    .line 177
    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 3

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iput-object p1, p0, LAJ;->g:Lorg/json/JSONObject;

    .line 89
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, LAq;

    invoke-direct {v1}, LAq;-><init>()V

    iget-object v2, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, LAq;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v1

    iput-object v1, p0, LAJ;->f:Lcom/yik/yak/data/models/Configuration;

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "new_configuration"

    invoke-static {v1, v0, v2}, LHi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LAJ;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    .line 329
    :try_start_0
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, LAJ;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p3

    .line 344
    :cond_0
    :goto_0
    return p3

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 340
    :catch_1
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, LAJ;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, LAJ;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 192
    :cond_0
    return p2
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LAJ;->a(Landroid/content/Context;LAL;)V

    .line 122
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, LAJ;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 76
    sget-object v0, LAJ;->d:LAJ;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v3

    .line 229
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 231
    if-nez v0, :cond_3

    .line 242
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v1, v2

    .line 225
    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1

    .line 241
    const-string v4, "000000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 206
    :try_start_0
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 209
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 210
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 211
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "YS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const/4 v0, 0x1

    .line 221
    :cond_0
    :goto_1
    return v0

    .line 208
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getMainApiEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 262
    :goto_1
    if-nez v0, :cond_0

    .line 263
    sget-object v0, LAJ;->a:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, LAJ;->f:Lcom/yik/yak/data/models/Configuration;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, LAJ;->f:Lcom/yik/yak/data/models/Configuration;

    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration;->endpointUrl:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 273
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 274
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    nop

    :array_0
    .array-data 2
        0x68s
        0x74s
        0x74s
        0x70s
        0x2es
        0x61s
        0x67s
        0x65s
        0x6es
        0x74s
    .end array-data
.end method

.method public h()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 279
    :try_start_0
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v2

    .line 280
    invoke-virtual {p0, v2}, LAJ;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "e"

    .line 281
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 283
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 284
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 285
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "YS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    const-string v5, "d"

    sput-object v5, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 289
    invoke-static {v4}, LHi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;

    .line 281
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GQ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    sput-object v1, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 292
    invoke-static {v4}, LHi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 305
    :cond_2
    :goto_3
    return-void

    .line 294
    :cond_3
    :try_start_1
    sput-object v1, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 295
    invoke-static {v4}, LHi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 300
    :catch_1
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_3

    .line 302
    :catch_2
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getNotificationEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LAJ;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getImageUploadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
