.class public Lcom/yik/yak/ui/activity/MainActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field c:Ljava/lang/Runnable;

.field private final d:LBl;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Z

.field private h:Z

.field private i:Landroid/os/Bundle;

.field private j:J

.field private k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

.field private l:Landroid/os/Handler;

.field private m:LBm;

.field private n:Lcom/yik/yak/ui/view/PromotedActionButtonView;

.field private o:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

.field private p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

.field private q:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 60
    new-instance v0, LBl;

    invoke-direct {v0, p0}, LBl;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->d:LBl;

    .line 62
    const-string v0, "BadgeUpdate"

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->e:Ljava/lang/String;

    .line 64
    new-instance v0, LAZ;

    invoke-direct {v0, p0}, LAZ;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->f:Landroid/content/BroadcastReceiver;

    .line 71
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 72
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->h:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->j:J

    .line 80
    new-instance v0, LBd;

    invoke-direct {v0, p0}, LBd;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->c:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:Landroid/os/Handler;

    .line 95
    new-instance v0, LBm;

    invoke-direct {v0, p0}, LBm;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->m:LBm;

    .line 841
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/MainActivity;J)J
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/yik/yak/ui/activity/MainActivity;->j:J

    return-wide p1
.end method

.method private a(LCU;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p1}, LCU;->c()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 484
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->o()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    invoke-static {p1}, LCU;->a(LCU;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 494
    :cond_1
    if-nez v0, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->i()V

    .line 496
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->finish()V

    .line 499
    :cond_2
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/MainActivity;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->n()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 606
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    :try_start_0
    check-cast v0, LBo;

    invoke-interface {v0, p1}, LBo;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 616
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    return p1
.end method

.method private b(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 473
    invoke-static {p1}, LCU;->a(I)LCU;

    move-result-object v0

    .line 474
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->r()V

    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->j:J

    .line 687
    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->q()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 619
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 620
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->n()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/yik/yak/ui/fragment/ContactUsFragment;

    if-nez v0, :cond_1

    .line 624
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LBa;

    invoke-direct {v1, p0, p1}, LBa;-><init>(Lcom/yik/yak/ui/activity/MainActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 634
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 635
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->n()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/yik/yak/ui/fragment/PeekFragment;

    if-nez v0, :cond_1

    .line 639
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAO;->c(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_1

    .line 642
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LBb;

    invoke-direct {v2, p0, v0}, LBb;-><init>(Lcom/yik/yak/ui/activity/MainActivity;Lcom/yik/yak/data/models/PeekLocation;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/MainActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    return v0
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/MainActivity;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->j:J

    return-wide v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 653
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 654
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 655
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v1, "activateMethod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v2, "activateMethod"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->b(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LHi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->c(Ljava/lang/String;)V

    .line 144
    invoke-static {}, LAa;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-static {}, LAa;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, LHa;->a(Z)V

    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->t(Z)V

    .line 149
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 150
    new-instance v1, LBf;

    invoke-direct {v1, p0}, LBf;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 160
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->setContentView(I)V

    .line 161
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    .line 162
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 163
    new-instance v0, Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    .line 164
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    .line 165
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 167
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    .line 168
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 169
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/PromotedActionButtonView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    .line 170
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    new-instance v1, LBg;

    invoke-direct {v1, p0}, LBg;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    new-instance v1, LBh;

    invoke-direct {v1, p0}, LBh;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 238
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    new-instance v1, LBi;

    invoke-direct {v1, p0}, LBi;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setOnTabReselectedListener(LGu;)V

    .line 246
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 247
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 332
    const-string v0, "isNewYakker"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    invoke-static {}, LAa;->F()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LAa;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->j()V

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const-string v1, "title"

    const v2, 0x7f080150

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "message"

    const v2, 0x7f08014f

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "okText"

    const v2, 0x7f08013b

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LAa;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private o()I
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method private p()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 522
    invoke-static {}, LAa;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-static {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    if-eqz v4, :cond_3

    .line 528
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v5, "yikyak"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0xfa0

    if-ne v0, v5, :cond_a

    .line 550
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0, p0}, LAg;->a(Landroid/content/Context;)V

    .line 551
    invoke-static {v2}, Lcom/yik/yak/YikYak;->a(I)V

    .line 552
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "yakId"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 553
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    if-eqz v0, :cond_6

    invoke-static {}, LAa;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, LAa;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_6

    move v0, v1

    .line 554
    :goto_2
    iget-object v6, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v7, "count"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 556
    invoke-static {v5}, LHi;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 557
    if-ne v6, v1, :cond_8

    if-nez v0, :cond_8

    .line 558
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    .line 559
    invoke-static {p0, v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Ljava/lang/String;)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 561
    iget-boolean v3, v0, Lcom/yik/yak/data/models/Yak;->HasError:Z

    if-nez v3, :cond_7

    .line 562
    const-string v2, "PushNotification"

    invoke-static {p0, v1, v0, v8, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/content/Context;ZLcom/yik/yak/data/models/Yak;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v2, "replyId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 564
    const-string v1, "replyId"

    iget-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v3, "replyId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    :cond_4
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 600
    :cond_5
    :goto_3
    invoke-direct {p0, v4}, Lcom/yik/yak/ui/activity/MainActivity;->a(Landroid/content/Intent;)V

    .line 601
    iput-object v8, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 532
    :sswitch_0
    const-string v6, "contact"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "peek"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "verify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    goto/16 :goto_1

    .line 534
    :pswitch_0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :pswitch_1
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    :pswitch_2
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 553
    goto/16 :goto_2

    .line 568
    :cond_7
    const-string v0, "The yak is no longer available."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 571
    :cond_8
    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_3

    .line 574
    :cond_9
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_3

    .line 576
    :cond_a
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0x1775

    if-ne v0, v5, :cond_b

    .line 577
    invoke-static {v2}, Lcom/yik/yak/YikYak;->a(I)V

    .line 578
    invoke-static {v2}, LAa;->k(Z)V

    .line 579
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    goto/16 :goto_3

    .line 580
    :cond_b
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0xfa1

    if-ne v0, v5, :cond_c

    .line 581
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/fragment/HomeFragment;

    .line 582
    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto/16 :goto_3

    .line 583
    :cond_c
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 587
    const-string v5, "\\s\\|\\s"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 588
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 591
    array-length v6, v0

    if-ne v6, v3, :cond_d

    .line 592
    const-string v3, "content"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :goto_4
    const/16 v0, 0x14

    invoke-virtual {p0, v5, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 594
    :cond_d
    const-string v1, "content"

    aget-object v0, v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        -0x30df7787 -> :sswitch_2
        0x34715b -> :sswitch_1
        0x38b72420 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->h:Z

    if-nez v0, :cond_1

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->h:Z

    .line 661
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move v0, v1

    .line 663
    :goto_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->o()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 665
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v2

    .line 667
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 671
    :cond_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->h:Z

    .line 673
    :cond_1
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 676
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 678
    return-void
.end method

.method private s()V
    .locals 5

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->n()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 750
    instance-of v1, v0, LBI;

    if-eqz v1, :cond_1

    .line 751
    const/4 v1, 0x3

    invoke-static {v1}, LAa;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/yik/yak/ui/fragment/HomeFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/yik/yak/ui/fragment/PeekFragment;

    if-eqz v1, :cond_2

    .line 753
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

    .line 754
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 755
    const-string v2, "title"

    const-string v3, "Rules"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v0, "align"

    const-string v2, "left"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v0, "okText"

    const-string v2, "Agree"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v0, "cancelText"

    const-string v2, "Disagree"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const/16 v0, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 766
    :cond_1
    :goto_0
    return-void

    .line 764
    :cond_2
    check-cast v0, LBI;

    invoke-interface {v0}, LBI;->g()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 683
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void
.end method

.method public a(LCU;I)V
    .locals 2

    .prologue
    .line 503
    invoke-static {p1}, LCU;->a(LCU;)I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->o:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(I)Landroid/widget/TextView;

    move-result-object v0

    .line 507
    if-lez p2, :cond_0

    .line 508
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(LCU;Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p1}, LCU;->c()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 460
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 461
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 462
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 463
    invoke-virtual {v2, v1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 464
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 466
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 381
    if-eqz p1, :cond_1

    .line 382
    instance-of v0, p1, LBr;

    if-eqz v0, :cond_1

    .line 383
    check-cast p1, LBr;

    .line 384
    invoke-interface {p1}, LBr;->d()I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonVisibility(I)V

    .line 387
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-interface {p1}, LBr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonText(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    new-instance v1, LBj;

    invoke-direct {v1, p0, p1}, LBj;-><init>(Lcom/yik/yak/ui/activity/MainActivity;LBr;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonToYakarma()V

    .line 405
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    new-instance v1, LBk;

    invoke-direct {v1, p0}, LBk;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 327
    invoke-static {}, LAa;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LAa;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 328
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    instance-of v1, p1, LBI;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 418
    check-cast v0, LBI;

    invoke-interface {v0}, LBI;->e()LGf;

    move-result-object v1

    .line 419
    check-cast p1, LBI;

    invoke-interface {p1}, LBI;->f()I

    move-result v0

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-virtual {v2, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(LGf;)V

    .line 425
    iget-object v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->n:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setBottomOffset(IZ)V

    .line 426
    return-void

    .line 421
    :cond_0
    sget-object v1, LGf;->a:LGf;

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 437
    instance-of v0, p1, LBn;

    if-eqz v0, :cond_0

    .line 438
    check-cast p1, LBn;

    invoke-interface {p1}, LBn;->a()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public d()LBm;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->m:LBm;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 356
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(J)V

    .line 357
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 360
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(J)V

    .line 361
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->o()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 370
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->p:Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonToYakarma()V

    .line 430
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    const-string v1, "KEY_FORCE_RESTART"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 770
    sparse-switch p1, :sswitch_data_0

    .line 819
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 822
    :cond_0
    :goto_1
    return-void

    .line 772
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 773
    invoke-static {v0}, LAa;->b(I)V

    .line 774
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->s()V

    goto :goto_1

    .line 778
    :sswitch_1
    if-ne p2, v1, :cond_1

    .line 779
    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LAa;->h(Ljava/lang/String;)V

    .line 780
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->k()V

    .line 781
    invoke-static {v1}, LAa;->n(Z)V

    goto :goto_1

    .line 783
    :cond_1
    invoke-static {v2}, LAa;->n(Z)V

    .line 784
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->moveTaskToBack(Z)Z

    .line 785
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->finish()V

    .line 787
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 794
    :sswitch_2
    const/16 v0, 0x1773

    if-ne p2, v0, :cond_2

    .line 795
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 796
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->c(I)V

    .line 797
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_1

    .line 800
    :cond_2
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z

    .line 801
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->j:J

    .line 802
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(I)V

    goto :goto_1

    .line 806
    :sswitch_3
    if-ne p2, v1, :cond_3

    .line 807
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, LHa;->b(I)V

    .line 808
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

    .line 809
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 810
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 811
    :cond_3
    if-ne p2, v0, :cond_4

    .line 812
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, LHa;->b(I)V

    .line 813
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/16 v1, 0xa

    invoke-static {v0, v1}, LHk;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, LAa;->a(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 815
    :cond_4
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, LHa;->b(I)V

    .line 816
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/16 v1, 0x1e

    invoke-static {v0, v1}, LHk;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, LAa;->a(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 770
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0x21 -> :sswitch_0
        0x23 -> :sswitch_1
        0x1770 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 710
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 711
    return-void
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 717
    if-eqz v1, :cond_0

    .line 719
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 720
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 728
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBasecampAction(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->k:Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/fragment/HomeFragment;

    .line 742
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/fragment/HomeFragment;->onClick(Landroid/view/View;)V

    .line 745
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 737
    :goto_0
    return-void

    .line 734
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->s()V

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x7f0d0074
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    .line 113
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->k()V

    .line 114
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->l()V

    .line 115
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->p()V

    .line 117
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->j()V

    .line 119
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->a()Z

    .line 121
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    new-instance v1, LBe;

    invoke-direct {v1, p0}, LBe;-><init>(Lcom/yik/yak/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, LAg;->a(LAi;)Z

    .line 133
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->m()V

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onDestroy()V

    .line 324
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->i:Landroid/os/Bundle;

    .line 281
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->p()V

    .line 282
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 692
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 701
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 694
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->q()V

    .line 696
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/MainActivity;->o()I

    move-result v1

    if-lez v1, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v1

    goto :goto_0

    .line 692
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

    .line 286
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 290
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 293
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_2

    .line 294
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, LAa;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LAa;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/MainActivity;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_1
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "BadgeUpdate"

    invoke-virtual {v0, v1}, LAO;->a(Ljava/lang/String;)V

    .line 309
    return-void

    :cond_1
    move v1, v2

    .line 295
    goto :goto_0

    .line 298
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, LAa;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LAa;->n()Ljava/lang/String;

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

    .line 302
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 299
    goto :goto_2
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onRestart()V

    .line 271
    invoke-static {}, LAN;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->b(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "IN_APP_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/MainActivity;->h:Z

    .line 259
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->h()V

    .line 260
    invoke-static {p0}, Lcom/adjust/sdk/Adjust;->onResume(Landroid/content/Context;)V

    .line 261
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "BadgeUpdate"

    iget-object v2, p0, Lcom/yik/yak/ui/activity/MainActivity;->d:LBl;

    invoke-virtual {v0, v1, v2}, LAO;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 262
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 263
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0, p0}, LAg;->a(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStart()V

    .line 252
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStop()V

    .line 314
    invoke-static {}, LAN;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->i()V

    .line 318
    :cond_0
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->f()V

    .line 319
    return-void
.end method
