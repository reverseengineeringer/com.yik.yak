.class LbE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:LbI;

.field final b:LbK;


# direct methods
.method constructor <init>(LbI;LbK;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LbE;->a:LbI;

    .line 38
    iput-object p2, p0, LbE;->b:LbK;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;LbI;LbD;LJa;)LbE;
    .locals 3

    .prologue
    .line 27
    const-string v0, "Crashlytics SAM"

    invoke-static {v0}, LHE;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 29
    new-instance v1, LbC;

    invoke-direct {v1, p0, v0, p2, p3}, LbC;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LbD;LJa;)V

    .line 31
    new-instance v2, LbK;

    invoke-direct {v2, p0, v1, p2, v0}, LbK;-><init>(Landroid/content/Context;LII;LbD;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    new-instance v0, LbE;

    invoke-direct {v0, p1, v2}, LbE;-><init>(LbI;LbK;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, LbE;->b:LbK;

    invoke-virtual {v0}, LbK;->b()V

    .line 115
    return-void
.end method

.method public a(LJj;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, LbE;->b:LbK;

    invoke-virtual {v0, p1, p2}, LbK;->a(LJj;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->a:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

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
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    invoke-static {v1, p1}, LbG;->a(LbI;Ljava/lang/String;)LbG;

    move-result-object v1

    invoke-virtual {v0, v1}, LbK;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    invoke-static {v1}, LbG;->a(LbI;)LbG;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 69
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->g:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 79
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->e:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 84
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->c:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 89
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->d:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 94
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->b:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, LbE;->b:LbK;

    iget-object v1, p0, LbE;->a:LbI;

    sget-object v2, LbH;->f:LbH;

    invoke-static {v1, v2, p1}, LbG;->a(LbI;LbH;Landroid/app/Activity;)LbG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LbK;->a(Ljava/lang/Object;Z)V

    .line 104
    return-void
.end method
