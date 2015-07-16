.class public LBU;
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
    .line 787
    iput-object p1, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->v(Lcom/yik/yak/ui/activity/SendAYak;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 792
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->u(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/widget/TextView;Z)V

    .line 793
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;Z)Z

    .line 801
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->u(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/widget/TextView;Z)V

    .line 797
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->u(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->u(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 799
    :cond_1
    iget-object v0, p0, LBU;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0, v3}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;Z)Z

    goto :goto_0
.end method
