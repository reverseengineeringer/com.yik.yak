.class public LEd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;Z)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iput-boolean p2, p0, LEd;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    new-instance v1, LEg;

    invoke-direct {v1, p0}, LEg;-><init>(LEd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(LxJ;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V

    goto :goto_0

    .line 457
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

    .line 467
    iget-object v1, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    new-instance v2, LEe;

    invoke-direct {v2, p0, v0}, LEe;-><init>(LEd;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    iget-object v0, p0, LEd;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V

    goto :goto_0
.end method
