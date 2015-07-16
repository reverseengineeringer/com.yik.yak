.class public Lcom/yik/yak/ui/fragment/HomeFragment;
.super Lcom/yik/yak/ui/fragment/BaseYakFragment;
.source "SourceFile"

# interfaces
.implements LBI;
.implements LBo;


# instance fields
.field public I:Z

.field public J:Z

.field protected K:Z

.field protected L:Landroid/view/Menu;

.field protected M:LAx;

.field protected N:Landroid/widget/TextView;

.field protected O:Landroid/widget/TextView;

.field public P:Landroid/widget/LinearLayout;

.field private final Q:LEQ;

.field private final R:Ljava/lang/String;

.field private S:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const v0, 0x7f03004a

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;-><init>(I)V

    .line 68
    new-instance v0, LEQ;

    invoke-direct {v0, p0}, LEQ;-><init>(Lcom/yik/yak/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->Q:LEQ;

    .line 69
    const-string v0, "HomeFragment"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->R:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    .line 72
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->J:Z

    .line 73
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->K:Z

    .line 75
    const-string v0, "Home"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->S:Ljava/lang/String;

    .line 79
    sget-object v0, LAx;->a:LAx;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    .line 93
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0d012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0d012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0d012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    .line 118
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->S:Ljava/lang/String;

    return-object v0
.end method

.method public a(LAx;)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;Z)V

    .line 282
    return-void
.end method

.method public a(LAx;Z)V
    .locals 4

    .prologue
    const v3, 0x7f0b00f7

    const v2, 0x7f0b00e9

    .line 285
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_5

    .line 286
    :cond_0
    sget-object v0, LAx;->b:LAx;

    if-ne p1, v0, :cond_4

    .line 287
    invoke-static {}, LAa;->y()LAw;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, LAw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->S:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->S:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->S:Ljava/lang/String;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 296
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 306
    :goto_0
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    .line 307
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d()LBm;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    iput-object v1, v0, LBm;->a:LAx;

    .line 309
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    .line 322
    :goto_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 323
    return-void

    .line 299
    :cond_4
    const-string v0, "Home"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->S:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 319
    :cond_5
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto :goto_1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public a_()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->p()V

    .line 418
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->g()Ljava/lang/String;

    .line 420
    invoke-static {}, LAD;->a()LAD;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    .line 424
    iput-boolean v6, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->i:Z

    .line 426
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 427
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    sget-object v4, LAx;->b:LAx;

    if-ne v0, v4, :cond_1

    .line 430
    invoke-static {}, LAa;->y()LAw;

    move-result-object v0

    .line 431
    const-string v4, "lat"

    invoke-virtual {v0}, LAw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v4, "long"

    invoke-virtual {v0}, LAw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v4, LDX;->a:LDX;

    if-ne v0, v4, :cond_0

    .line 438
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v4, "bcPhotosEnabled"

    invoke-virtual {v0, v4, v6}, LAJ;->b(Ljava/lang/String;Z)V

    .line 439
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v4, "bcLinksEnabled"

    invoke-virtual {v0, v4, v6}, LAJ;->b(Ljava/lang/String;Z)V

    .line 442
    :cond_0
    const-string v4, "bc"

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    sget-object v5, LAx;->b:LAx;

    if-ne v0, v5, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v4, LDX;->b:LDX;

    if-ne v0, v4, :cond_3

    .line 446
    const-string v0, "hot"

    .line 451
    :goto_2
    iput-boolean v6, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    .line 453
    invoke-static {v0, v3, v2}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v3, LxF;

    invoke-direct {v3}, LxF;-><init>()V

    invoke-virtual {v3, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 459
    const/4 v3, 0x1

    invoke-static {v3}, LAj;->a(Z)Lxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 460
    new-instance v3, LEO;

    invoke-direct {v3, p0, v2, v1}, LEO;-><init>(Lcom/yik/yak/ui/fragment/HomeFragment;Lcom/yik/yak/data/models/YakkerLocation;LAD;)V

    invoke-virtual {v0, v3}, LwY;->a(Lxc;)V

    .line 750
    return-void

    .line 434
    :cond_1
    const-string v0, "lat"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "long"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 442
    :cond_2
    const-string v0, "0"

    goto :goto_1

    .line 448
    :cond_3
    const-string v0, "getMessages"

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 793
    invoke-static {}, LAa;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 803
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->y:LDX;

    sget-object v1, LDX;->b:LDX;

    if-ne v0, v1, :cond_2

    .line 804
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->B:LDd;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, LDd;->setData(Ljava/util/ArrayList;)V

    .line 805
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->B:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    .line 806
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->B:LDd;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 812
    :goto_1
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    sget-object v1, LAx;->b:LAx;

    if-ne v0, v1, :cond_1

    .line 797
    sget-object v0, LAx;->c:LAx;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;)V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->A:LDd;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, LDd;->setData(Ljava/util/ArrayList;)V

    .line 809
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->A:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    .line 810
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->A:LDd;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1
.end method

