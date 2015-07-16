.class public LCh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 458
    iput-object p1, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    iput-object p2, p0, LCh;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SendAYak;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LCh;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, LCh;->a:Landroid/os/Handler;

    new-instance v1, LCi;

    invoke-direct {v1, p0, p2}, LCi;-><init>(LCh;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void
.end method

.method public a(LxJ;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, v4, v0}, LCh;->a(LxD;Ljava/io/IOException;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    :try_start_0
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 479
    iget-object v1, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    new-instance v2, LCm;

    iget-object v3, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v2, v3, v4}, LCm;-><init>(Lcom/yik/yak/ui/activity/SendAYak;LBR;)V

    invoke-static {v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;LCm;)LCm;

    .line 480
    iget-object v1, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->n(Lcom/yik/yak/ui/activity/SendAYak;)LCm;

    move-result-object v1

    iget-object v2, p0, LCh;->b:Ljava/lang/String;

    iget-object v3, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/SendAYak;->m(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, LCm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->n(Lcom/yik/yak/ui/activity/SendAYak;)LCm;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, LCm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 474
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, v4, v0}, LCh;->a(LxD;Ljava/io/IOException;)V

    goto :goto_0
.end method
