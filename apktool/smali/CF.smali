.class LCF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAp;


# instance fields
.field final synthetic a:LCE;


# direct methods
.method constructor <init>(LCE;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, LCF;->a:LCE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->m(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 555
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 556
    return-void
.end method

.method public a(LxJ;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 539
    check-cast p2, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;

    .line 541
    iget-object v0, p2, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    iget-object v1, p2, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;->mToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->l(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 544
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->n(Lcom/yik/yak/ui/activity/VerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LAa;->a(Ljava/lang/String;)V

    .line 548
    :goto_0
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 549
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, LCF;->a:LCE;

    iget-object v0, v0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    iget v1, p2, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationRequestResponse;->mErrorCode:I

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;I)V

    goto :goto_0
.end method
