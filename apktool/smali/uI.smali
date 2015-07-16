.class LuI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lut;


# instance fields
.field final synthetic a:LuE;

.field private final b:Lus;

.field private final c:LuH;


# direct methods
.method public constructor <init>(LuE;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, LuI;->a:LuE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lus;

    invoke-direct {v0, p0}, Lus;-><init>(Lut;)V

    iput-object v0, p0, LuI;->b:Lus;

    .line 180
    new-instance v0, LuH;

    invoke-direct {v0, p1}, LuH;-><init>(LuE;)V

    iput-object v0, p0, LuI;->c:LuH;

    .line 181
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, LuI;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->c(LuE;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, LuI;->c:LuH;

    invoke-virtual {v0}, LuH;->a()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->c(LuE;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 229
    iget-object v2, p0, LuI;->b:Lus;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, LuI;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->c(LuE;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, LuI;->c:LuH;

    invoke-virtual {v0}, LuH;->b()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->c(LuE;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 238
    iget-object v1, p0, LuI;->b:Lus;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "goldfish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    iget-object v1, p0, LuI;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->b(LuE;)Luj;

    move-result-object v0

    invoke-virtual {v0, p1}, Luj;->b(Landroid/app/Activity;)V

    .line 206
    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->b(LuE;)Luj;

    move-result-object v0

    invoke-virtual {v0}, Luj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, p1}, LuI;->b(Landroid/app/Activity;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1}, LuI;->a(Landroid/app/Activity;)V

    .line 200
    iget-object v0, p0, LuI;->a:LuE;

    invoke-static {v0}, LuE;->b(LuE;)Luj;

    move-result-object v0

    invoke-virtual {v0, p1}, Luj;->a(Landroid/app/Activity;)V

    .line 201
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
