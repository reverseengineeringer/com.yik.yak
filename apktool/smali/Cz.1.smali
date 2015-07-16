.class public LCz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->i(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 196
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->e(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 185
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->f(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 186
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    iget-object v1, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->g(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 190
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->h(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 191
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    iget-object v1, p0, LCz;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v2, 0x7f0801a3

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
