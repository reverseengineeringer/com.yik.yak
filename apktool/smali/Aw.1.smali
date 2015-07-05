.class public LAw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static d:LAw;


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
            "LAy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LAw;->a:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LAw;->b:Ljava/lang/String;

    .line 43
    new-instance v0, LAw;

    invoke-direct {v0}, LAw;-><init>()V

    sput-object v0, LAw;->d:LAw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "new_configuration"

    iput-object v0, p0, LAw;->c:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, LAw;->e:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LAw;->h:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAw;->i:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, LAw;->h()V

    .line 62
    return-void
.end method

.method public static declared-synchronized a()LAw;
    .locals 2

    .prologue
    .line 69
    const-class v1, LAw;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAw;->d:LAw;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, LAw;

    invoke-direct {v0}, LAw;-><init>()V

    sput-object v0, LAw;->d:LAw;

    .line 73
    :cond_0
    sget-object v0, LAw;->d:LAw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LAw;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LAw;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(LAw;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, LAw;->e:Z

    return p1
.end method

.method static synthetic b(LAw;)Lcom/yik/yak/data/models/Configuration;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LAw;->f:Lcom/yik/yak/data/models/Configuration;

    return-object v0
.end method

.method static synthetic c(LAw;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, LAw;->k()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 187
    const-string v0, "bg"

    invoke-static {v0, v1}, LGB;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yik/yak/YikYak;->b:Ljava/lang/String;

    .line 188
    const-string v0, "fg"

    invoke-static {v0, v1}, LGB;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yik/yak/YikYak;->c:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "new_configuration"

    invoke-static {v0, v1}, LGB;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LAw;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    .line 395
    :try_start_0
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p3

    .line 410
    :cond_0
    :goto_0
    return p3

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

.method public a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, LAw;->f:Lcom/yik/yak/data/models/Configuration;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, LAw;->k()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LAw;->a(Lorg/json/JSONObject;Z)V

    .line 107
    invoke-virtual {p0, p1}, LAw;->b(Landroid/content/Context;)V

    .line 110
    :cond_0
    iget-object v0, p0, LAw;->f:Lcom/yik/yak/data/models/Configuration;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LAw;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    .line 417
    :try_start_0
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 432
    :cond_0
    :goto_0
    return-object p3

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 428
    :catch_1
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;LAy;)V
    .locals 2

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, LAw;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    iget-boolean v0, p0, LAw;->e:Z

    if-nez v0, :cond_1

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, LAw;->e:Z

    .line 139
    new-instance v0, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;

    invoke-direct {v0}, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;-><init>()V

    new-instance v1, LAx;

    invoke-direct {v1, p0}, LAx;-><init>(LAw;)V

    invoke-virtual {v0, p1, v1}, Lcom/yik/yak/data/http/request/DownloadConfigurationSettings;->execute(Landroid/content/Context;LAe;)Landroid/os/Handler;

    .line 184
    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 3

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iput-object p1, p0, LAw;->g:Lorg/json/JSONObject;

    .line 90
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :try_start_0
    new-instance v1, LAf;

    invoke-direct {v1}, LAf;-><init>()V

    iget-object v2, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, LAf;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v1

    iput-object v1, p0, LAw;->f:Lcom/yik/yak/data/models/Configuration;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-eqz p2, :cond_0

    .line 100
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "new_configuration"

    invoke-static {v1, v0, v2}, LGB;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LAw;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    .line 351
    :try_start_0
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, LAw;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p3

    .line 366
    :cond_0
    :goto_0
    return p3

    .line 360
    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 362
    :catch_1
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, LAw;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, LAw;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 199
    :cond_0
    return p2
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LAw;->a(Landroid/content/Context;LAy;)V

    .line 129
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, LAw;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, LAw;->d:LAw;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
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

    .line 233
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

    .line 237
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 239
    if-nez v0, :cond_3

    .line 250
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v1, v2

    .line 233
    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    .line 249
    const-string v4, "000000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 250
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
    .line 209
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

    .line 214
    :try_start_0
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    .line 216
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

    .line 217
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 218
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 219
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "YS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    const/4 v0, 0x1

    .line 229
    :cond_0
    :goto_1
    return v0

    .line 216
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 10

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    invoke-static {}, LAq;->a()LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {}, LAz;->a()LAz;

    move-result-object v0

    invoke-virtual {v0}, LAz;->b()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getMainApiEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-static {}, LAq;->a()LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 267
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 269
    iget-object v0, p0, LAw;->f:Lcom/yik/yak/data/models/Configuration;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, LAw;->f:Lcom/yik/yak/data/models/Configuration;

    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration;->endpoints:Ljava/util/ArrayList;

    .line 272
    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Configuration$EndPoint;

    .line 274
    iget-wide v8, v0, Lcom/yik/yak/data/models/Configuration$EndPoint;->minLatitude:D

    cmpl-double v7, v2, v8

    if-ltz v7, :cond_1

    iget-wide v8, v0, Lcom/yik/yak/data/models/Configuration$EndPoint;->maxLatitude:D

    cmpg-double v7, v2, v8

    if-gtz v7, :cond_1

    iget-wide v8, v0, Lcom/yik/yak/data/models/Configuration$EndPoint;->minLongitude:D

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_1

    iget-wide v8, v0, Lcom/yik/yak/data/models/Configuration$EndPoint;->maxLatitude:D

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_1

    .line 278
    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$EndPoint;->url:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_2
    if-nez v1, :cond_3

    .line 285
    sget-object v0, LAw;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 295
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 296
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
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

    .line 301
    :try_start_0
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v2

    .line 302
    invoke-virtual {p0, v2}, LAw;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "e"

    .line 303
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

    .line 305
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 306
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 307
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "YS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    const-string v5, "d"

    sput-object v5, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 311
    invoke-static {v4}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;

    .line 303
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GQ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    sput-object v1, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 314
    invoke-static {v4}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 327
    :cond_2
    :goto_3
    return-void

    .line 316
    :cond_3
    :try_start_1
    sput-object v1, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 317
    invoke-static {v4}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 322
    :catch_1
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_3

    .line 324
    :catch_2
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    invoke-static {}, LAz;->a()LAz;

    move-result-object v0

    invoke-virtual {v0}, LAz;->b()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getNotificationEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LAw;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, LAz;->a()LAz;

    move-result-object v0

    invoke-virtual {v0}, LAz;->b()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getImageUploadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
