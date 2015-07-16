.class public LEr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Lcom/yik/yak/ui/fragment/ContactUsFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/ContactUsFragment;)V
    .locals 2

    .prologue
    .line 259
    iput-object p1, p0, LEr;->c:Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEr;->c:Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEr;->a:Landroid/os/Handler;

    .line 261
    const/4 v0, 0x0

    iput v0, p0, LEr;->b:I

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public a(LxJ;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
