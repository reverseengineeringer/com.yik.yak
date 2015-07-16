.class LCC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAp;


# instance fields
.field final synthetic a:LCB;


# direct methods
.method constructor <init>(LCB;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, LCC;->a:LCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    iget-object v0, p0, LCC;->a:LCB;

    iget-object v0, v0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->m(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 350
    iget-object v0, p0, LCC;->a:LCB;

    iget-object v0, v0, LCB;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    return-void
.end method

.method public a(LxJ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 320
    check-cast p2, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;

    .line 322
    iget-object v0, p0, LCC;->a:LCB;

    iget-object v0, v0, LCB;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 324
    iget-boolean v0, p2, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;->mVerificationSuccessful:Z

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->c(Z)V

    .line 326
    invoke-static {v3}, LAa;->j(Z)V

    .line 327
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LCC;->a:LCB;

    iget-object v1, v1, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, LCC;->a:LCB;

    iget-object v0, v0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->setResult(I)V

    .line 329
    iget-object v0, p0, LCC;->a:LCB;

    iget-object v0, v0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->finish()V

    .line 344
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p2, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;->mErrorCode:I

    .line 333
    sget-object v1, LCG;->a:[I

    invoke-static {v0}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->fromInt(I)Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_1
    iget-object v1, p0, LCC;->a:LCB;

    iget-object v1, v1, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;I)V

    .line 342
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LCC;->a:LCB;

    iget-object v1, v1, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :pswitch_0
    iget-object v1, p0, LCC;->a:LCB;

    iget-object v1, v1, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->l(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 337
    :pswitch_1
    iget-object v1, p0, LCC;->a:LCB;

    iget-object v1, v1, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->d(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
