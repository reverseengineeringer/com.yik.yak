.class public LDE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/yik/yak/data/models/Yak;

.field final synthetic e:Z

.field final synthetic f:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;ZLcom/yik/yak/data/models/Yak;Z)V
    .locals 2

    .prologue
    .line 633
    iput-object p1, p0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iput-boolean p2, p0, LDE;->c:Z

    iput-object p3, p0, LDE;->d:Lcom/yik/yak/data/models/Yak;

    iput-boolean p4, p0, LDE;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LDE;->a:Landroid/os/Handler;

    .line 635
    const/4 v0, 0x0

    iput v0, p0, LDE;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public a(Lxz;)V
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 642
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    iget-object v0, p0, LDE;->a:Landroid/os/Handler;

    new-instance v1, LDF;

    invoke-direct {v1, p0}, LDF;-><init>(LDE;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    goto :goto_0
.end method
