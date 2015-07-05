.class public LDZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Lcom/yik/yak/data/models/YakkerLocation;

.field final synthetic d:LAq;

.field final synthetic e:Lcom/yik/yak/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/HomeFragment;Lcom/yik/yak/data/models/YakkerLocation;LAq;)V
    .locals 2

    .prologue
    .line 445
    iput-object p1, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iput-object p2, p0, LDZ;->c:Lcom/yik/yak/data/models/YakkerLocation;

    iput-object p3, p0, LDZ;->d:LAq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LDZ;->a:Landroid/os/Handler;

    .line 447
    const/4 v0, 0x0

    iput v0, p0, LDZ;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0, p2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 464
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    iget-object v1, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_3

    .line 474
    iget-object v1, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    .line 479
    :goto_1
    iget-object v1, p0, LDZ;->a:Landroid/os/Handler;

    new-instance v2, LEa;

    invoke-direct {v2, p0, v0}, LEa;-><init>(LDZ;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    iget-object v1, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/lang/Exception;)V

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v1, p0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    goto :goto_1
.end method
