.class public LDn;
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
    .line 290
    iput-object p1, p0, LDn;->b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    iput-object p2, p0, LDn;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, LAa;->p(Z)V

    .line 294
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->q(Z)V

    .line 295
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Basecamp"

    invoke-virtual {v0, v1}, LHa;->g(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, LDn;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 297
    iget-object v0, p0, LDn;->b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030057

    iget-object v2, p0, LDn;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 298
    return-void
.end method
