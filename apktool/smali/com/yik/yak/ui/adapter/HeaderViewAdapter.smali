.class public abstract Lcom/yik/yak/ui/adapter/HeaderViewAdapter;
.super Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter",
        "<",
        "LDb;",
        "Lcom/yik/yak/data/models/YikYakObject;",
        ">;"
    }
.end annotation


# static fields
.field protected static final HEADER_TYPE:I = 0x1


# instance fields
.field private headerData:Lcom/yik/yak/data/models/YikYakObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getHeaderItem()Lcom/yik/yak/data/models/YikYakObject;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->headerData:Lcom/yik/yak/data/models/YikYakObject;

    return-object v0
.end method

.method protected abstract getHeaderLayoutId()I
.end method

.method protected abstract getHeaderViewHolderClass()Ljava/lang/Class;
.end method

.method protected getHeaderViewHolderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
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
    .line 45
    invoke-super {p0, p1}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/yik/yak/data/models/YikYakObject;
    .locals 1

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getHeaderItem()Lcom/yik/yak/data/models/YikYakObject;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/YikYakObject;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getItem(I)Lcom/yik/yak/data/models/YikYakObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(LDb;I)V
    .locals 1

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p1}, LDb;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->assignClickListener(LDb;Landroid/view/View;I)V

    .line 81
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getHeaderItem()Lcom/yik/yak/data/models/YikYakObject;

    move-result-object v0

    invoke-virtual {p1, v0}, LDb;->bindView(Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->onBindViewHolder(LDb;I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, LDb;

    invoke-virtual {p0, p1, p2}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->onBindViewHolder(LDb;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LDb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getHeaderViewHolderClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getHeaderViewHolderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getHeaderLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->buildViewHolderInstance(Ljava/lang/reflect/Constructor;Landroid/view/View;I)LDb;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 74
    :goto_1
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getViewHolderClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 74
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 70
    :catch_2
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LDb;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yik/yak/ui/adapter/HeaderViewAdapter;->headerData:Lcom/yik/yak/data/models/YikYakObject;

    .line 115
    return-void
.end method
