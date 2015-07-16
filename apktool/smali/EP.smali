.class LEP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LEO;


# direct methods
.method constructor <init>(LEO;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, LEP;->b:LEO;

    iput-object p2, p0, LEP;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const v3, 0x3b9ac9ff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 498
    .line 500
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->c:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 501
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    .line 502
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 503
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 504
    iput v9, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 506
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->d:LAD;

    invoke-virtual {v1}, LAD;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->d:LAD;

    invoke-virtual {v1}, LAD;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 512
    :goto_0
    iput v8, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 513
    iput v9, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 514
    const v1, 0x1869f

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 515
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 517
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    .line 518
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    sget-object v2, LDX;->a:LDX;

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    .line 519
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    .line 523
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 526
    :try_start_0
    iget-object v1, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 527
    iget-object v1, p0, LEP;->b:LEO;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, v1, LEO;->b:I

    .line 528
    if-eqz v0, :cond_8

    .line 530
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v1, LDX;->a:LDX;

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "bcEligible"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 532
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "bcEligible"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 533
    invoke-static {}, LAa;->A()Z

    move-result v2

    .line 534
    invoke-static {}, LAa;->B()Z

    move-result v3

    .line 535
    invoke-static {}, LAa;->C()Z

    move-result v4

    .line 537
    invoke-static {v1}, LAa;->o(Z)V

    .line 539
    new-instance v5, LAw;

    invoke-direct {v5}, LAw;-><init>()V

    .line 540
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, LAw;->a(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcLat"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcLat"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, LAw;->c(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcLong"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcLong"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v0}, LAw;->d(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcPeek"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v6, "bcPeek"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v0}, LAw;->b(Ljava/lang/String;)V

    .line 553
    invoke-static {v5}, LAa;->a(LAw;)V

    .line 554
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v6, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    if-nez v4, :cond_6

    move v0, v9

    :goto_6
    iput-boolean v0, v6, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    .line 557
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v5}, LAw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Unknown"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, LAw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 558
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->p(Z)V

    .line 559
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->r(Z)V

    .line 560
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->q(Z)V

    .line 561
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->s(Z)V

    .line 562
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    :cond_0
    :goto_7
    new-instance v10, LAv;

    invoke-direct {v10}, LAv;-><init>()V

    move v6, v8

    .line 603
    :goto_8
    iget-object v0, p0, LEP;->b:LEO;

    iget v0, v0, LEO;->b:I

    if-ge v6, v0, :cond_12

    .line 604
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LEP;->b:LEO;

    iget-object v2, v2, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/HomeFragment;->e:Z

    iget-object v3, p0, LEP;->b:LEO;

    iget-object v3, v3, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v3, v3, Lcom/yik/yak/ui/fragment/HomeFragment;->g:Z

    iget-object v4, p0, LEP;->b:LEO;

    iget-object v4, v4, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v4, v4, Lcom/yik/yak/ui/fragment/HomeFragment;->g:Z

    iget-object v5, p0, LEP;->b:LEO;

    iget-object v5, v5, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v5, v5, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 606
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v2, LDX;->b:LDX;

    if-ne v1, v2, :cond_11

    .line 607
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    .line 509
    :cond_1
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    goto/16 :goto_0

    .line 540
    :cond_2
    :try_start_1
    const-string v0, ""

    goto/16 :goto_2

    .line 543
    :cond_3
    const-string v0, "0"

    goto/16 :goto_3

    .line 546
    :cond_4
    const-string v0, "0"

    goto/16 :goto_4

    .line 549
    :cond_5
    const-string v0, "0"

    goto/16 :goto_5

    :cond_6
    move v0, v8

    .line 554
    goto/16 :goto_6

    .line 563
    :cond_7
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    if-nez v3, :cond_e

    .line 564
    new-instance v1, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 565
    const/4 v0, -0x1

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 566
    const v0, 0x3b9ac9ff

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 570
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    if-eqz v0, :cond_b

    .line 571
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    const v0, 0x7f03005b

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    move v0, v9

    .line 582
    :goto_a
    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v2, LDX;->b:LDX;

    if-ne v0, v2, :cond_d

    .line 584
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 642
    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 646
    :cond_8
    :goto_b
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "featuredLocations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 648
    :try_start_2
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "featuredLocations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 649
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 650
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Explore"

    const-string v2, "Explore"

    const/4 v3, 0x0

    const-string v4, "0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v8

    .line 651
    :goto_c
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_1c

    .line 652
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 653
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Explore"

    const-string v2, "location"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "canSubmit"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "peekID"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "canVote"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "canReply"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "canReport"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 654
    const-string v1, "photosEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 655
    const-string v1, "photosEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_1a

    move v1, v9

    :goto_d
    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    .line 657
    :cond_9
    const-string v1, "linksEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 658
    const-string v1, "linksEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_1b

    move v1, v9

    :goto_e
    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitLinks:Z

    .line 660
    :cond_a
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 651
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_c

    .line 573
    :cond_b
    :try_start_3
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->J:Z

    if-eqz v0, :cond_c

    .line 574
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->J:Z

    .line 575
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    const v0, 0x7f030058

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    move v0, v9

    goto/16 :goto_a

    .line 577
    :cond_c
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    if-nez v0, :cond_20

    .line 578
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v8

    .line 579
    goto/16 :goto_a

    .line 586
    :cond_d
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 589
    :cond_e
    if-nez v1, :cond_0

    if-eqz v4, :cond_0

    .line 590
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bcEligible flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v3, "bcEligible"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 593
    :cond_f
    invoke-static {}, LAa;->C()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 594
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Missing bcEligible flag"

    invoke-virtual {v0, v1}, LHa;->d(Ljava/lang/String;)V

    .line 596
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, LAa;->o(Z)V

    .line 597
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 609
    :cond_11
    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 613
    :cond_12
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->r()V

    .line 615
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "yakarma"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 616
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "yakarma"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_13

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 618
    invoke-static {v0}, LAa;->d(Ljava/lang/String;)V

    .line 621
    :cond_13
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "photosEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 622
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    if-eqz v0, :cond_14

    const-string v0, "bcPhotosEnabled"

    :goto_f
    iget-object v2, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v3, "photosEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, LAJ;->b(Ljava/lang/String;Z)V

    .line 632
    :goto_10
    iget-object v0, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v1, "linksEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 633
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    if-eqz v0, :cond_17

    const-string v0, "bcLinksEnabled"

    :goto_11
    iget-object v2, p0, LEP;->a:Lorg/json/JSONObject;

    const-string v3, "linksEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, LAJ;->b(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 622
    :cond_14
    const-string v0, "photosEnabled"

    goto :goto_f

    .line 627
    :cond_15
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    if-eqz v0, :cond_16

    const-string v0, "bcLinksEnabled"

    :goto_12
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LAJ;->b(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_16
    const-string v0, "linksEnabled"

    goto :goto_12

    .line 633
    :cond_17
    const-string v0, "linksEnabled"

    goto :goto_11

    .line 637
    :cond_18
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    if-eqz v0, :cond_19

    const-string v0, "bcLinksEnabled"

    :goto_13
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LAJ;->b(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_19
    const-string v0, "linksEnabled"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_13

    :cond_1a
    move v1, v8

    .line 655
    goto/16 :goto_d

    :cond_1b
    move v1, v8

    .line 658
    goto/16 :goto_e

    .line 663
    :catch_1
    move-exception v0

    .line 664
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 667
    :cond_1c
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "My Peeks"

    const-string v2, "My Peeks"

    const-string v4, ""

    move v3, v8

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 671
    :cond_1d
    iget-object v0, p0, LEP;->b:LEO;

    invoke-static {v0, v11}, LEO;->a(LEO;Ljava/util/ArrayList;)V

    .line 674
    :try_start_4
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->r:Ljava/util/Comparator;

    iget-object v2, p0, LEP;->b:LEO;

    iget-object v2, v2, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/HomeFragment;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 676
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 677
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0, v11}, LAO;->a(Ljava/util/ArrayList;)V

    .line 680
    :cond_1e
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 685
    :goto_14
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v8}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 686
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v0, v0, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->q()V

    .line 688
    iget-object v0, p0, LEP;->b:LEO;

    iget-object v1, p0, LEP;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, LEO;->a(LEO;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 689
    invoke-static {}, LAR;->a()LAR;

    move-result-object v0

    iget-object v1, p0, LEP;->b:LEO;

    iget-object v1, v1, LEO;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, LAR;->a(Landroid/app/Activity;)V

    .line 691
    :cond_1f
    return-void

    .line 681
    :catch_2
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_20
    move v0, v9

    goto/16 :goto_a

    :cond_21
    move v0, v9

    goto/16 :goto_1
.end method
