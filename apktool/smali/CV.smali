.class public LCV;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

.field final synthetic b:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, LCV;->b:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder$$ViewInjector;

    iput-object p2, p0, LCV;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, LCV;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->onClick()V

    .line 41
    return-void
.end method
