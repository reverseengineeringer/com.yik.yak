.class public LBY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    iput-object p1, p0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    iput-boolean p2, p0, LBY;->b:Z

    iput-object p3, p0, LBY;->c:Ljava/lang/String;

    iput-object p4, p0, LBY;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SendAYak;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LBY;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, LBY;->a:Landroid/os/Handler;

    new-instance v1, LCa;

    invoke-direct {v1, p0, p1, p2}, LCa;-><init>(LBY;Lxt;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method public a(Lxz;)V
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const-string v0, "SendYak.NotOk"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LGF;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :goto_0
    return-void

    .line 304
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    iget-object v1, p0, LBY;->a:Landroid/os/Handler;

    new-instance v2, LBZ;

    invoke-direct {v2, p0, v0}, LBZ;-><init>(LBY;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0
.end method
