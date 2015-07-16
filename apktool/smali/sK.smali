.class public LsK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "LsK;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Ltf;

.field private static final o:Ltq;

.field private static p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lsd;

.field private final c:LsG;

.field private final d:Ljava/lang/String;

.field private final e:LsQ;

.field private final f:LuD;

.field private final g:LsZ;

.field private final h:LsX;

.field private final i:LuB;

.field private final j:Lsr;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LsK;->m:Ljava/util/Map;

    .line 2110
    new-instance v0, Ltf;

    invoke-direct {v0}, Ltf;-><init>()V

    sput-object v0, LsK;->n:Ltf;

    .line 2111
    new-instance v0, Ltq;

    invoke-direct {v0}, Ltq;-><init>()V

    sput-object v0, LsK;->o:Ltq;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, LsK;->a:Landroid/content/Context;

    .line 196
    iput-object p3, p0, LsK;->d:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LsK;->l:Ljava/util/Map;

    .line 198
    new-instance v0, LsQ;

    invoke-direct {v0, p0, v4}, LsQ;-><init>(LsK;LsL;)V

    iput-object v0, p0, LsK;->e:LsQ;

    .line 199
    invoke-virtual {p0}, LsK;->g()LsG;

    move-result-object v0

    iput-object v0, p0, LsK;->c:LsG;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v0, "$android_lib_version"

    const-string v2, "4.6.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "$android_os"

    const-string v2, "Android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "$android_os_version"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "$android_manufacturer"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "UNKNOWN"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v2, "$android_brand"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "UNKNOWN"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v2, "$android_model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "UNKNOWN"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :try_start_0
    iget-object v0, p0, LsK;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 210
    iget-object v2, p0, LsK;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 211
    const-string v2, "$android_app_version"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v2, "$android_app_version_code"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LsK;->k:Ljava/util/Map;

    .line 218
    invoke-virtual {p0, p1, p3}, LsK;->b(Landroid/content/Context;Ljava/lang/String;)LuD;

    move-result-object v0

    iput-object v0, p0, LsK;->f:LuD;

    .line 219
    invoke-virtual {p0}, LsK;->i()LuB;

    move-result-object v0

    iput-object v0, p0, LsK;->i:LuB;

    .line 220
    invoke-virtual {p0, p1, p2, p3}, LsK;->a(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)LsZ;

    move-result-object v0

    iput-object v0, p0, LsK;->g:LsZ;

    .line 221
    invoke-virtual {p0}, LsK;->h()LsX;

    move-result-object v0

    iput-object v0, p0, LsK;->h:LsX;

    .line 222
    iget-object v0, p0, LsK;->h:LsX;

    iget-object v1, p0, LsK;->f:LuD;

    invoke-virtual {p0, p3, v0, v1}, LsK;->a(Ljava/lang/String;Lss;LuD;)Lsr;

    move-result-object v0

    iput-object v0, p0, LsK;->j:Lsr;

    .line 226
    iget-object v0, p0, LsK;->g:LsZ;

    invoke-virtual {v0}, LsZ;->c()Ljava/lang/String;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, LsK;->g:LsZ;

    invoke-virtual {v0}, LsZ;->b()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    iget-object v1, p0, LsK;->j:Lsr;

    invoke-virtual {v1, v0}, Lsr;->a(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, LsK;->f()Lsd;

    move-result-object v0

    iput-object v0, p0, LsK;->b:Lsd;

    .line 232
    iget-object v0, p0, LsK;->b:Lsd;

    iget-object v1, p0, LsK;->j:Lsr;

    invoke-virtual {v0, v1}, Lsd;->a(Lsr;)V

    .line 234
    invoke-virtual {p0}, LsK;->e()V

    .line 236
    invoke-virtual {p0}, LsK;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "$app_open"

    invoke-virtual {p0, v0, v4}, LsK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 240
    :cond_1
    iget-object v0, p0, LsK;->f:LuD;

    invoke-interface {v0}, LuD;->a()V

    .line 241
    return-void

    .line 204
    :cond_2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    .line 205
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_1

    .line 206
    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto/16 :goto_2

    .line 207
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)LsK;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 270
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    sget-object v2, LsK;->m:Ljava/util/Map;

    monitor-enter v2

    .line 274
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 276
    sget-object v0, LsK;->p:Ljava/util/concurrent/Future;

    if-nez v0, :cond_2

    .line 277
    sget-object v0, LsK;->n:Ltf;

    const-string v1, "com.mixpanel.android.mpmetrics.ReferralInfo"

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v1, v4}, Ltf;->a(Landroid/content/Context;Ljava/lang/String;Lth;)Ljava/util/concurrent/Future;

    move-result-object v0

    sput-object v0, LsK;->p:Ljava/util/concurrent/Future;

    .line 280
    :cond_2
    sget-object v0, LsK;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 281
    if-nez v0, :cond_4

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    sget-object v1, LsK;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 286
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsK;

    .line 287
    if-nez v0, :cond_3

    invoke-static {v3}, Lsn;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    new-instance v0, LsK;

    sget-object v4, LsK;->p:Ljava/util/concurrent/Future;

    invoke-direct {v0, v3, v4, p1}, LsK;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V

    .line 289
    invoke-static {p0, v0}, LsK;->a(Landroid/content/Context;LsK;)V

    .line 290
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_3
    invoke-static {p0}, LsK;->a(Landroid/content/Context;)V

    .line 295
    monitor-exit v2

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(LsK;)LsZ;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LsK;->g:LsZ;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 2075
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2077
    :try_start_0
    const-string v1, "H"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2078
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2079
    const-string v3, "getTargetUrlFromInboundIntent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2080
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2089
    :cond_0
    :goto_0
    return-void

    .line 2083
    :catch_0
    move-exception v1

    .line 2084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please install the Bolts library >= 1.1.2 to track App Links: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2085
    :catch_1
    move-exception v1

    .line 2086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please install the Bolts library >= 1.1.2 to track App Links: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2087
    :catch_2
    move-exception v1

    .line 2088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to detect inbound App Links: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2082
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;LsK;)V
    .locals 6

    .prologue
    .line 2039
    :try_start_0
    const-string v0, "android.support.v4.content.LocalBroadcastManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2040
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2041
    const-string v2, "registerReceiver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/IntentFilter;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2042
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2043
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, LsM;

    invoke-direct {v4, p1}, LsM;-><init>(LsK;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.parse.bolts.measurement_event"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2069
    :goto_0
    return-void

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To enable App Links tracking android.support.v4 must be installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2064
    :catch_1
    move-exception v0

    .line 2065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To enable App Links tracking android.support.v4 must be installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2066
    :catch_2
    move-exception v0

    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Links tracking will not be enabled due to this exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2061
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 2026
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2028
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2029
    iget-object v2, p0, LsK;->b:Lsd;

    invoke-virtual {v2, v1}, Lsd;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2034
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(LsK;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, LsK;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic a(LsK;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, LsK;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(LsO;)V
    .locals 4

    .prologue
    .line 1275
    sget-object v1, LsK;->m:Ljava/util/Map;

    monitor-enter v1

    .line 1276
    :try_start_0
    sget-object v0, LsK;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1277
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsK;

    .line 1278
    invoke-interface {p0, v0}, LsO;->a(LsK;)V

    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    return-void
.end method

.method static synthetic b(LsK;)Lsr;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LsK;->j:Lsr;

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 2009
    const-string v0, "$distinct_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, LsK;->b:Lsd;

    invoke-virtual {v0, p1}, Lsd;->a(Lorg/json/JSONObject;)V

    .line 2014
    :goto_0
    return-void

    .line 2012
    :cond_0
    iget-object v0, p0, LsK;->g:LsZ;

    invoke-virtual {v0, p1}, LsZ;->b(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static synthetic c(LsK;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LsK;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(LsK;)LsG;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LsK;->c:LsG;

    return-object v0
.end method

.method static synthetic e(LsK;)LuD;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LsK;->f:LuD;

    return-object v0
.end method

.method static synthetic f(LsK;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LsK;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)LsZ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "LsZ;"
        }
    .end annotation

    .prologue
    .line 1297
    new-instance v0, LsL;

    invoke-direct {v0, p0}, LsL;-><init>(LsK;)V

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.mixpanel.android.mpmetrics.MixpanelAPI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    sget-object v2, LsK;->n:Ltf;

    invoke-virtual {v2, p1, v1, v0}, Ltf;->a(Landroid/content/Context;Ljava/lang/String;Lth;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1309
    new-instance v1, LsZ;

    invoke-direct {v1, p2, v0}, LsZ;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    return-object v1
.end method

.method a(Ljava/lang/String;Lss;LuD;)Lsr;
    .locals 1

    .prologue
    .line 1313
    new-instance v0, Lsr;

    invoke-direct {v0, p1, p2, p3}, Lsr;-><init>(Ljava/lang/String;Lss;LuD;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, LsK;->b:Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    .line 528
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 407
    iget-object v2, p0, LsK;->l:Ljava/util/Map;

    monitor-enter v2

    .line 408
    :try_start_0
    iget-object v3, p0, LsK;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    monitor-exit v2

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 456
    iget-object v1, p0, LsK;->l:Ljava/util/Map;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, LsK;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 458
    iget-object v2, p0, LsK;->l:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 464
    iget-object v1, p0, LsK;->g:LsZ;

    invoke-virtual {v1}, LsZ;->a()Ljava/util/Map;

    move-result-object v1

    .line 465
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 466
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 468
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception tracking event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 459
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 471
    :cond_1
    :try_start_3
    iget-object v1, p0, LsK;->g:LsZ;

    invoke-virtual {v1, v3}, LsZ;->a(Lorg/json/JSONObject;)V

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    .line 476
    double-to-long v6, v4

    .line 477
    const-string v1, "time"

    invoke-virtual {v3, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 478
    const-string v1, "distinct_id"

    invoke-virtual {p0}, LsK;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v8

    .line 482
    sub-double v0, v4, v0

    .line 483
    const-string v2, "$duration"

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 486
    :cond_2
    if-eqz p2, :cond_3

    .line 487
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 488
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 494
    :cond_3
    new-instance v0, Lse;

    iget-object v1, p0, LsK;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v3, v1}, Lse;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, LsK;->b:Lsd;

    invoke-virtual {v1, v0}, Lsd;->a(Lse;)V

    .line 498
    iget-object v0, p0, LsK;->i:LuB;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, LsK;->i:LuB;

    invoke-interface {v0, p1}, LuB;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, LsK;->g:LsZ;

    invoke-virtual {v0, p1}, LsZ;->c(Lorg/json/JSONObject;)V

    .line 610
    return-void
.end method

.method public a(Lti;)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, LsK;->g:LsZ;

    invoke-virtual {v0, p1}, LsZ;->a(Lti;)V

    .line 687
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, LsK;->g:LsZ;

    invoke-virtual {v0}, LsZ;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)LuD;
    .locals 4

    .prologue
    .line 1326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1327
    new-instance v0, LsV;

    sget-object v1, LsK;->o:Ltq;

    invoke-direct {v0, p0, v1}, LsV;-><init>(LsK;Ltq;)V

    .line 1330
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LuE;

    iget-object v1, p0, LsK;->a:Landroid/content/Context;

    iget-object v2, p0, LsK;->d:Ljava/lang/String;

    sget-object v3, LsK;->o:Ltq;

    invoke-direct {v0, v1, v2, p0, v3}, LuE;-><init>(Landroid/content/Context;Ljava/lang/String;LsK;Ltq;)V

    goto :goto_0
.end method

.method public c()LsP;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, LsK;->e:LsQ;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, LsK;->k:Ljava/util/Map;

    return-object v0
.end method

.method e()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LsK;->c:LsG;

    invoke-virtual {v0}, LsG;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, LsK;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, LsK;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1261
    new-instance v1, LsY;

    invoke-direct {v1, p0}, LsY;-><init>(LsK;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1262
    :cond_0
    return-void
.end method

.method f()Lsd;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, LsK;->a:Landroid/content/Context;

    invoke-static {v0}, Lsd;->a(Landroid/content/Context;)Lsd;

    move-result-object v0

    return-object v0
.end method

.method g()LsG;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, LsK;->a:Landroid/content/Context;

    invoke-static {v0}, LsG;->a(Landroid/content/Context;)LsG;

    move-result-object v0

    return-object v0
.end method

.method h()LsX;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1318
    new-instance v0, LsW;

    invoke-direct {v0, p0, v2}, LsW;-><init>(LsK;LsL;)V

    .line 1321
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LsU;

    invoke-direct {v0, p0, v2}, LsU;-><init>(LsK;LsL;)V

    goto :goto_0
.end method

.method i()LuB;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, LsK;->f:LuD;

    instance-of v0, v0, LuE;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, LsK;->f:LuD;

    check-cast v0, LuB;

    .line 1339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, LsK;->c:LsG;

    invoke-virtual {v0}, LsG;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
