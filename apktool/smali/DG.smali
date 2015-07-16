.class public LDG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/YikYakDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/YikYakDialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    iget-object v1, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a(Lcom/yik/yak/ui/dialog/YikYakDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "result"

    iget-object v2, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-static {v2}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a(Lcom/yik/yak/ui/dialog/YikYakDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_0
    iget-object v1, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/dialog/YikYakDialog;->b(Lcom/yik/yak/ui/dialog/YikYakDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "value"

    iget-object v2, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-static {v2}, Lcom/yik/yak/ui/dialog/YikYakDialog;->b(Lcom/yik/yak/ui/dialog/YikYakDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_1
    iget-object v1, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/dialog/YikYakDialog;->c(Lcom/yik/yak/ui/dialog/YikYakDialog;)V

    .line 144
    iget-object v1, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->setResult(ILandroid/content/Intent;)V

    .line 145
    iget-object v0, p0, LDG;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->d(Lcom/yik/yak/ui/dialog/YikYakDialog;)V

    .line 146
    return-void
.end method
