.class public LBK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:LAw;

.field final synthetic c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;LAw;)V
    .locals 2

    .prologue
    .line 178
    iput-object p1, p0, LBK;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iput-object p2, p0, LBK;->b:LAw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LBK;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LBK;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, LBK;->a:Landroid/os/Handler;

    new-instance v1, LBM;

    invoke-direct {v1, p0, p2}, LBM;-><init>(LBK;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public a(LxJ;)V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 186
    :cond_0
    :try_start_0
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    iget-object v0, p0, LBK;->a:Landroid/os/Handler;

    new-instance v1, LBL;

    invoke-direct {v1, p0}, LBL;-><init>(LBK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method
