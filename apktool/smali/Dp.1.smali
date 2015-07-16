.class public abstract LDp;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnCreateContextMenuListener;"
    }
.end annotation


# instance fields
.field protected adapter:LDd;

.field protected item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(LDd;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    iput-object p1, p0, LDp;->adapter:LDd;

    .line 32
    iput-object p2, p0, LDp;->view:Landroid/view/View;

    .line 33
    return-void
.end method


# virtual methods
.method public bindView(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, LDp;->item:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, LDp;->onBindView(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, LDp;->getAdapter()LDd;

    move-result-object v0

    invoke-virtual {v0}, LDd;->isContextMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, LDp;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, LDp;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method public broadcastClick()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, LDp;->getAdapter()LDd;

    move-result-object v0

    invoke-virtual {p0}, LDp;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, LDp;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, LDp;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, LDd;->broadcastClick(LDp;Landroid/view/View;I)V

    .line 79
    return-void
.end method

.method public getAdapter()LDd;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, LDp;->adapter:LDd;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, LDp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, LDp;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, LDp;->adapter:LDd;

    invoke-virtual {v0}, LDd;->getData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, LDp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, LDp;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, LDp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, LDp;->view:Landroid/view/View;

    return-object v0
.end method

.method public abstract onBindView(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onDoubleClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClicked(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, LDp;->getAdapter()LDd;

    move-result-object v0

    invoke-virtual {v0}, LDd;->isContextMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDp;->getAdapter()LDd;

    move-result-object v0

    invoke-virtual {v0}, LDd;->shouldContextMenuShowOnSingleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return v3

    .line 57
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "YikYakViewHolder.onItemClicked(View) crashed! Null view reference!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
