.class public LDJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;)V
    .locals 2

    .prologue
    .line 94
    iput-object p1, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LDJ;->a:Landroid/os/Handler;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, LDJ;->b:I

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0, p2}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(Ljava/lang/Exception;)V

    .line 160
    return-void
.end method

.method public a(LxJ;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 111
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v2

    invoke-virtual {v2}, LxM;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_1
    iget-object v1, p0, LDJ;->a:Landroid/os/Handler;

    new-instance v2, LDK;

    invoke-direct {v2, p0, v0}, LDK;-><init>(LDJ;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    iget-object v0, p0, LDJ;->c:Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
