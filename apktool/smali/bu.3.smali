.class Lbu;
.super LbA;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final c:Landroid/app/Application;

.field private final d:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(LbE;LbG;Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, LbA;-><init>(LbE;LbG;)V

    .line 24
    new-instance v0, Lbv;

    invoke-direct {v0, p0}, Lbv;-><init>(Lbu;)V

    iput-object v0, p0, Lbu;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 77
    iput-object p3, p0, Lbu;->c:Landroid/app/Application;

    .line 78
    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v0

    invoke-virtual {v0}, Lbs;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Registering activity lifecycle callbacks for session analytics."

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lbu;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    return-void
.end method

.method public static a(Landroid/app/Application;LbE;Lbz;LJI;)Lbu;
    .locals 3

    .prologue
    .line 65
    const-string v0, "Crashlytics Trace Manager"

    invoke-static {v0}, LIm;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 67
    new-instance v1, Lby;

    invoke-direct {v1, p0, v0, p2, p3}, Lby;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lbz;LJI;)V

    .line 69
    new-instance v2, LbG;

    invoke-direct {v2, p0, v1, p2, v0}, LbG;-><init>(Landroid/content/Context;LJq;Lbz;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 71
    new-instance v0, Lbu;

    invoke-direct {v0, p1, v2, p0}, Lbu;-><init>(LbE;LbG;Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v0

    invoke-virtual {v0}, Lbs;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unregistering activity lifecycle callbacks for session analytics"

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lbu;->c:Landroid/app/Application;

    iget-object v1, p0, Lbu;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    invoke-super {p0}, LbA;->a()V

    .line 89
    return-void
.end method
