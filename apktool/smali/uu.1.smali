.class Luu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Luh;


# instance fields
.field final synthetic a:Luq;

.field private final b:Lug;

.field private final c:Lut;


# direct methods
.method public constructor <init>(Luq;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Luu;->a:Luq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lug;

    invoke-direct {v0, p0}, Lug;-><init>(Luh;)V

    iput-object v0, p0, Luu;->b:Lug;

    .line 151
    new-instance v0, Lut;

    invoke-direct {v0, p1}, Lut;-><init>(Luq;)V

    iput-object v0, p0, Luu;->c:Lut;

    .line 152
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 195
    invoke-direct {p0}, Luu;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->c(Luq;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Luu;->c:Lut;

    invoke-virtual {v0}, Lut;->a()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->c(Luq;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 200
    iget-object v2, p0, Luu;->b:Lug;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Luu;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->c(Luq;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Luu;->c:Lut;

    invoke-virtual {v0}, Lut;->b()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->c(Luq;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 209
    iget-object v1, p0, Luu;->b:Lug;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "goldfish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 157
    iget-object v1, p0, Luu;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->b(Luq;)LtX;

    move-result-object v0

    invoke-virtual {v0, p1}, LtX;->b(Landroid/app/Activity;)V

    .line 177
    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->b(Luq;)LtX;

    move-result-object v0

    invoke-virtual {v0}, LtX;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Luu;->b(Landroid/app/Activity;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1}, Luu;->a(Landroid/app/Activity;)V

    .line 171
    iget-object v0, p0, Luu;->a:Luq;

    invoke-static {v0}, Luq;->b(Luq;)LtX;

    move-result-object v0

    invoke-virtual {v0, p1}, LtX;->a(Landroid/app/Activity;)V

    .line 172
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method
