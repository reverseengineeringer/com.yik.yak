.class public LBH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:LAk;

.field final synthetic c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;LAk;)V
    .locals 2

    .prologue
    .line 176
    iput-object p1, p0, LBH;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iput-object p2, p0, LBH;->b:LAk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LBH;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LBH;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, LBH;->a:Landroid/os/Handler;

    new-instance v1, LBJ;

    invoke-direct {v1, p0, p2}, LBJ;-><init>(LBH;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public a(Lxz;)V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    iget-object v0, p0, LBH;->a:Landroid/os/Handler;

    new-instance v1, LBI;

    invoke-direct {v1, p0}, LBI;-><init>(LBH;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method
