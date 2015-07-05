.class public Lcom/yik/yak/ui/fragment/HomeFragment;
.super LDh;
.source "SourceFile"

# interfaces
.implements LBe;
.implements LBy;


# instance fields
.field public H:Z

.field public I:Z

.field protected J:Z

.field protected K:Landroid/view/Menu;

.field protected L:LAl;

.field private final M:LEb;

.field private final N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field public mBasecampTabs:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0118
    .end annotation
.end field

.field protected mTVBasecamp:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d011a
    .end annotation
.end field

.field protected mTVNearby:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0119
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    const v0, 0x7f030045

    invoke-direct {p0, v0}, LDh;-><init>(I)V

    .line 73
    new-instance v0, LEb;

    invoke-direct {v0, p0}, LEb;-><init>(Lcom/yik/yak/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LEb;

    .line 74
    const-string v0, "HomeFragment"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->N:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->H:Z

    .line 77
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    .line 78
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->J:Z

    .line 82
    sget-object v0, LAl;->a:LAl;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    .line 272
    const-string v0, "Home"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Ljava/lang/String;

    return-object v0
.end method

.method public a(LAl;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;Z)V

    .line 270
    return-void
.end method

.method public a(LAl;Z)V
    .locals 4

    .prologue
    const v3, 0x7f0b00f7

    const v2, 0x7f0b00e9

    .line 275
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    .line 276
    :cond_0
    sget-object v0, LAl;->b:LAl;

    if-ne p1, v0, :cond_3

    .line 277
    invoke-static {}, LzQ;->s()LAk;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, LAk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVNearby:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVNearby:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 281
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVBasecamp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVBasecamp:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 291
    :goto_0
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    .line 292
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d()LBc;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    iput-object v1, v0, LBc;->a:LAl;

    .line 294
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    .line 307
    :goto_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 308
    return-void

    .line 284
    :cond_3
    const-string v0, "Home"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->O:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVNearby:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVNearby:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVBasecamp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVBasecamp:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto :goto_1
.end method

.method public a_()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 401
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->l()V

    .line 402
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->g()Ljava/lang/String;

    .line 404
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 405
    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    .line 409
    iput-boolean v6, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->h:Z

    .line 411
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 412
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    sget-object v4, LAl;->b:LAl;

    if-ne v0, v4, :cond_1

    .line 415
    invoke-static {}, LzQ;->s()LAk;

    move-result-object v0

    .line 416
    const-string v4, "lat"

    invoke-virtual {v0}, LAk;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v4, "long"

    invoke-virtual {v0}, LAk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v4, LDt;->a:LDt;

    if-ne v0, v4, :cond_0

    .line 423
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v4, "bcPhotosEnabled"

    invoke-virtual {v0, v4, v6}, LAw;->b(Ljava/lang/String;Z)V

    .line 424
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v4, "bcLinksEnabled"

    invoke-virtual {v0, v4, v6}, LAw;->b(Ljava/lang/String;Z)V

    .line 427
    :cond_0
    const-string v4, "bc"

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    sget-object v5, LAl;->b:LAl;

    if-ne v0, v5, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v4, LDt;->b:LDt;

    if-ne v0, v4, :cond_3

    .line 431
    const-string v0, "hot"

    .line 436
    :goto_2
    iput-boolean v6, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->i:Z

    .line 438
    invoke-static {v0, v3, v2}, LzY;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v3, Lxv;

    invoke-direct {v3}, Lxv;-><init>()V

    invoke-virtual {v3, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 444
    const/4 v3, 0x1

    invoke-static {v3}, LzY;->a(Z)Lxo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 445
    new-instance v3, LDZ;

    invoke-direct {v3, p0, v2, v1}, LDZ;-><init>(Lcom/yik/yak/ui/fragment/HomeFragment;Lcom/yik/yak/data/models/YakkerLocation;LAq;)V

    invoke-virtual {v0, v3}, LwP;->a(LwT;)V

    .line 701
    return-void

    .line 419
    :cond_1
    const-string v0, "lat"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "long"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 427
    :cond_2
    const-string v0, "0"

    goto :goto_1

    .line 433
    :cond_3
    const-string v0, "getMessages"

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 744
    invoke-static {}, LzQ;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 754
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->x:LDt;

    sget-object v1, LDt;->b:LDt;

    if-ne v0, v1, :cond_2

    .line 755
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setData(Ljava/util/ArrayList;)V

    .line 756
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 757
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 763
    :goto_1
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    sget-object v1, LAl;->b:LAl;

    if-ne v0, v1, :cond_1

    .line 748
    sget-object v0, LAl;->c:LAl;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;)V

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setData(Ljava/util/ArrayList;)V

    .line 760
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 761
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1
.end method

.method public c()LFx;
    .locals 1

    .prologue
    .line 715
    sget-object v0, LFx;->b:LFx;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 724
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 729
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->q()LAl;

    move-result-object v1

    sget-object v2, LAl;->b:LAl;

    if-ne v1, v2, :cond_0

    .line 733
    const-string v1, "isBasecamp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    :goto_0
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 740
    return-void

    .line 735
    :cond_0
    const-string v1, "isBasecamp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public o()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

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

    invoke-static {v1, v0}, LAF;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, LDh;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->p()V

    .line 126
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d()LBc;

    move-result-object v0

    iget-object v0, v0, LBc;->a:LAl;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 349
    sparse-switch p1, :sswitch_data_0

    .line 395
    invoke-super {p0, p1, p2, p3}, LDh;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 353
    :sswitch_0
    if-eq p2, v0, :cond_1

    const/16 v0, 0x7d1

    if-ne p2, v0, :cond_0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto :goto_0

    .line 360
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 362
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 366
    :cond_2
    const-string v0, "Rate Yik Yak"

    const-string v1, "https://play.google.com/store/apps/details?id=com.yik.yak"

    invoke-static {v0, v1}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 367
    sget-object v1, LCH;->d:LCH;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 372
    :sswitch_2
    if-ne p2, v0, :cond_0

    .line 373
    if-eqz p3, :cond_0

    .line 376
    const-string v0, "peekID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-static {}, LAB;->a()LAB;

    move-result-object v1

    invoke-virtual {v1, v0}, LAB;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    invoke-static {v1}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v1

    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    iget-object v0, v0, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, LAq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    goto :goto_0

    .line 388
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 389
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->I:Z

    .line 390
    sget-object v0, LAl;->b:LAl;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;)V

    goto/16 :goto_0

    .line 349
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

    .line 312
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 314
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 341
    invoke-super {p0, p1}, LDh;->onClick(Landroid/view/View;)V

    .line 344
    :goto_1
    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    .line 316
    :sswitch_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    .line 317
    sget-object v0, LAl;->a:LAl;

    invoke-virtual {p0, v0, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;Z)V

    goto :goto_1

    .line 320
    :sswitch_1
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    .line 321
    sget-object v0, LAl;->a:LAl;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;)V

    .line 322
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Nearby"

    invoke-virtual {v0, v1}, LGs;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :sswitch_2
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->j:Z

    .line 326
    sget-object v0, LAl;->b:LAl;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a(LAl;)V

    .line 327
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Basecamp"

    invoke-virtual {v0, v1}, LGs;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 330
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    const/16 v1, 0xdac

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 334
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->s:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    const-string v1, "title"

    const v2, 0x7f080075

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "url"

    invoke-static {}, LAw;->a()LAw;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, LAw;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v2

    iget-object v2, v2, Lcom/yik/yak/data/models/Configuration;->basecampConfiguration:Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    iget-object v2, v2, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;->tutorialUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f0d0119 -> :sswitch_1
        0x7f0d011a -> :sswitch_2
        0x7f0d016c -> :sswitch_4
        0x7f0d016d -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 190
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->K:Landroid/view/Menu;

    .line 192
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, LDh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 110
    sget-object v1, LAl;->a:LAl;

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    .line 111
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVNearby:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mTVBasecamp:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const-string v1, "MainFeed"

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->l:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->a_()V

    .line 118
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->o()V

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x186a0

    if-ne v1, v2, :cond_0

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 201
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->o()V

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x186a1

    if-ne v1, v2, :cond_1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->getEnvironment(I)Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    .line 205
    invoke-static {}, LAz;->a()LAz;

    move-result-object v2

    invoke-virtual {v2, v1}, LAz;->a(Lcom/yik/yak/data/models/Environment;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-super {p0, p1}, LDh;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, LDh;->onPause()V

    .line 142
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 143
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    const-string v1, "HomeFragment"

    invoke-virtual {v0, v1}, LAB;->a(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, LDh;->onResume()V

    .line 136
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    const-string v1, "HomeFragment"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->M:LEb;

    invoke-virtual {v0, v1, v2}, LAB;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 137
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, LzQ;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LzQ;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->mBasecampTabs:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public q()LAl;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/HomeFragment;->L:LAl;

    return-object v0
.end method
