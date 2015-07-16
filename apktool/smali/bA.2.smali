.class LbA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:LbE;

.field final b:LbG;


# direct methods
.method constructor <init>(LbE;LbG;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LbA;->a:LbE;

    .line 38
    iput-object p2, p0, LbA;->b:LbG;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;LbE;Lbz;LJI;)LbA;
    .locals 3

    .prologue
    .line 27
    const-string v0, "Crashlytics SAM"

    invoke-static {v0}, LIm;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 29
    new-instance v1, Lby;

    invoke-direct {v1, p0, v0, p2, p3}, Lby;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lbz;LJI;)V

    .line 31
    new-instance v2, LbG;

    invoke-direct {v2, p0, v1, p2, v0}, LbG;-><init>(Landroid/content/Context;LJq;Lbz;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    new-instance v0, LbA;

    invoke-direct {v0, p1, v2}, LbA;-><init>(LbE;LbG;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, LbA;->b:LbG;

    invoke-virtual {v0}, LbG;->b()V

    .line 115
    return-void
.end method

.method public a(LJR;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, LbA;->b:LbG;

    invoke-virtual {v0, p1, p2}, LbG;->a(LJR;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->a:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    invoke-static {v1, p1}, LbC;->a(LbE;Ljava/lang/String;)LbC;

    move-result-object v1

    invoke-virtual {v0, v1}, LbG;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    invoke-static {v1}, LbC;->a(LbE;)LbC;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 69
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->g:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 79
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->e:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 84
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->c:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 89
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->d:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 94
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->b:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, LbA;->b:LbG;

    iget-object v1, p0, LbA;->a:LbE;

    sget-object v2, LbD;->f:LbD;

    invoke-static {v1, v2, p1}, LbC;->a(LbE;LbD;Landroid/app/Activity;)LbC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbG;->a(Ljava/lang/Object;Z)V

    .line 104
    return-void
.end method
