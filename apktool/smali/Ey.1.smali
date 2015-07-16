.class public LEy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/yik/yak/ui/fragment/DeveloperFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 280
    iput-object p1, p0, LEy;->e:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    iput-object p2, p0, LEy;->b:Ljava/lang/String;

    iput-boolean p3, p0, LEy;->c:Z

    iput-boolean p4, p0, LEy;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEy;->e:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEy;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, LEy;->a:Landroid/os/Handler;

    new-instance v1, LEA;

    invoke-direct {v1, p0}, LEA;-><init>(LEy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method public a(LxJ;)V
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, LEy;->e:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LEy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 289
    :cond_0
    :try_start_0
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 296
    iget-object v1, p0, LEy;->a:Landroid/os/Handler;

    new-instance v2, LEz;

    invoke-direct {v2, p0, v0}, LEz;-><init>(LEy;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method
