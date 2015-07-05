.class LEj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:LEf;


# direct methods
.method constructor <init>(LEf;)V
    .locals 2

    .prologue
    .line 311
    iput-object p1, p0, LEj;->b:LEf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEj;->b:LEf;

    invoke-virtual {v1}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEj;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    return-void
.end method

.method public a(Lxz;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, LEj;->a:Landroid/os/Handler;

    new-instance v1, LEk;

    invoke-direct {v1, p0}, LEk;-><init>(LEj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method
