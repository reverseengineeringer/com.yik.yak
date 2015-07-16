.class LCJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:LCH;


# direct methods
.method constructor <init>(LCH;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, LCJ;->a:LCH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, LCJ;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->q(Lcom/yik/yak/ui/activity/VerificationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, LCJ;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->r(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, LCJ;->a:LCH;

    iget-object v1, v1, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->s(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 723
    iget-object v0, p0, LCJ;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->e(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, LCJ;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->r(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, LCJ;->a:LCH;

    iget-object v1, v1, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->t(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 727
    iget-object v0, p0, LCJ;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->g(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method
