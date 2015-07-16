.class public LBX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 930
    iget-object v0, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->e(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->h(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v2, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const v3, 0x7f08013d

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const v4, 0x7f080143

    invoke-virtual {v3, v4}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LBX;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const v5, 0x7f08013b

    invoke-virtual {v4, v5}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
