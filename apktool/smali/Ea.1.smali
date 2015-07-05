.class LEa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:LDZ;


# direct methods
.method constructor <init>(LDZ;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, LEa;->b:LDZ;

    iput-object p2, p0, LEa;->a:Lorg/json/JSONObject;

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

    .line 482
    .line 484
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->c:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 485
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    .line 486
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 487
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 488
    iput v9, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 490
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->d:LAq;

    invoke-virtual {v1}, LAq;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->d:LAq;

    invoke-virtual {v1}, LAq;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 496
    :goto_0
    iput v8, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 497
    iput v9, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 498
    const v1, 0x1869f

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 499
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 501
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    .line 502
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    sget-object v2, LDt;->a:LDt;

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    .line 503
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    .line 507
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 509
    :try_start_0
    iget-object v1, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 510
    iget-object v1, p0, LEa;->b:LDZ;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, v1, LDZ;->b:I

    .line 511
    if-eqz v0, :cond_8

    .line 513
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v1, LDt;->a:LDt;

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "bcEligible"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 515
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "bcEligible"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 516
    invoke-static {}, LzQ;->u()Z

    move-result v2

    .line 517
    invoke-static {}, LzQ;->v()Z

    move-result v3

    .line 518
    invoke-static {}, LzQ;->w()Z

    move-result v4

    .line 520
    invoke-static {v1}, LzQ;->h(Z)V

    .line 522
    new-instance v5, LAk;

    invoke-direct {v5}, LAk;-><init>()V

    .line 523
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, LAk;->a(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcLat"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcLat"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, LAk;->c(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcLong"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcLong"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v0}, LAk;->d(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcPeek"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v6, "bcPeek"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v0}, LAk;->b(Ljava/lang/String;)V

    .line 536
    invoke-static {v5}, LzQ;->a(LAk;)V

    .line 537
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v6, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    if-nez v4, :cond_6

    move v0, v9

    :goto_6
    iput-boolean v0, v6, Lcom/yik/yak/ui/fragment/HomeFragment;->H:Z

    .line 540
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v5}, LAk;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Unknown"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, LAk;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 541
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->i(Z)V

    .line 542
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->k(Z)V

    .line 543
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->j(Z)V

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->l(Z)V

    .line 545
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    :cond_0
    :goto_7
    new-instance v10, LAj;

    invoke-direct {v10}, LAj;-><init>()V

    move v6, v8

    .line 601
    :goto_8
    iget-object v0, p0, LEa;->b:LDZ;

    iget v0, v0, LDZ;->b:I

    if-ge v6, v0, :cond_14

    .line 602
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, LAj;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LEa;->b:LDZ;

    iget-object v2, v2, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v2, v2, Lcom/yik/yak/ui/fragment/HomeFragment;->d:Z

    iget-object v3, p0, LEa;->b:LDZ;

    iget-object v3, v3, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v3, v3, Lcom/yik/yak/ui/fragment/HomeFragment;->f:Z

    iget-object v4, p0, LEa;->b:LDZ;

    iget-object v4, v4, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v4, v4, Lcom/yik/yak/ui/fragment/HomeFragment;->f:Z

    iget-object v5, p0, LEa;->b:LDZ;

    iget-object v5, v5, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v5, v5, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 604
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_13

    .line 605
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    .line 493
    :cond_1
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    goto/16 :goto_0

    .line 523
    :cond_2
    :try_start_1
    const-string v0, ""

    goto/16 :goto_2

    .line 526
    :cond_3
    const-string v0, "0"

    goto/16 :goto_3

    .line 529
    :cond_4
    const-string v0, "0"

    goto/16 :goto_4

    .line 532
    :cond_5
    const-string v0, "0"

    goto/16 :goto_5

    :cond_6
    move v0, v8

    .line 537
    goto/16 :goto_6

    .line 546
    :cond_7
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    if-nez v3, :cond_e

    .line 547
    new-instance v1, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 548
    const/4 v0, -0x1

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 549
    const v0, 0x3b9ac9ff

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 553
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->H:Z

    if-eqz v0, :cond_b

    .line 554
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    const v0, 0x7f030054

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    move v0, v9

    .line 565
    :goto_a
    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v0, v2, :cond_d

    .line 567
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 631
    :catch_0
    move-exception v0

    .line 632
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 635
    :cond_8
    :goto_b
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "featuredLocations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 637
    :try_start_2
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Featured"

    const-string v2, "Featured"

    const/4 v3, 0x0

    const-string v4, "0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "featuredLocations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move v10, v8

    .line 640
    :goto_c
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_1b

    .line 641
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 642
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Featured"

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

    .line 643
    const-string v1, "photosEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 644
    const-string v1, "photosEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_19

    move v1, v9

    :goto_d
    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    .line 646
    :cond_9
    const-string v1, "linksEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 647
    const-string v1, "linksEnabled"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_1a

    move v1, v9

    :goto_e
    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitLinks:Z

    .line 649
    :cond_a
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 640
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_c

    .line 556
    :cond_b
    :try_start_3
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    if-eqz v0, :cond_c

    .line 557
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    .line 558
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    const v0, 0x7f030051

    iput v0, v1, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    move v0, v9

    goto/16 :goto_a

    .line 560
    :cond_c
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->H:Z

    if-nez v0, :cond_1e

    .line 561
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v8

    .line 562
    goto/16 :goto_a

    .line 569
    :cond_d
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 572
    :cond_e
    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 573
    const/4 v0, 0x0

    invoke-static {v0}, LzJ;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 575
    const/4 v1, -0x1

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 576
    const v1, 0x3b9ac9ff

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 577
    const v1, 0x7f030053

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    .line 579
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_f

    .line 580
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    :goto_f
    const/4 v0, 0x0

    invoke-static {v0}, LzJ;->b(I)V

    goto/16 :goto_7

    .line 582
    :cond_f
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 587
    :cond_10
    if-nez v1, :cond_0

    if-eqz v4, :cond_0

    .line 588
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bcEligible flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v3, "bcEligible"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGs;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 591
    :cond_11
    invoke-static {}, LzQ;->w()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 592
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Missing bcEligible flag"

    invoke-virtual {v0, v1}, LGs;->d(Ljava/lang/String;)V

    .line 594
    :cond_12
    const/4 v0, 0x0

    invoke-static {v0}, LzQ;->h(Z)V

    .line 595
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 607
    :cond_13
    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 611
    :cond_14
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->n()V

    .line 613
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "yakarma"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 614
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "yakarma"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_15

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 616
    invoke-static {v0}, LzQ;->c(Ljava/lang/String;)V

    .line 618
    :cond_15
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "photosEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 619
    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    if-eqz v0, :cond_17

    const-string v0, "bcPhotosEnabled"

    :goto_10
    iget-object v2, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v3, "photosEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, LAw;->b(Ljava/lang/String;Z)V

    .line 624
    :cond_16
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "linksEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 625
    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-boolean v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    if-eqz v0, :cond_18

    const-string v0, "bcLinksEnabled"

    :goto_11
    iget-object v2, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v3, "linksEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, LAw;->b(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 619
    :cond_17
    const-string v0, "photosEnabled"

    goto :goto_10

    .line 625
    :cond_18
    const-string v0, "linksEnabled"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_11

    :cond_19
    move v1, v8

    .line 644
    goto/16 :goto_d

    :cond_1a
    move v1, v8

    .line 647
    goto/16 :goto_e

    .line 651
    :catch_1
    move-exception v0

    .line 652
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 655
    :cond_1b
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

    .line 656
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    invoke-virtual {v0}, LAB;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 659
    :try_start_4
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Peek Near"

    const-string v2, "Peek Near"

    const/4 v3, 0x0

    const-string v4, "0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, LEa;->a:Lorg/json/JSONObject;

    const-string v1, "otherLocations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move v9, v8

    .line 662
    :goto_12
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_1c

    .line 663
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 664
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Peek Near"

    const-string v2, "location"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "canSubmit"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "peekID"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "canVote"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "canReply"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v12, "canReport"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 662
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_12

    .line 666
    :catch_2
    move-exception v0

    .line 667
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 672
    :cond_1c
    :try_start_5
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/HomeFragment;->q:Ljava/util/Comparator;

    iget-object v2, p0, LEa;->b:LDZ;

    iget-object v2, v2, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/HomeFragment;->q:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 674
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 675
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    invoke-virtual {v0, v11}, LAB;->a(Ljava/util/ArrayList;)V

    .line 678
    :cond_1d
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    .line 679
    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->h()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 684
    :goto_13
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/HomeFragment;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v8}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 685
    iget-object v0, p0, LEa;->b:LDZ;

    iget-object v0, v0, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->m()V

    .line 686
    invoke-static {}, LAE;->a()LAE;

    move-result-object v0

    iget-object v1, p0, LEa;->b:LDZ;

    iget-object v1, v1, LDZ;->e:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, LAE;->a(Landroid/app/Activity;)V

    .line 687
    return-void

    .line 680
    :catch_3
    move-exception v0

    .line 681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_1e
    move v0, v9

    goto/16 :goto_a

    :cond_1f
    move v0, v9

    goto/16 :goto_1
.end method
