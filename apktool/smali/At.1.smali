.class LAt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Landroid/os/Handler$Callback;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:LAq;


# direct methods
.method constructor <init>(LAq;Landroid/os/Handler$Callback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 328
    iput-object p1, p0, LAt;->e:LAq;

    iput-object p2, p0, LAt;->c:Landroid/os/Handler$Callback;

    iput-object p3, p0, LAt;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LAt;->e:LAq;

    invoke-static {v1}, LAq;->b(LAq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LAt;->a:Landroid/os/Handler;

    .line 330
    const/4 v0, 0x0

    iput v0, p0, LAt;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 369
    iget-object v1, p0, LAt;->c:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 371
    iget-object v1, p0, LAt;->c:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 373
    :cond_0
    return-void
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 350
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, LAt;->d:Ljava/lang/String;

    invoke-static {v0}, LzQ;->a(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, LAt;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yik/yak/YikYak;->a(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 359
    :goto_1
    iget-object v0, p0, LAt;->c:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, LAt;->c:Landroid/os/Handler$Callback;

    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 363
    :cond_2
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->m()V

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 343
    iget-object v1, p0, LAt;->c:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_0

    .line 344
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 345
    iget-object v1, p0, LAt;->c:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 356
    :cond_3
    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 357
    const-string v0, ""

    invoke-static {v0}, LzQ;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
