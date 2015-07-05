.class public LAq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;
.implements LjZ;


# static fields
.field private static a:LAq;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/os/Handler$Callback;

.field private e:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private h:Lcom/yik/yak/data/models/YakkerLocation;

.field private i:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private j:Lcom/google/android/gms/location/LocationRequest;

.field private k:Lcom/yik/yak/data/models/YakkerLocation;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, LAq;->b:Z

    .line 69
    new-instance v0, LAr;

    invoke-direct {v0, p0}, LAr;-><init>(LAq;)V

    iput-object v0, p0, LAq;->e:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 86
    new-instance v0, LAs;

    invoke-direct {v0, p0}, LAs;-><init>(LAq;)V

    iput-object v0, p0, LAq;->i:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    .line 119
    iput-object p1, p0, LAq;->f:Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, LAq;->j()V

    .line 121
    return-void
.end method

.method public static declared-synchronized a()LAq;
    .locals 2

    .prologue
    .line 128
    const-class v0, LAq;

    monitor-enter v0

    :try_start_0
    sget-object v1, LAq;->a:LAq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)LAq;
    .locals 2

    .prologue
    .line 132
    const-class v1, LAq;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAq;->a:LAq;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, LAq;

    invoke-direct {v0, p0}, LAq;-><init>(Landroid/content/Context;)V

    sput-object v0, LAq;->a:LAq;

    .line 136
    :cond_0
    sget-object v0, LAq;->a:LAq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LAq;)Landroid/os/Handler$Callback;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LAq;->d:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method static synthetic a(LAq;Lcom/yik/yak/data/models/YakkerLocation;)Lcom/yik/yak/data/models/YakkerLocation;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    return-object p1
.end method

.method static synthetic b(LAq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    return-object v0
.end method

.method private k()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, LAq;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lka;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, LAq;->i:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, LAq;->e:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Handler$Callback;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, LAq;->k()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 294
    :cond_0
    iput-object p1, p0, LAq;->d:Landroid/os/Handler$Callback;

    .line 296
    iget-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    iget-object v0, p0, LAq;->d:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 301
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 302
    iget-object v1, p0, LAq;->d:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LGB;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v0, ""

    .line 171
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Handler$Callback;)V
    .locals 5

    .prologue
    .line 308
    invoke-virtual {p0}, LAq;->e()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 312
    const-string v3, "userID"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v3, "lat"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v3, "long"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v3, "deviceID"

    invoke-virtual {p0}, LAq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {}, LAw;->a()LAw;

    move-result-object v3

    invoke-virtual {v3}, LAw;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "registerUser"

    invoke-static {v3, v4, v2, v1}, LzY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Lxv;

    invoke-direct {v2}, Lxv;-><init>()V

    invoke-virtual {v2, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v1

    invoke-virtual {v1}, Lxv;->b()Lxt;

    move-result-object v1

    .line 327
    const/4 v2, 0x1

    invoke-static {v2}, LzY;->a(Z)Lxo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lxo;->a(Lxt;)LwP;

    move-result-object v1

    .line 328
    new-instance v2, LAt;

    invoke-direct {v2, p0, p1, v0}, LAt;-><init>(LAq;Landroid/os/Handler$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LwP;->a(LwT;)V

    .line 376
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 380
    :try_start_0
    new-instance v0, Lcom/yik/yak/data/models/YakkerLocation;

    const-string v1, "C"

    invoke-direct {v0, v1}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    .line 381
    iget-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yik/yak/data/models/YakkerLocation;->setLatitude(D)V

    .line 382
    iget-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yik/yak/data/models/YakkerLocation;->setLongitude(D)V

    .line 383
    iget-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/YakkerLocation;->setAccuracy(F)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, LAq;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, LAq;->c:Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LGB;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    const-string v0, ""

    .line 395
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 396
    if-nez v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, LAq;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, LGB;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 400
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 150
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    :try_start_0
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 159
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 186
    :try_start_0
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 196
    :goto_0
    :try_start_1
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 206
    :goto_1
    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 207
    const-string v1, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 208
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    .line 216
    :goto_2
    :try_start_3
    iget-object v0, p0, LAq;->f:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 217
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 223
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LGE;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {v3}, LGB;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, LGB;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "000000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    const-string v0, ""

    move-object v3, v0

    goto/16 :goto_0

    .line 200
    :catch_1
    move-exception v0

    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_1

    .line 210
    :catch_2
    move-exception v0

    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_2

    .line 220
    :catch_3
    move-exception v0

    const-string v0, ""

    goto/16 :goto_3

    .line 227
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public f()Lcom/yik/yak/data/models/YakkerLocation;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 239
    iget-boolean v0, p0, LAq;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, LAq;->k:Lcom/yik/yak/data/models/YakkerLocation;

    .line 276
    :goto_0
    return-object v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0}, LAq;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    iget-object v1, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_1

    .line 245
    invoke-direct {p0}, LAq;->k()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 248
    :cond_1
    iget-object v1, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    invoke-virtual {p0}, LAq;->g()V

    .line 253
    :cond_2
    :try_start_0
    sget-object v1, Lka;->b:LjX;

    iget-object v2, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, LjX;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_1
    iget-object v1, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    if-nez v1, :cond_3

    .line 259
    new-instance v1, Lcom/yik/yak/data/models/YakkerLocation;

    const-string v2, "lastKnown"

    invoke-direct {v1, v2}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    .line 260
    iget-object v1, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->f()V

    .line 263
    :cond_3
    if-nez v0, :cond_4

    .line 264
    iget-object v0, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    .line 268
    :cond_4
    if-nez v0, :cond_5

    .line 269
    new-instance v0, Landroid/location/Location;

    const-string v1, "null"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 271
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 274
    :cond_5
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    invoke-virtual {v1, v0}, LGs;->a(Landroid/location/Location;)V

    .line 276
    new-instance v1, Lcom/yik/yak/data/models/YakkerLocation;

    invoke-direct {v1, v0}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Landroid/location/Location;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public g()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0}, LAq;->k()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 284
    :cond_0
    iget-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 287
    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 408
    :try_start_0
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, LAq;->j:Lcom/google/android/gms/location/LocationRequest;

    .line 409
    iget-object v0, p0, LAq;->j:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 410
    sget-object v0, Lka;->b:LjX;

    iget-object v1, p0, LAq;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, LAq;->j:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v1, v2, p0}, LjX;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;LjZ;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, LAq;->b:Z

    return v0
.end method

.method public j()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, LAq;->b:Z

    .line 429
    :try_start_0
    iget-object v1, p0, LAq;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, LAq;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 430
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 431
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 432
    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "54"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, LAq;->b:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 445
    :cond_0
    :goto_1
    return-void

    .line 429
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 440
    :catch_1
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 442
    :catch_2
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const v1, 0x459c4000    # 5000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 455
    :cond_0
    invoke-static {}, LAq;->a()LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 456
    iget-object v1, p0, LAq;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://content.yikyakapi.net/refreshers/locate?latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&device=android&version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LAF;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    :cond_1
    new-instance v0, Lcom/yik/yak/data/models/YakkerLocation;

    invoke-direct {v0, p1}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    .line 463
    iget-object v0, p0, LAq;->h:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->e()V

    .line 464
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
