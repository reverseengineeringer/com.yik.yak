.class public abstract LDh;
.super LDf;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

.field protected B:Landroid/widget/ImageView;

.field protected C:Landroid/widget/ImageView;

.field protected D:Landroid/widget/LinearLayout;

.field public E:Landroid/widget/LinearLayout;

.field public F:Lcom/yik/yak/ui/view/RefreshListView;

.field protected G:Landroid/view/View;

.field public b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field protected k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

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

.field protected o:Landroid/content/BroadcastReceiver;

.field protected p:Landroid/os/Bundle;

.field protected q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field protected r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field public s:Landroid/content/Context;

.field protected t:I

.field protected u:Landroid/view/animation/TranslateAnimation;

.field protected v:Landroid/view/animation/TranslateAnimation;

.field protected w:Landroid/view/animation/Animation$AnimationListener;

.field public x:LDt;

.field protected y:LDt;

.field public z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, LDf;-><init>()V

    .line 48
    iput-boolean v0, p0, LDh;->b:Z

    .line 49
    iput-boolean v1, p0, LDh;->c:Z

    .line 50
    iput-boolean v1, p0, LDh;->d:Z

    .line 51
    iput-boolean v1, p0, LDh;->e:Z

    .line 52
    iput-boolean v1, p0, LDh;->f:Z

    .line 53
    iput-boolean v0, p0, LDh;->g:Z

    .line 54
    iput-boolean v0, p0, LDh;->h:Z

    .line 55
    iput-boolean v0, p0, LDh;->i:Z

    .line 56
    iput-boolean v0, p0, LDh;->j:Z

    .line 58
    iput v0, p0, LDh;->k:I

    .line 63
    new-instance v0, LDi;

    invoke-direct {v0, p0}, LDi;-><init>(LDh;)V

    iput-object v0, p0, LDh;->o:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object v2, p0, LDh;->p:Landroid/os/Bundle;

    .line 71
    new-instance v0, LDl;

    invoke-direct {v0, p0}, LDl;-><init>(LDh;)V

    iput-object v0, p0, LDh;->q:Ljava/util/Comparator;

    .line 78
    new-instance v0, LDm;

    invoke-direct {v0, p0}, LDm;-><init>(LDh;)V

    iput-object v0, p0, LDh;->r:Ljava/util/Comparator;

    .line 90
    new-instance v0, LDn;

    invoke-direct {v0, p0}, LDn;-><init>(LDh;)V

    iput-object v0, p0, LDh;->w:Landroid/view/animation/Animation$AnimationListener;

    .line 113
    sget-object v0, LDt;->a:LDt;

    iput-object v0, p0, LDh;->x:LDt;

    .line 114
    sget-object v0, LDt;->a:LDt;

    iput-object v0, p0, LDh;->y:LDt;

    .line 119
    iput-object v2, p0, LDh;->B:Landroid/widget/ImageView;

    .line 120
    iput-object v2, p0, LDh;->C:Landroid/widget/ImageView;

    .line 122
    iput-object v2, p0, LDh;->D:Landroid/widget/LinearLayout;

    .line 138
    iput p1, p0, LDh;->t:I

    .line 139
    return-void
.end method


# virtual methods
.method public a(LDt;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, LDh;->x:LDt;

    .line 167
    return-void
.end method

.method public a(Lcom/yik/yak/data/models/Yak;)V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, LDh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, LDh;->c:Z

    iget-boolean v2, p0, LDh;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, LDh;->l:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/content/Context;ZLcom/yik/yak/data/models/Yak;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, LDh;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, LDh;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LDh;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    new-instance v1, LDo;

    invoke-direct {v1, p0, p1}, LDo;-><init>(LDh;Ljava/lang/Exception;)V

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

    .line 170
    iget-object v0, p0, LDh;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, LDh;->m:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    :cond_0
    iget-object v0, p0, LDh;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LDh;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 174
    iget-object v0, p0, LDh;->n:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    :cond_1
    iget-object v0, p0, LDh;->x:LDt;

    sget-object v1, LDt;->b:LDt;

    if-ne v0, v1, :cond_2

    .line 178
    iget-object v0, p0, LDh;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, LDh;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, LDh;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LCQ;)V

    .line 181
    iget-object v0, p0, LDh;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, LDh;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setData(Ljava/util/ArrayList;)V

    .line 182
    iget-object v0, p0, LDh;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 191
    :goto_0
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 192
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, LDh;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, LDh;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LCQ;)V

    .line 187
    iget-object v0, p0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setData(Ljava/util/ArrayList;)V

    .line 188
    iget-object v0, p0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public abstract a_()V
.end method

