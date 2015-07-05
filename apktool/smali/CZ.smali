.class public LCZ;
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
    .line 267
    iput-object p1, p0, LCZ;->b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    iput-object p2, p0, LCZ;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "basecamp dismiss"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 271
    invoke-static {v2}, LzQ;->i(Z)V

    .line 272
    invoke-static {v3}, LzQ;->j(Z)V

    .line 273
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Basecamp"

    invoke-virtual {v0, v1}, LGs;->e(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, LCZ;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    iget-object v0, p0, LCZ;->b:Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/viewholder/YakViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030050

    iget-object v2, p0, LCZ;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 276
    return-void
.end method
