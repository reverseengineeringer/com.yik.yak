.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field final mDisappearingViewsInLayoutPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInPreLayout:Z

.field mItemCount:I

.field mOldChangedHolders:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8930
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 8931
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 8933
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 8936
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    .line 8939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 8946
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 8951
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 8957
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 8959
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 8961
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 8963
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 8965
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method static synthetic access$1002(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0

    .prologue
    .line 8928
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic access$1012(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1

    .prologue
    .line 8928
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1

    .prologue
    .line 8928
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0

    .prologue
    .line 8928
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1

    .prologue
    .line 8928
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0

    .prologue
    .line 8928
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1

    .prologue
    .line 8928
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0

    .prologue
    .line 8928
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1

    .prologue
    .line 8928
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0

    .prologue
    .line 8928
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$1902(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0

    .prologue
    .line 8928
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic access$4702(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0

    .prologue
    .line 8928
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method private removeFrom(Landroid/support/v4/util/ArrayMap;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9118
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9119
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 9120
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9124
    :cond_0
    return-void

    .line 9118
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method addToDisappearingList(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 9131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9132
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9134
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 9070
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 9024
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9025
    const/4 v0, 0x0

    .line 9027
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 9098
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 9053
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 9062
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 8978
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public onViewIgnored(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 9114
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$State;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9115
    return-void
.end method

.method onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 9104
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9105
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9106
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 9107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$State;->removeFrom(Landroid/support/v4/util/ArrayMap;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9109
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9111
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 9039
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9040
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 9042
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9043
    return-void
.end method

.method public remove(I)V
    .locals 1

    .prologue
    .line 9009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9013
    :goto_0
    return-void

    .line 9012
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method removeFromDisappearingList(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 9127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9128
    return-void
.end method

.method reset()Landroid/support/v7/widget/RecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8968
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 8969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 8970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8972
    :cond_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 8973
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 8974
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 8989
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 9000
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
