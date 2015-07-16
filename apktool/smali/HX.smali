.class LHX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIb;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LHX;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public a()LHT;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 33
    invoke-static {}, LHA;->g()LHM;

    .line 78
    :goto_0
    return-object v0

    .line 39
    :cond_0
    :try_start_0
    iget-object v1, p0, LHX;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 40
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    new-instance v2, LHZ;

    invoke-direct {v2, v0}, LHZ;-><init>(LHY;)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :try_start_1
    iget-object v3, p0, LHX;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :try_start_2
    new-instance v3, LIa;

    invoke-virtual {v2}, LHZ;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v3, v1}, LIa;-><init>(Landroid/os/IBinder;)V

    .line 60
    new-instance v1, LHT;

    invoke-virtual {v3}, LIa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LIa;->b()Z

    move-result v3

    invoke-direct {v1, v4, v3}, LHT;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    iget-object v3, p0, LHX;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 63
    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, LHA;->g()LHM;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    :try_start_5
    iget-object v1, p0, LHX;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 74
    :catch_2
    move-exception v1

    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v3, p0, LHX;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    .line 70
    :cond_1
    invoke-static {}, LHA;->g()LHM;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0
.end method
