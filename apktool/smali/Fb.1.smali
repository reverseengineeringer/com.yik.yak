.class public LFb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/MyRepliesFragment;)V
    .locals 2

    .prologue
    .line 80
    iput-object p1, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LFb;->a:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, LFb;->b:I

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0, p2}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(LxJ;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 98
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v1

    invoke-virtual {v1}, LxM;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v1, p0, LFb;->a:Landroid/os/Handler;

    new-instance v2, LFc;

    invoke-direct {v2, p0, v0}, LFc;-><init>(LFb;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    iget-object v0, p0, LFb;->c:Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
