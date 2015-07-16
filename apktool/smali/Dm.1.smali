.class public LDm;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

.field final synthetic b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, LDm;->b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder$$ViewInjector;

    iput-object p2, p0, LDm;->a:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LDm;->a:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->onPhotoThumbnailClicked()V

    .line 37
    return-void
.end method
