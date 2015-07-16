.class LAG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Landroid/os/Handler$Callback;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:LAD;


# direct methods
.method constructor <init>(LAD;Landroid/os/Handler$Callback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 324
    iput-object p1, p0, LAG;->e:LAD;

    iput-object p2, p0, LAG;->c:Landroid/os/Handler$Callback;

    iput-object p3, p0, LAG;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LAG;->e:LAD;

    invoke-static {v1}, LAD;->b(LAD;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LAG;->a:Landroid/os/Handler;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, LAG;->b:I

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 365
    iget-object v1, p0, LAG;->c:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 367
    iget-object v1, p0, LAG;->c:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 369
    :cond_0
    return-void
.end method

.method public a(LxJ;)V
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    :try_start_0
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 346
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, LAG;->d:Ljava/lang/String;

    invoke-static {v0}, LAa;->b(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, LAG;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yik/yak/YikYak;->a(Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 355
    :goto_1
    iget-object v0, p0, LAG;->c:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, LAG;->c:Landroid/os/Handler$Callback;

    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 359
    :cond_2
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->q()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 339
    iget-object v1, p0, LAG;->c:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 341
    iget-object v1, p0, LAG;->c:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 352
    :cond_3
    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 353
    const-string v0, ""

    invoke-static {v0}, LAa;->b(Ljava/lang/String;)V

    goto :goto_1
.end method
