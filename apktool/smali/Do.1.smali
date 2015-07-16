.class public LDo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, LDo;->b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    iput-object p2, p0, LDo;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->s(Z)V

    .line 315
    iget-object v0, p0, LDo;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    return-void
.end method
