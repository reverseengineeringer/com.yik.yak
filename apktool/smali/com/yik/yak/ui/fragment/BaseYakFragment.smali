.class public abstract Lcom/yik/yak/ui/fragment/BaseYakFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:LDd;

.field public B:LDd;

.field public C:Landroid/widget/ImageView;

.field public D:Landroid/widget/ImageView;

.field protected E:Landroid/widget/LinearLayout;

.field public F:Landroid/widget/LinearLayout;

.field public G:Lcom/yik/yak/ui/view/RefreshListView;

.field public H:Landroid/view/View;

.field public c:Z

.field protected d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field protected i:Z

.field public j:Z

.field public k:Z

.field protected l:I

.field protected m:Ljava/lang/String;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Landroid/content/BroadcastReceiver;

.field protected q:Landroid/os/Bundle;

.field public r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroid/content/Context;

.field protected u:I

.field public v:Landroid/view/animation/TranslateAnimation;

.field public w:Landroid/view/animation/TranslateAnimation;

.field protected x:Landroid/view/animation/Animation$AnimationListener;

.field public y:LDX;

.field protected z:LDX;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->c:Z

    .line 50
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->d:Z

    .line 51
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->e:Z

    .line 52
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->f:Z

    .line 53
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->g:Z

    .line 54
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h:Z

    .line 55
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->i:Z

    .line 56
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->j:Z

    .line 57
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->k:Z

    .line 59
    iput v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->l:I

    .line 64
    new-instance v0, LDM;

    invoke-direct {v0, p0}, LDM;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->p:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    .line 72
    new-instance v0, LDP;

    invoke-direct {v0, p0}, LDP;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->r:Ljava/util/Comparator;

    .line 79
    new-instance v0, LDQ;

    invoke-direct {v0, p0}, LDQ;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->s:Ljava/util/Comparator;

    .line 91
    new-instance v0, LDR;

    invoke-direct {v0, p0}, LDR;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->x:Landroid/view/animation/Animation$AnimationListener;

    .line 114
    sget-object v0, LDX;->a:LDX;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 115
    sget-object v0, LDX;->a:LDX;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->z:LDX;

    .line 120
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->C:Landroid/widget/ImageView;

    .line 121
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->D:Landroid/widget/ImageView;

    .line 123
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->E:Landroid/widget/LinearLayout;

    .line 135
    const v0, 0x7f030054

    iput v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->u:I

    .line 136
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->c:Z

    .line 50
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->d:Z

    .line 51
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->e:Z

    .line 52
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->f:Z

    .line 53
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->g:Z

    .line 54
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h:Z

    .line 55
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->i:Z

    .line 56
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->j:Z

    .line 57
    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->k:Z

    .line 59
    iput v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->l:I

    .line 64
    new-instance v0, LDM;

    invoke-direct {v0, p0}, LDM;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->p:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    .line 72
    new-instance v0, LDP;

    invoke-direct {v0, p0}, LDP;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->r:Ljava/util/Comparator;

    .line 79
    new-instance v0, LDQ;

    invoke-direct {v0, p0}, LDQ;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->s:Ljava/util/Comparator;

    .line 91
    new-instance v0, LDR;

    invoke-direct {v0, p0}, LDR;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->x:Landroid/view/animation/Animation$AnimationListener;

    .line 114
    sget-object v0, LDX;->a:LDX;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 115
    sget-object v0, LDX;->a:LDX;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->z:LDX;

    .line 120
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->C:Landroid/widget/ImageView;

    .line 121
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->D:Landroid/widget/ImageView;

    .line 123
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->E:Landroid/widget/LinearLayout;

    .line 139
    iput p1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->u:I

    .line 140
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/BaseYakFragment;Lcom/yik/yak/data/models/Yak;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->b(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method private b(Lcom/yik/yak/data/models/Yak;)V
    .locals 2

    .prologue
    .line 534
    :try_start_0
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a(Lcom/yik/yak/data/models/Yak;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->u:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(LDX;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 173
    return-void
.end method

.method public a(Lcom/yik/yak/data/models/Yak;)V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->d:Z

    iget-boolean v2, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->m:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/content/Context;ZLcom/yik/yak/data/models/Yak;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method

.method protected a(Lcom/yik/yak/ui/view/RefreshListView;)V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/yik/yak/ui/view/RefreshListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 353
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 224
    new-instance v1, LDS;

    invoke-direct {v1, p0, p1}, LDS;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    sget-object v1, LDX;->b:LDX;

    if-ne v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->B:LDd;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LDd;)V

    .line 188
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->B:LDd;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, LDd;->setData(Ljava/util/ArrayList;)V

    .line 189
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->B:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 199
    return-void

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LDd;)V

    .line 194
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, LDd;->setData(Ljava/util/ArrayList;)V

    .line 195
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public abstract a_()V
.end method

.method protected b(Lcom/yik/yak/ui/view/RefreshListView;)V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 357
    return-void
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    .line 156
    new-instance v0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->B:LDd;

    .line 157
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public m()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    sget-object v1, LDX;->b:LDX;

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public n()V
    .locals 3

    .prologue
    const v2, 0x7f020174

    const/4 v1, 0x1

    .line 283
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, LAS;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 287
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAS;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAS;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 291
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-static {}, LAS;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAnimationBackgroundColor(I)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 295
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(I)V

    .line 296
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(I)V

    goto :goto_0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    sget-object v1, LDX;->a:LDX;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    sget-object v1, LDX;->b:LDX;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->b()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->a()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 556
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 558
    if-nez p2, :cond_0

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 564
    :pswitch_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a_()V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    .line 363
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->t:Landroid/content/Context;

    .line 365
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->l:I

    .line 367
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->setHasOptionsMenu(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    .line 371
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->d:Z

    .line 373
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    const-string v1, "canVote"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->e:Z

    .line 374
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    const-string v1, "canReply"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->f:Z

    .line 375
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q:Landroid/os/Bundle;

    const-string v1, "canReport"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->g:Z

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->F:Landroid/widget/LinearLayout;

    .line 380
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/RefreshListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    .line 381
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a(Lcom/yik/yak/ui/view/RefreshListView;)V

    .line 383
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    new-instance v1, LDT;

    invoke-direct {v1, p0}, LDT;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setOnRefreshListener(LFE;)V

    .line 392
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->l:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->w:Landroid/view/animation/TranslateAnimation;

    .line 393
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->w:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->w:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 395
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->w:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->x:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 397
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->l:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->v:Landroid/view/animation/TranslateAnimation;

    .line 398
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->v:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 399
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->v:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 400
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->v:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->x:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 402
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->b(Lcom/yik/yak/ui/view/RefreshListView;)V

    .line 404
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    new-instance v1, LDU;

    invoke-direct {v1, p0}, LDU;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 447
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->k()V

    .line 448
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    invoke-virtual {v0, v4}, LDd;->setContextMenuEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->B:LDd;

    invoke-virtual {v0, v4}, LDd;->setContextMenuEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->B:LDd;

    new-instance v1, LDV;

    invoke-direct {v1, p0}, LDV;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    invoke-virtual {v0, v1}, LDd;->setOnItemClickListener(LDf;)V

    .line 458
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->A:LDd;

    new-instance v1, LDW;

    invoke-direct {v1, p0}, LDW;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    invoke-virtual {v0, v1}, LDd;->setOnItemClickListener(LDf;)V

    .line 465
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->C:Landroid/widget/ImageView;

    .line 466
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->E:Landroid/widget/LinearLayout;

    .line 467
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->E:Landroid/widget/LinearLayout;

    new-instance v1, LDN;

    invoke-direct {v1, p0}, LDN;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->D:Landroid/widget/ImageView;

    .line 495
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 496
    new-instance v1, LDO;

    invoke-direct {v1, p0}, LDO;-><init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n()V

    .line 525
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 550
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onPause()V

    .line 551
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 552
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 544
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onResume()V

    .line 545
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "REFRESH_ASSET_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    return-void
.end method

.method protected p()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 315
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 318
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 319
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 320
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 322
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 323
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 330
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o()V

    .line 332
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 336
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 338
    iput v1, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 339
    iput v1, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 340
    const v1, 0x7f030064

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    .line 341
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    sget-object v2, LDX;->b:LDX;

    if-ne v1, v2, :cond_1

    .line 342
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
