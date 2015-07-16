.class public LEm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, LEm;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 763
    if-eqz p2, :cond_0

    .line 764
    const/4 v0, 0x3

    invoke-static {v0}, LAa;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, LEm;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 766
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LEm;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 767
    const-string v2, "title"

    const-string v3, "Rules"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v0, "align"

    const-string v2, "left"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v0, "okText"

    const-string v2, "Agree"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v0, "cancelText"

    const-string v2, "Disagree"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v0, p0, LEm;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 775
    :cond_0
    return-void
.end method
