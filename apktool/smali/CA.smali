.class public LCA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/YikYakDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/YikYakDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    iget-object v1, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/YikYakDialog;->a(Lcom/yik/yak/ui/activity/YikYakDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "result"

    iget-object v2, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/YikYakDialog;->a(Lcom/yik/yak/ui/activity/YikYakDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_0
    iget-object v1, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/YikYakDialog;->b(Lcom/yik/yak/ui/activity/YikYakDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "value"

    iget-object v2, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/YikYakDialog;->b(Lcom/yik/yak/ui/activity/YikYakDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :cond_1
    iget-object v1, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/YikYakDialog;->c(Lcom/yik/yak/ui/activity/YikYakDialog;)V

    .line 118
    iget-object v1, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->setResult(ILandroid/content/Intent;)V

    .line 119
    iget-object v0, p0, LCA;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->d(Lcom/yik/yak/ui/activity/YikYakDialog;)V

    .line 120
    return-void
.end method
