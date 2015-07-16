.class LHx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:LHy;

.field final synthetic b:LHw;


# direct methods
.method constructor <init>(LHw;LHy;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, LHx;->b:LHw;

    iput-object p2, p0, LHx;->a:LHy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, LHx;->a:LHy;

    invoke-virtual {v0, p1, p2}, LHy;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, LHx;->a:LHy;

    invoke-virtual {v0, p1}, LHy;->b(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, LHx;->a:LHy;

    invoke-virtual {v0, p1}, LHy;->a(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