.method public c()V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->t:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://content.yikyakapi.net/refreshers/locate?latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&device=android&version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LAS;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, LAa;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LAa;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->P:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()LGf;
    .locals 1

    .prologue
    .line 764
    sget-object v0, LGf;->b:LGf;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->F:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 781
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->s()LAx;

    move-result-object v1

    sget-object v2, LAx;->b:LAx;

    if-ne v1, v2, :cond_0

    .line 782
    const-string v1, "isBasecamp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 787
    :goto_0
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 789
    return-void

    .line 784
    :cond_0
    const-string v1, "isBasecamp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->d()V

    .line 125
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d()LBm;

    move-result-object v0

    iget-object v0, v0, LBm;->a:LAx;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 365
    sparse-switch p1, :sswitch_data_0

    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 369
    :sswitch_0
    if-eq p2, v0, :cond_1

    const/16 v0, 0x7d1

    if-ne p2, v0, :cond_0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto :goto_0

    .line 376
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 378
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 380
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v0, "Rate Yik Yak"

    const-string v1, "https://play.google.com/store/apps/details?id=com.yik.yak"

    invoke-static {v0, v1}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v0

    .line 383
    sget-object v1, LCU;->d:LCU;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 388
    :sswitch_2
    if-ne p2, v0, :cond_0

    .line 389
    if-eqz p3, :cond_0

    .line 392
    const-string v0, "peekID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1, v0}, LAO;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, LAD;->a()LAD;

    move-result-object v1

    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    iget-object v0, v0, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, LAD;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto :goto_0

    .line 404
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 405
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->J:Z

    .line 406
    sget-object v0, LAx;->b:LAx;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;)V

    goto/16 :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x3ee -> :sswitch_2
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_0
        0xbb9 -> :sswitch_0
        0xdac -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 327
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 329
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 357
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onClick(Landroid/view/View;)V

    .line 360
    :goto_1
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    .line 331
    :sswitch_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    .line 332
    sget-object v0, LAx;->a:LAx;

    invoke-virtual {p0, v0, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;Z)V

    goto :goto_1

    .line 335
    :sswitch_1
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    .line 336
    sget-object v0, LAx;->a:LAx;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;)V

    .line 337
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Nearby"

    invoke-virtual {v0, v1}, LHa;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :sswitch_2
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->k:Z

    .line 341
    sget-object v0, LAx;->b:LAx;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAx;)V

    .line 342
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Basecamp"

    invoke-virtual {v0, v1}, LHa;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->t:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    const-string v1, "Source"

    const-string v2, "Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/16 v1, 0xdac

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 350
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->t:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    const-string v1, "title"

    const v2, 0x7f080087

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "url"

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, LAJ;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v2

    iget-object v2, v2, Lcom/yik/yak/data/models/Configuration;->basecampConfiguration:Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    iget-object v2, v2, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;->tutorialUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 329
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f0d012c -> :sswitch_1
        0x7f0d012d -> :sswitch_2
        0x7f0d0181 -> :sswitch_4
        0x7f0d0182 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 196
    const v0, 0x7f100006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:Landroid/view/Menu;

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(Landroid/view/View;)V

    .line 103
    sget-object v1, LAx;->a:LAx;

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    .line 104
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const-string v1, "MainFeed"

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    .line 111
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->c()V

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x1869f

    if-ne v1, v2, :cond_0

    .line 206
    new-instance v1, Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-direct {v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;-><init>()V

    .line 207
    sget-object v2, LCU;->a:LCU;

    invoke-virtual {p0, v2, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    .line 218
    :goto_0
    return v0

    .line 209
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x186a0

    if-ne v1, v2, :cond_1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 211
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->c()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x186a1

    if-ne v1, v2, :cond_2

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->getEnvironment(I)Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    .line 215
    invoke-static {}, LAM;->a()LAM;

    move-result-object v2

    invoke-virtual {v2, v1}, LAM;->a(Lcom/yik/yak/data/models/Environment;)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onPause()V

    .line 148
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 149
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "HomeFragment"

    invoke-virtual {v0, v1}, LAO;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onResume()V

    .line 135
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "HomeFragment"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->Q:LEQ;

    invoke-virtual {v0, v1, v2}, LAO;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LEN;

    invoke-direct {v1, p0}, LEN;-><init>(Lcom/yik/yak/ui/fragment/HomeFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method

.method public s()LAx;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LAx;

    return-object v0
.end method
