.class Lcom/parse/ParseWakeLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseWakeLock"

.field private static volatile hasWakeLockPermission:Z


# instance fields
.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseWakeLock;->hasWakeLockPermission:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/parse/ParseWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    return-void
.end method

.method public static acquireNewWakeLock(Landroid/content/Context;ILjava/lang/String;J)Lcom/parse/ParseWakeLock;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 17
    .line 19
    sget-boolean v0, Lcom/parse/ParseWakeLock;->hasWakeLockPermission:Z

    if-eqz v0, :cond_1

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 23
    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 29
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v1, v0

    .line 46
    :cond_1
    :goto_1
    new-instance v0, Lcom/parse/ParseWakeLock;

    invoke-direct {v0, v1}, Lcom/parse/ParseWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v0

    .line 32
    :cond_2
    :try_start_1
    invoke-virtual {v0, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    const-string v0, "com.parse.ParseWakeLock"

    const-string v2, "Failed to acquire a PowerManager.WakeLock. This isnecessary for reliable handling of pushes. Please add this to your Manifest.xml: <uses-permission android:name=\"android.permission.WAKE_LOCK\" /> "

    invoke-static {v0, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sput-boolean v4, Lcom/parse/ParseWakeLock;->hasWakeLockPermission:Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parse/ParseWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parse/ParseWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 57
    :cond_0
    return-void
.end method
