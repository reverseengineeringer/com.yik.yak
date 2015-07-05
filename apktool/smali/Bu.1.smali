.class public LBu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PinCodeDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PinCodeDialog;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f0d00e6

    const v7, 0x7f0d00e5

    const v6, 0x7f0d00e4

    const v5, 0x7f0d00e3

    const/4 v4, 0x4

    .line 28
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->a(Lcom/yik/yak/ui/activity/PinCodeDialog;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 31
    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->a(Lcom/yik/yak/ui/activity/PinCodeDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-virtual {v0, v5}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-virtual {v0, v6}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-virtual {v0, v7}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-virtual {v0, v8}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 45
    :cond_2
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :cond_3
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->a(Lcom/yik/yak/ui/activity/PinCodeDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    :goto_1
    :try_start_0
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    const v1, 0x7f0d00e3

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    const-string v1, "*"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    const v1, 0x7f0d00e4

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    const-string v1, "*"

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    const v1, 0x7f0d00e5

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    const-string v1, "*"

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    const v1, 0x7f0d00e6

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->b(Lcom/yik/yak/ui/activity/PinCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_8

    const-string v1, "*"

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 52
    :cond_4
    iget-object v1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/activity/PinCodeDialog;->a(Lcom/yik/yak/ui/activity/PinCodeDialog;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_5
    :try_start_1
    const-string v1, ""

    goto :goto_2

    .line 56
    :cond_6
    const-string v1, ""

    goto :goto_3

    .line 57
    :cond_7
    const-string v1, ""

    goto :goto_4

    .line 58
    :cond_8
    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method
