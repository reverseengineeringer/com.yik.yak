.class public LEW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Lcom/yik/yak/ui/fragment/MeFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/MeFragment;)V
    .locals 2

    .prologue
    .line 312
    iput-object p1, p0, LEW;->b:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEW;->b:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEW;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    return-void
.end method

.method public a(LxJ;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, LEW;->a:Landroid/os/Handler;

    new-instance v1, LEX;

    invoke-direct {v1, p0}, LEX;-><init>(LEW;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method
