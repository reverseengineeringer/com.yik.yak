.class public Lcom/yik/yak/ui/fragment/PhotoPeekFragment;
.super Lcom/yik/yak/ui/fragment/PeekFragment;
.source "SourceFile"

# interfaces
.implements LBI;
.implements LBn;


# instance fields
.field private I:LFn;

.field private J:Landroid/view/MenuItem;

.field private K:Landroid/view/MenuItem;

.field private L:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;-><init>()V

    .line 30
    sget-object v0, LFn;->b:LFn;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    .line 192
    return-void
.end method

.method public static c(Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/ui/fragment/PhotoPeekFragment;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->b(Lcom/yik/yak/data/models/PeekLocation;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method private c(Lcom/yik/yak/ui/view/RefreshListView;)V
    .locals 3

    .prologue
    .line 147
    sget-object v0, LFm;->a:[I

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    invoke-virtual {v1}, LFn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 149
    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/yik/yak/ui/view/RefreshListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 152
    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/yik/yak/ui/view/RefreshListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x7f

    .line 133
    sget-object v0, LFm;->a:[I

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    invoke-virtual {v1}, LFn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->J:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->K:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->J:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 141
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->K:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private v()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, LFm;->a:[I

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    invoke-virtual {v1}, LFn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    sget-object v0, LFm;->b:[I

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->y:LDX;

    invoke-virtual {v1}, LDX;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 177
    :goto_1
    return-void

    .line 160
    :pswitch_0
    new-instance v0, Lcom/yik/yak/ui/adapter/PhotoPeekGridViewAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/PhotoPeekGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->B:LDd;

    .line 161
    new-instance v0, Lcom/yik/yak/ui/adapter/PhotoPeekGridViewAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/PhotoPeekGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->A:LDd;

    goto :goto_0

    .line 164
    :pswitch_1
    new-instance v0, Lcom/yik/yak/ui/adapter/EnlargedPhotoPeekAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/EnlargedPhotoPeekAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->B:LDd;

    .line 165
    new-instance v0, Lcom/yik/yak/ui/adapter/EnlargedPhotoPeekAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/adapter/EnlargedPhotoPeekAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->A:LDd;

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->A:LDd;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LDd;)V

    goto :goto_1

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->B:LDd;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LDd;)V

    goto :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f03004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->L:Z

    .line 128
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 129
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(LFn;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    if-eq v0, p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    .line 111
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->t()V

    .line 113
    :cond_0
    return-void
.end method

.method protected a(Lcom/yik/yak/ui/view/RefreshListView;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->c(Lcom/yik/yak/ui/view/RefreshListView;)V

    .line 101
    return-void
.end method

.method protected b(Lcom/yik/yak/ui/view/RefreshListView;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected b(Lcom/yik/yak/data/models/Yak;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 180
    sget-object v1, LFm;->a:[I

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->I:LFn;

    invoke-virtual {v2}, LFn;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 182
    :pswitch_0
    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/PeekFragment;->b(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->v()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 64
    invoke-super {p0, p1, p2}, Lcom/yik/yak/ui/fragment/PeekFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 66
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->L:Z

    if-eqz v0, :cond_0

    .line 67
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const v0, 0x7f0d01e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->J:Landroid/view/MenuItem;

    .line 69
    const v0, 0x7f0d01e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->K:Landroid/view/MenuItem;

    .line 72
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->J:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->K:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->u()V

    .line 76
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/PeekFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_0
    sget-object v0, LFn;->a:LFn;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->a(LFn;)V

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, LFn;->b:LFn;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->a(LFn;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f0d01e5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected t()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->v()V

    .line 117
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->c(Lcom/yik/yak/ui/view/RefreshListView;)V

    .line 118
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->u()V

    .line 119
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->A:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    .line 120
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->B:LDd;

    invoke-virtual {v0}, LDd;->notifyDataSetChanged()V

    .line 121
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->invalidate()V

    .line 122
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PhotoPeekFragment;->a_()V

    .line 123
    return-void
.end method
