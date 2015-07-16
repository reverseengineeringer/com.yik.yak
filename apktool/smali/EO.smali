.class public LEO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Lcom/yik/yak/data/models/YakkerLocation;

.field final synthetic d:LAD;

.field final synthetic e:Lcom/yik/yak/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/HomeFragment;Lcom/yik/yak/data/models/YakkerLocation;LAD;)V
    .locals 2

    .prologue
    .line 460
    iput-object p1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iput-object p2, p0, LEO;->c:Lcom/yik/yak/data/models/YakkerLocation;

    iput-object p3, p0, LEO;->d:LAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEO;->a:Landroid/os/Handler;

    .line 462
    const/4 v0, 0x0

    iput v0, p0, LEO;->b:I

    return-void
.end method

.method static synthetic a(LEO;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0, p1}, LEO;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v1, LDX;->b:LDX;

    if-ne v0, v1, :cond_0

    .line 720
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, LEO;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, LEO;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 727
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-static {}, LAa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yikyak://peek/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yik/yak/data/models/PeekLocation;

    iget-object v1, v1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    .line 733
    :cond_0
    invoke-static {}, LAa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 735
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    const-string v1, "yikyak://verify/1234"

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->NavigationUrl:Ljava/lang/String;

    .line 738
    :cond_1
    return-void
.end method

.method static synthetic a(LEO;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0, p1}, LEO;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 696
    const-string v0, "isVerified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "isVerified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 701
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, LAa;->c(Z)V

    .line 704
    :cond_0
    const-string v0, "forceVerification"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    const-string v0, "forceVerification"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 706
    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, LAa;->j(Z)V

    .line 709
    if-ne v3, v1, :cond_3

    .line 710
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 715
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 701
    goto :goto_0

    :cond_2
    move v0, v2

    .line 706
    goto :goto_1

    :cond_3
    move v2, v1

    .line 715
    goto :goto_2
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0, p2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(LxJ;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p1}, LxJ;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 479
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

    .line 489
    iget-object v1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v2, LDX;->b:LDX;

    if-ne v1, v2, :cond_3

    .line 490
    iget-object v1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    .line 495
    :goto_1
    iget-object v1, p0, LEO;->a:Landroid/os/Handler;

    new-instance v2, LEP;

    invoke-direct {v2, p0, v0}, LEP;-><init>(LEO;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    iget-object v1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/lang/Exception;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 492
    :cond_3
    iget-object v1, p0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    goto :goto_1
.end method
