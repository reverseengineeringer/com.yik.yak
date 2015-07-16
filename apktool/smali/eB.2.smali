.class final LeB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:LeA;


# direct methods
.method constructor <init>(LeA;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, LeB;->a:LeA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service connected, binder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 174
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "bound to service"

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, LeB;->a:LeA;

    invoke-static {p2}, LgD;->a(Landroid/os/IBinder;)LgC;

    move-result-object v1

    invoke-static {v0, v1}, LeA;->a(LeA;LgC;)LgC;

    .line 181
    iget-object v0, p0, LeB;->a:LeA;

    invoke-static {v0}, LeA;->a(LeA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 189
    :cond_0
    iget-object v0, p0, LeB;->a:LeA;

    invoke-static {v0}, LeA;->b(LeA;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 190
    iget-object v0, p0, LeB;->a:LeA;

    invoke-static {v0, v2}, LeA;->a(LeA;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 191
    iget-object v0, p0, LeB;->a:LeA;

    invoke-static {v0}, LeA;->c(LeA;)LeD;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, LeD;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, LeB;->a:LeA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LeA;->a(LeA;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 198
    iget-object v0, p0, LeB;->a:LeA;

    invoke-static {v0}, LeA;->d(LeA;)LeC;

    move-result-object v0

    invoke-interface {v0}, LeC;->b()V

    .line 199
    return-void
.end method
