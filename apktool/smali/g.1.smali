.class public Lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lx;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Li;

.field d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Lh;

.field private h:I

.field private i:Ly;

.field private j:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lg;->f:I

    .line 79
    iput p2, p0, Lg;->e:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lg;-><init>(II)V

    .line 68
    iput-object p1, p0, Lg;->a:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lg;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lg;->b:Landroid/view/LayoutInflater;

    .line 70
    return-void
.end method

.method static synthetic a(Lg;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lg;->h:I

    return v0
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lg;->g:Lh;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lh;

    invoke-direct {v0, p0}, Lh;-><init>(Lg;)V

    iput-object v0, p0, Lg;->g:Lh;

    .line 124
    :cond_0
    iget-object v0, p0, Lg;->g:Lh;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Lz;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lg;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 104
    iget-object v0, p0, Lg;->g:Lh;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lh;

    invoke-direct {v0, p0}, Lh;-><init>(Lg;)V

    iput-object v0, p0, Lg;->g:Lh;

    .line 107
    :cond_0
    iget-object v0, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lg;->g:Lh;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 187
    iget-object v1, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 190
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 191
    return-void
.end method

.method public a(Ly;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lg;->i:Ly;

    .line 135
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 194
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 198
    :cond_0
    return-void
.end method

.method public collapseItemActionView(Li;Lm;)Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Li;Lm;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lg;->j:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Li;)V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lg;->e:I

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lg;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lg;->a:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lg;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lg;->b:Landroid/view/LayoutInflater;

    .line 93
    :cond_0
    :goto_0
    iput-object p2, p0, Lg;->c:Li;

    .line 94
    iget-object v0, p0, Lg;->g:Lh;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lg;->g:Lh;

    invoke-virtual {v0}, Lh;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lg;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lg;->a:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lg;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lg;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lg;->b:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Li;Z)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lg;->i:Ly;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lg;->i:Ly;

    invoke-interface {v0, p1, p2}, Ly;->onCloseMenu(Li;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lg;->c:Li;

    iget-object v1, p0, Lg;->g:Lh;

    invoke-virtual {v1, p3}, Lh;->a(I)Lm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Li;->a(Landroid/view/MenuItem;Lx;I)Z

    .line 170
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lg;->b(Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lg;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    invoke-virtual {p0, v0}, Lg;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSubMenuSelected(LD;)Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p1}, LD;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 142
    :cond_0
    new-instance v0, Ll;

    invoke-direct {v0, p1}, Ll;-><init>(Li;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll;->a(Landroid/os/IBinder;)V

    .line 143
    iget-object v0, p0, Lg;->i:Ly;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lg;->i:Ly;

    invoke-interface {v0, p1}, Ly;->onOpenSubMenu(Li;)Z

    .line 146
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lg;->g:Lh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg;->g:Lh;

    invoke-virtual {v0}, Lh;->notifyDataSetChanged()V

    .line 130
    :cond_0
    return-void
.end method
