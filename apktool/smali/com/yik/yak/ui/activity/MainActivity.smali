.class public Lcom/yik/yak/ui/activity/MainActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field b:Ljava/lang/Runnable;

.field private final c:LBb;

.field private final d:Ljava/lang/String;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Bundle;

.field private l:J

.field private m:LCG;

.field private n:Landroid/os/Handler;

.field private o:LuP;

.field private p:LBc;

.field private q:Lcom/yik/yak/ui/view/PromotedActionButtonView;

.field private r:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

.field private s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

.field private t:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 63
    new-instance v0, LBb;

    invoke-direct {v0, p0}, LBb;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->c:LBb;

    .line 65
    const-string v0, "BadgeUpdate"

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->d:Ljava/lang/String;

    .line 67
    new-instance v0, LAQ;

    invoke-direct {v0, p0}, LAQ;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->e:Landroid/content/BroadcastReceiver;

    .line 74
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->f:Z

    .line 75
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 76
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->h:Z

    .line 77
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Z

    .line 78
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->j:Z

    .line 80
    iput-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:J

    .line 86
    new-instance v0, LAT;

    invoke-direct {v0, p0}, LAT;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->b:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Landroid/os/Handler;

    .line 101
    iput-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:LuP;

    .line 103
    new-instance v0, LBc;

    invoke-direct {v0, p0}, LBc;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:LBc;

    .line 823
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/MainActivity;J)J
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:J

    return-wide p1
.end method

.method private a(LCH;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p1}, LCH;->c()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 480
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->m()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->m:LCG;

    invoke-static {p1}, LCH;->a(LCH;)I

    move-result v1

    invoke-virtual {v0, v1}, LCG;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 490
    :cond_1
    if-nez v0, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->i()V

    .line 492
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->finish()V

    .line 495
    :cond_2
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/MainActivity;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    return p1
.end method