.method public h()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected i()Ljava/util/List;
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
    .line 203
    iget-object v0, p0, LDh;->x:LDt;

    sget-object v1, LDt;->b:LDt;

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, LDh;->n:Ljava/util/ArrayList;

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LDh;->m:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected j()V
    .locals 3

    .prologue
    const v2, 0x7f020168

    const/4 v1, 0x1

    .line 276
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, LAF;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 280
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAF;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAF;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 284
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-static {}, LAF;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAnimationBackgroundColor(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 288
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(I)V

    .line 289
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(I)V

    goto :goto_0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, LDh;->x:LDt;

    sget-object v1, LDt;->a:LDt;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LDh;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LDh;->x:LDt;

    sget-object v1, LDt;->b:LDt;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LDh;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LDh;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 301
    :cond_1
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->b()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->a()V

    goto :goto_0
.end method

.method public l()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 308
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 311
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 312
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 313
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 315
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 316
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 323
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, LDh;->k()V

    .line 325
    return-void
.end method

.method protected n()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 329
    invoke-virtual {p0}, LDh;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 330
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 331
    iput v1, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 332
    iput v1, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 333
    const v1, 0x7f03005c

    iput v1, v0, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    .line 334
    iget-object v1, p0, LDh;->x:LDt;

    sget-object v2, LDt;->b:LDt;

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v1, p0, LDh;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 534
    invoke-super {p0, p1, p2, p3}, LDf;->onActivityResult(IILandroid/content/Intent;)V

    .line 536
    if-nez p2, :cond_0

    .line 545
    :goto_0
    return-void

    .line 540
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    invoke-virtual {p0}, LDh;->a_()V

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 346
    iget v0, p0, LDh;->t:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LDh;->G:Landroid/view/View;

    .line 348
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LDh;->s:Landroid/content/Context;

    .line 350
    invoke-virtual {p0}, LDh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, LDh;->k:I

    .line 352
    invoke-virtual {p0, v2}, LDh;->setHasOptionsMenu(Z)V

    .line 354
    invoke-virtual {p0}, LDh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, LDh;->p:Landroid/os/Bundle;

    .line 356
    iget-object v0, p0, LDh;->p:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, LDh;->p:Landroid/os/Bundle;

    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LDh;->c:Z

    .line 358
    iget-object v0, p0, LDh;->p:Landroid/os/Bundle;

    const-string v1, "canVote"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LDh;->d:Z

    .line 359
    iget-object v0, p0, LDh;->p:Landroid/os/Bundle;

    const-string v1, "canReply"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LDh;->e:Z

    .line 360
    iget-object v0, p0, LDh;->p:Landroid/os/Bundle;

    const-string v1, "canReport"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LDh;->f:Z

    .line 363
    :cond_0
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LDh;->E:Landroid/widget/LinearLayout;

    .line 365
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/RefreshListView;

    iput-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    .line 367
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    new-instance v1, LDp;

    invoke-direct {v1, p0}, LDp;-><init>(LDh;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setOnRefreshListener(LEY;)V

    .line 376
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, LDh;->k:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, LDh;->v:Landroid/view/animation/TranslateAnimation;

    .line 377
    iget-object v0, p0, LDh;->v:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 378
    iget-object v0, p0, LDh;->v:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 379
    iget-object v0, p0, LDh;->v:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, LDh;->w:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 381
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, LDh;->k:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, LDh;->u:Landroid/view/animation/TranslateAnimation;

    .line 382
    iget-object v0, p0, LDh;->u:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 383
    iget-object v0, p0, LDh;->u:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 384
    iget-object v0, p0, LDh;->u:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, LDh;->w:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, LDh;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 388
    iget-object v0, p0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    new-instance v1, LDq;

    invoke-direct {v1, p0}, LDq;-><init>(LDh;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 424
    new-instance v0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {p0}, LDh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    .line 425
    new-instance v0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {p0}, LDh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDh;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    .line 426
    iget-object v0, p0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v4}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setContextMenuEnabled(Z)V

    .line 427
    iget-object v0, p0, LDh;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v4}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setContextMenuEnabled(Z)V

    .line 428
    iget-object v0, p0, LDh;->A:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    new-instance v1, LDr;

    invoke-direct {v1, p0}, LDr;-><init>(LDh;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setOnItemClickListener(LCS;)V

    .line 442
    iget-object v0, p0, LDh;->z:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    new-instance v1, LDs;

    invoke-direct {v1, p0}, LDs;-><init>(LDh;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setOnItemClickListener(LCS;)V

    .line 457
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LDh;->B:Landroid/widget/ImageView;

    .line 458
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LDh;->D:Landroid/widget/LinearLayout;

    .line 459
    iget-object v0, p0, LDh;->D:Landroid/widget/LinearLayout;

    new-instance v1, LDj;

    invoke-direct {v1, p0}, LDj;-><init>(LDh;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LDh;->C:Landroid/widget/ImageView;

    .line 487
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 488
    new-instance v1, LDk;

    invoke-direct {v1, p0}, LDk;-><init>(LDh;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    invoke-virtual {p0}, LDh;->j()V

    .line 517
    iget-object v0, p0, LDh;->G:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, LDf;->onPause()V

    .line 529
    iget-object v0, p0, LDh;->s:Landroid/content/Context;

    iget-object v1, p0, LDh;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 530
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 522
    invoke-super {p0}, LDf;->onResume()V

    .line 523
    iget-object v0, p0, LDh;->s:Landroid/content/Context;

    iget-object v1, p0, LDh;->o:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "REFRESH_ASSET_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 524
    return-void
.end method
