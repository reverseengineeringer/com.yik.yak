.class public LDw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/PinCodeDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v3, 0x1773

    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->b(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pin Code is too short."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->e(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    const-string v1, "pin"

    iget-object v2, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v2}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->b(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-virtual {v1, v3, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->setResult(ILandroid/content/Intent;)V

    .line 133
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->e(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->b(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const-string v1, "pin"

    iget-object v2, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v2}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->b(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-virtual {v1, v3, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->setResult(ILandroid/content/Intent;)V

    .line 140
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->a(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 144
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pin Codes do not match."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->a(Lcom/yik/yak/ui/dialog/PinCodeDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    const v1, 0x7f0d00f0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, LDw;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    const v1, 0x7f0d00f3

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