.method private b(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 468
    invoke-static {p1}, LCH;->a(I)LCH;

    move-result-object v0

    .line 469
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCH;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/MainActivity;)LuP;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:LuP;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 579
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 580
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, LDJ;

    if-nez v0, :cond_1

    .line 584
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LAR;

    invoke-direct {v1, p0, p1}, LAR;-><init>(Lcom/yik/yak/ui/activity/MainActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:J

    .line 623
    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->p()V

    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->o()V

    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/MainActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    return v0
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/MainActivity;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:J

    return-wide v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 179
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->setContentView(I)V

    .line 180
    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    .line 181
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 182
    new-instance v0, LCG;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, LCG;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->m:LCG;

    .line 183
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    .line 184
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->m:LCG;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 185
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 186
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->r:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    .line 187
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->r:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 188
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/PromotedActionButtonView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    .line 189
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    new-instance v1, LAW;

    invoke-direct {v1, p0}, LAW;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->r:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    new-instance v1, LAX;

    invoke-direct {v1, p0}, LAX;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->r:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    new-instance v1, LAY;

    invoke-direct {v1, p0}, LAY;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setOnTabReselectedListener(LFM;)V

    .line 265
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 266
    return-void
.end method

.method private l()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private m()I
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 518
    if-eqz v3, :cond_1

    .line 519
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "yikyak"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xfa0

    if-ne v0, v3, :cond_7

    .line 533
    invoke-static {v2}, Lcom/yik/yak/YikYak;->a(I)V

    .line 534
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "yakId"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    if-eqz v0, :cond_4

    invoke-static {}, LzQ;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, LzQ;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    move v0, v1

    .line 536
    :goto_1
    iget-object v4, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v5, "count"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 538
    if-ne v4, v1, :cond_6

    if-nez v0, :cond_6

    .line 539
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    .line 540
    invoke-static {p0, v3}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Ljava/lang/String;)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 542
    iget-boolean v3, v0, Lcom/yik/yak/data/models/Yak;->HasError:Z

    if-nez v3, :cond_5

    .line 543
    const-string v2, "PushNotification"

    invoke-static {p0, v1, v0, v7, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/content/Context;ZLcom/yik/yak/data/models/Yak;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 551
    :goto_2
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0, p0}, LzV;->a(Landroid/content/Context;)V

    .line 574
    :cond_2
    :goto_3
    iput-object v7, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    .line 576
    :cond_3
    :goto_4
    return-void

    .line 523
    :pswitch_0
    const-string v5, "contact"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    .line 525
    :pswitch_1
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v0, v2

    .line 535
    goto :goto_1

    .line 545
    :cond_5
    const-string v0, "The yak is no longer available."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 548
    :cond_6
    invoke-virtual {p0, v6}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_2

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x1775

    if-ne v0, v3, :cond_8

    .line 553
    invoke-static {v2}, Lcom/yik/yak/YikYak;->a(I)V

    .line 554
    invoke-static {v2}, LzQ;->e(Z)V

    .line 555
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    goto :goto_3

    .line 556
    :cond_8
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 560
    const-string v3, "\\s\\|\\s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 561
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    array-length v4, v0

    if-ne v4, v6, :cond_9

    .line 565
    const-string v4, "content"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    :goto_5
    const/16 v0, 0x14

    invoke-virtual {p0, v3, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 567
    :cond_9
    const-string v1, "content"

    aget-object v0, v0, v2

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x38b72420
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Z

    if-nez v0, :cond_1

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Z

    .line 597
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move v0, v1

    .line 599
    :goto_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->m()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :catch_0
    move-exception v2

    .line 603
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 607
    :cond_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Z

    .line 609
    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 612
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 614
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 686
    instance-of v1, v0, LBy;

    if-eqz v1, :cond_1

    .line 687
    const/4 v1, 0x3

    invoke-static {v1}, LzQ;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/yik/yak/ui/fragment/HomeFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, LEv;

    if-eqz v1, :cond_2

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rules_rules"

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    const-string v2, "title"

    const-string v3, "Rules"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v0, "align"

    const-string v2, "left"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v0, "okText"

    const-string v2, "Agree"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v0, "cancelText"

    const-string v2, "Disagree"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const/16 v0, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 702
    :cond_1
    :goto_0
    return-void

    .line 700
    :cond_2
    check-cast v0, LBy;

    invoke-interface {v0}, LBy;->e()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 619
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    return-void
.end method

.method public a(LCH;I)V
    .locals 2

    .prologue
    .line 499
    invoke-static {p1}, LCH;->a(LCH;)I

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->r:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(I)Landroid/widget/TextView;

    move-result-object v0

    .line 503
    if-lez p2, :cond_0

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(LCH;Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 448
    invoke-virtual {p1}, LCH;->c()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCH;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 455
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 456
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 457
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 458
    invoke-virtual {v2, v1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 459
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 461
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    instance-of v0, p1, LBh;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 387
    check-cast v0, LBh;

    invoke-interface {v0}, LBh;->b()Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonText(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    new-instance v1, LAZ;

    invoke-direct {v1, p0, p1}, LAZ;-><init>(Lcom/yik/yak/ui/activity/MainActivity;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonToYakarma()V

    .line 400
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    new-instance v1, LBa;

    invoke-direct {v1, p0}, LBa;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 347
    invoke-static {}, LzQ;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LzQ;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 348
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 412
    instance-of v1, p1, LBy;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 413
    check-cast v0, LBy;

    invoke-interface {v0}, LBy;->c()LFx;

    move-result-object v1

    .line 414
    check-cast p1, LBy;

    invoke-interface {p1}, LBy;->d()I

    move-result v0

    .line 419
    :goto_0
    iget-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-virtual {v2, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(LFx;)V

    .line 420
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setBottomOffset(IZ)V

    .line 421
    return-void

    .line 416
    :cond_0
    sget-object v1, LFx;->a:LFx;

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->t:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 432
    instance-of v0, p1, LBd;

    if-eqz v0, :cond_0

    .line 433
    check-cast p1, LBd;

    invoke-interface {p1}, LBd;->a()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public d()LBc;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:LBc;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 360
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(J)V

    .line 361
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 364
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(J)V

    .line 365
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->m()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->s:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonToYakarma()V

    .line 425
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    const-string v1, "KEY_FORCE_RESTART"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 760
    sparse-switch p1, :sswitch_data_0

    .line 801
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 804
    :cond_0
    :goto_1
    :sswitch_0
    return-void

    .line 762
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 763
    invoke-static {v0}, LzQ;->b(I)V

    .line 764
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->q()V

    goto :goto_1

    .line 769
    :sswitch_2
    const/16 v0, 0x1773

    if-ne p2, v0, :cond_1

    .line 770
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 771
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->c(I)V

    .line 772
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_1

    .line 775
    :cond_1
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 776
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:J

    .line 777
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_1

    .line 788
    :sswitch_3
    if-ne p2, v1, :cond_2

    .line 789
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, LGs;->b(I)V

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 791
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 792
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 793
    :cond_2
    if-ne p2, v0, :cond_3

    .line 794
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, LGs;->b(I)V

    .line 795
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/16 v1, 0x1e

    invoke-static {v0, v1}, LGD;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, LzQ;->a(Ljava/util/Date;)V

    goto :goto_0

    .line 797
    :cond_3
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, LGs;->b(I)V

    .line 798
    invoke-static {}, LzQ;->k()V

    goto/16 :goto_0

    .line 760
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0x14 -> :sswitch_0
        0x21 -> :sswitch_1
        0x1770 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 646
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 647
    return-void
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_0

    .line 655
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 656
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 664
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBasecampAction(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->m:LCG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LCG;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/fragment/HomeFragment;

    .line 678
    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/fragment/HomeFragment;->onClick(Landroid/view/View;)V

    .line 681
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 673
    :goto_0
    return-void

    .line 670
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->q()V

    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x7f0d0073
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    .line 121
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->j()V

    .line 122
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->k()V

    .line 123
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->n()V

    .line 125
    const-string v0, "CheckPinning"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->q()V

    .line 127
    const-string v0, "CheckPinning"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "21484"

    const-string v2, "cb4977fb01bb2fa9f16c219f01b59817"

    invoke-static {v0, v1, v2}, LuP;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, LuP;->a()LuP;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:LuP;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "IN_APP_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LAU;

    invoke-direct {v1, p0}, LAU;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->a()Z

    .line 165
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    new-instance v1, LAV;

    invoke-direct {v1, p0}, LAV;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, LzV;->a(LzX;)Z

    .line 176
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onDestroy()V

    .line 342
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->f()V

    .line 343
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->d()V

    .line 344
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Landroid/os/Bundle;

    .line 301
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->n()V

    .line 302
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 628
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 637
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 640
    :cond_0
    :goto_0
    return v0

    .line 630
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->o()V

    .line 632
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->m()I

    move-result v1

    if-lez v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v1

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 307
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 309
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 312
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_2

    .line 313
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-static {}, LzQ;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LzQ;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_1
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    const-string v1, "BadgeUpdate"

    invoke-virtual {v0, v1}, LAB;->a(Ljava/lang/String;)V

    .line 328
    return-void

    :cond_1
    move v1, v2

    .line 314
    goto :goto_0

    .line 317
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, LzQ;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LzQ;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 318
    goto :goto_2
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onRestart()V

    .line 291
    invoke-static {}, LAA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGs;->b(Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Z

    .line 278
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:LuP;

    invoke-virtual {v0, p0}, LuP;->a(Landroid/app/Activity;)V

    .line 279
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:LuP;

    invoke-virtual {v0}, LuP;->c()V

    .line 280
    invoke-static {p0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->g()V

    .line 281
    invoke-static {p0}, Lcom/adjust/sdk/Adjust;->onResume(Landroid/content/Context;)V

    .line 282
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    const-string v1, "BadgeUpdate"

    iget-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->c:LBb;

    invoke-virtual {v0, v1, v2}, LAB;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 283
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 284
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0, p0}, LzV;->a(Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStart()V

    .line 271
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->e()V

    .line 272
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStop()V

    .line 333
    invoke-static {}, LAA;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->g()V

    .line 335
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->d()V

    .line 337
    :cond_0
    return-void
.end method
