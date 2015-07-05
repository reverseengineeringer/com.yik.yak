.class public abstract LCQ;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LDb;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation
.end field

.field public layoutInflater:Landroid/view/LayoutInflater;

.field private listener:LCS;

.field protected mIsContextMenuEnabled:Z

.field protected mShouldContextMenuShowOnSingleClick:Z

.field mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LCQ;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, LCQ;->mIsContextMenuEnabled:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, LCQ;->mShouldContextMenuShowOnSingleClick:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCQ;->data:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LCQ;->mViews:Landroid/util/SparseArray;

    .line 42
    iput-object p1, p0, LCQ;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LCQ;->layoutInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0, p2}, LCQ;->setData(Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method


# virtual methods
.method public assignClickListener(LDb;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, LCR;

    invoke-direct {v0, p0, p1, p2, p3}, LCR;-><init>(LCQ;LDb;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public broadcastClick(LDb;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1, p2}, LDb;->onClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, LCQ;->listener:LCS;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, LCQ;->listener:LCS;

    invoke-interface {v0, p1, p0, p3}, LCS;->a(LDb;LCQ;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public buildViewHolderInstance(Ljava/lang/reflect/Constructor;Landroid/view/View;I)LDb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "LDb;",
            ">;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDb;

    return-object v0
.end method

.method public getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "LDb;",
            ">;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "LDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, LCQ;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, LCQ;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, LCQ;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, LCQ;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LCQ;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getLayoutId()I
.end method

.method public getListener()LCS;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, LCQ;->listener:LCS;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LCQ;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 121
    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getViewHolderClass()Ljava/lang/Class;
.end method

.method public isContextMenuEnabled()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, LCQ;->mIsContextMenuEnabled:Z

    return v0
.end method

.method public onBindViewHolder(LDb;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, LDb;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, LCQ;->assignClickListener(LDb;Landroid/view/View;I)V

    .line 111
    iget-object v0, p0, LCQ;->mViews:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, LDb;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    invoke-virtual {p0, p2}, LCQ;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, LDb;->bindView(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, LDb;

    invoke-virtual {p0, p1, p2}, LCQ;->onBindViewHolder(LDb;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LDb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, LCQ;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, LCQ;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, LCQ;->getViewHolderClass()Ljava/lang/Class;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v1}, LCQ;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 94
    :try_start_0
    invoke-virtual {p0, v1, v0, p2}, LCQ;->buildViewHolderInstance(Ljava/lang/reflect/Constructor;Landroid/view/View;I)LDb;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 103
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 99
    :catch_2
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, LCQ;->onCreateViewHolder(Landroid/view/ViewGroup;I)LDb;

    move-result-object v0

    return-object v0
.end method

.method public setContextMenuEnabled(Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, LCQ;->mIsContextMenuEnabled:Z

    .line 152
    invoke-virtual {p0}, LCQ;->notifyDataSetChanged()V

    .line 153
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :cond_0
    iput-object p1, p0, LCQ;->data:Ljava/util/ArrayList;

    .line 144
    return-void
.end method

.method public setOnItemClickListener(LCS;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, LCQ;->listener:LCS;

    .line 166
    return-void
.end method

.method public setShouldContextMenuShowOnSingleClick(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, LCQ;->mShouldContextMenuShowOnSingleClick:Z

    .line 161
    invoke-virtual {p0}, LCQ;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public shouldContextMenuShowOnSingleClick()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, LCQ;->mShouldContextMenuShowOnSingleClick:Z

    return v0
.end method
