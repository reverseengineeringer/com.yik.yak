.class public LEB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Lcom/yik/yak/ui/fragment/DeveloperFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V
    .locals 2

    .prologue
    .line 361
    iput-object p1, p0, LEB;->b:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEB;->b:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEB;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, LEB;->a:Landroid/os/Handler;

    new-instance v1, LED;

    invoke-direct {v1, p0}, LED;-><init>(LEB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public a(LxJ;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, LEB;->a:Landroid/os/Handler;

    new-instance v1, LEC;

    invoke-direct {v1, p0, p1}, LEC;-><init>(LEB;LxJ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method
