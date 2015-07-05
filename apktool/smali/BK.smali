.class public LBK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Lcom/yik/yak/data/models/YakkerLocation;

.field final synthetic d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;Lcom/yik/yak/data/models/YakkerLocation;)V
    .locals 2

    .prologue
    .line 279
    iput-object p1, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iput-object p2, p0, LBK;->c:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LBK;->a:Landroid/os/Handler;

    .line 281
    const/4 v0, 0x0

    iput v0, p0, LBK;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 341
    if-eqz p0, :cond_0

    iget-object v0, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0, p2}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Ljava/lang/Exception;)V

    .line 347
    iget-object v0, p0, LBK;->a:Landroid/os/Handler;

    new-instance v1, LBM;

    invoke-direct {v1, p0}, LBM;-><init>(LBK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    if-eqz p0, :cond_0

    iget-object v0, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 294
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    iget-object v1, p0, LBK;->a:Landroid/os/Handler;

    new-instance v2, LBL;

    invoke-direct {v2, p0, v0}, LBL;-><init>(LBK;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    iget-object v0, p0, LBK;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
