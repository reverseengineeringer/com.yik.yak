.class public LCX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, LCX;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 252
    sget-object v0, Lcb;->k:Lcb;

    invoke-static {v0}, Lcc;->a(Lcb;)Lce;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lce;->a(J)Lce;

    move-result-object v0

    iget-object v1, p0, LCX;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    iget-object v1, v1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lce;->a(Landroid/view/View;)Lcf;

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCY;

    invoke-direct {v1, p0}, LCY;-><init>(LCX;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    return-void
.end method
