.class public LBS;
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
    .line 758
    iput-object p1, p0, LBS;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 761
    invoke-static {}, LAa;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, LBS;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->s(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 767
    :goto_0
    return-void

    .line 764
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LBS;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const-class v2, Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    iget-object v1, p0, LBS;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const/16 v2, 0x4d9

    invoke-virtual {v1, v0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
