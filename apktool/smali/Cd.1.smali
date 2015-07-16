.class public LCd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


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
    .line 314
    iput-object p1, p0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    iput-boolean p2, p0, LCd;->b:Z

    iput-object p3, p0, LCd;->c:Ljava/lang/String;

    iput-object p4, p0, LCd;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SendAYak;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LCd;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, LCd;->a:Landroid/os/Handler;

    new-instance v1, LCf;

    invoke-direct {v1, p0, p1, p2}, LCf;-><init>(LCd;LxD;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public a(LxJ;)V
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const-string v0, "SendYak.NotOk"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LHm;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :goto_0
    return-void

    .line 324
    :cond_0
    :try_start_0
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    iget-object v1, p0, LCd;->a:Landroid/os/Handler;

    new-instance v2, LCe;

    invoke-direct {v2, p0, v0}, LCe;-><init>(LCd;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method
