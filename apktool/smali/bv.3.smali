.class Lbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lbu;


# direct methods
.method constructor <init>(Lbu;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lbv;->a:Lbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->a(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->b(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->c(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->d(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->e(Landroid/app/Activity;)V

    .line 49
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->f(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbv;->a:Lbu;

    invoke-virtual {v0, p1}, Lbu;->g(Landroid/app/Activity;)V

    .line 59
    return-void
.end method
