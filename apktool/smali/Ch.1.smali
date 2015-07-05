.class public LCh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, LCh;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 716
    if-eqz p2, :cond_0

    .line 717
    iget-object v0, p0, LCh;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->n(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    iget-object v0, p0, LCh;->a:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LCh;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->o(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/widget/TextView;Z)V

    .line 719
    iget-object v0, p0, LCh;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;Z)Z

    .line 721
    :cond_0
    return-void
.end method
