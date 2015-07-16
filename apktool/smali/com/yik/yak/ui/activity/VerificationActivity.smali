.class public Lcom/yik/yak/ui/activity/VerificationActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements LDE;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final c:Landroid/text/TextWatcher;

.field private d:Landroid/os/Handler;

.field private e:LAf;

.field private f:LAz;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/Button;

.field private r:Landroid/support/v4/view/ViewPager;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 56
    new-instance v0, LCx;

    invoke-direct {v0, p0}, LCx;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->c:Landroid/text/TextWatcher;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->d:Landroid/os/Handler;

    .line 647
    return-void
.end method

.method private A()LAf;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->e:LAf;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, LAf;

    invoke-direct {v0, p0}, LAf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->e:LAf;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->e:LAf;

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/VerificationActivity;)LAf;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->A()LAf;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/VerificationActivity;LAz;)LAz;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v1, "KEY_FORCE_VERIFICATION"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "KEY_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->q:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->e()Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 154
    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->d:Landroid/os/Handler;

    new-instance v2, LCy;

    invoke-direct {v2, p0, v0}, LCy;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/VerificationActivity;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/VerificationActivity;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, " "

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Cancel"

    aput-object v2, v5, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    .line 568
    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/VerificationActivity;)LAz;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    return-object v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->p:Landroid/widget/EditText;

    return-object p1
.end method

.method private b(I)V
    .locals 5

    .prologue
    const v4, 0x7f0800ec

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    sget-object v0, LCG;->b:[I

    invoke-static {p1}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->fromInt(I)Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 378
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Something unexpected happened."

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 381
    :goto_0
    return-void

    .line 366
    :pswitch_0
    const-string v0, "InvalidPhoneNumber"

    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080125

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_1
    const-string v0, "TooManyAttempts"

    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08013a

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_2
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "The system detected potential abuse."

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 375
    :pswitch_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "A system error occurred"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/VerificationActivity;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(I)V

    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/VerificationActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->n:Landroid/widget/EditText;

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 164
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->setContentView(I)V

    .line 165
    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Ljava/lang/String;)V

    .line 166
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    new-instance v1, LCH;

    invoke-direct {v1, p0}, LCH;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 168
    const v0, 0x7f0d00a4

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->l:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    .line 171
    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    sget-object v0, LCG;->a:[I

    invoke-static {p1}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->fromInt(I)Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 404
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Something unexpected happened."

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 407
    :goto_0
    return-void

    .line 386
    :pswitch_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Invalid identity authentication token."

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :pswitch_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Where\'s the validation code?"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :pswitch_2
    const-string v0, "TooManyAttemps"

    const-string v1, "Darn"

    const-string v2, "You\'ve tried to authenticate too many times. Try again in 24 hours. Sorry, we just want to be sure you\'re human."

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Does this user exist?"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :pswitch_4
    const-string v0, "IncorrectCodeDialog"

    const-string v1, "Darn"

    const-string v2, "Whoops. That doesn\'t look like the code we sent you. Give it another go."

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_5
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Unexpected system error when authenticating."

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->t()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 313
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checking your verification code."

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->d:Landroid/os/Handler;

    new-instance v2, LCB;

    invoke-direct {v2, p0, p1, v0}, LCB;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    new-instance v1, LCz;

    invoke-direct {v1, p0}, LCz;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    const-string v2, "KEY_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "KEY_CODE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->p()V

    return-void
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->n()V

    return-void
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    const-string v1, "KEY_FORCE_VERIFICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "KEY_FORCE_VERIFICATION"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->e:LAf;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAf;->a(Ljava/lang/String;)LAz;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    .line 238
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->d:Landroid/os/Handler;

    new-instance v1, LCA;

    invoke-direct {v1, p0}, LCA;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public static synthetic g(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->q()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 249
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public static synthetic h(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->o()V

    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f040020

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->g:Landroid/view/animation/Animation;

    .line 258
    const v0, 0x7f040021

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->h:Landroid/view/animation/Animation;

    .line 259
    const v0, 0x7f04001b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->i:Landroid/view/animation/Animation;

    .line 260
    const v0, 0x7f04001c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->j:Landroid/view/animation/Animation;

    .line 261
    new-instance v0, LAf;

    invoke-direct {v0, p0}, LAf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->e:LAf;

    .line 262
    return-void
.end method

.method public static synthetic i(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->h()V

    return-void
.end method

.method public static synthetic j(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 273
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    return-void
.end method

.method public static synthetic k(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 278
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    return-void
.end method

.method public static synthetic l(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 283
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 288
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    return-void
.end method

.method public static synthetic m(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->r()V

    return-void
.end method

.method public static synthetic n(Lcom/yik/yak/ui/activity/VerificationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->l()V

    .line 293
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->k()V

    .line 294
    return-void
.end method

.method private o()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->m()V

    .line 298
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->j()V

    .line 299
    return-void
.end method

.method public static synthetic o(Lcom/yik/yak/ui/activity/VerificationActivity;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->s()Z

    move-result v0

    return v0
.end method

.method public static synthetic p(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->c:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 304
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 309
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    return-void
.end method

.method public static synthetic q(Lcom/yik/yak/ui/activity/VerificationActivity;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->z()Z

    move-result v0

    return v0
.end method

.method public static synthetic r(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 360
    const-string v0, "GenericErrorDialog"

    const v1, 0x7f0800ec

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08019f

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static synthetic s(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->u()V

    .line 494
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic t(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 503
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    iget-object v0, v0, LAz;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->q:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    iget-object v1, v1, LAz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 512
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->q:Landroid/widget/Button;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 8

    .prologue
    .line 515
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "VerifySendCodeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We Will Send the Text Verification Code to +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "To complete phone number verification, please enter the 4-digit code we will text you on the next screen. Message and data rates may apply."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Send Code"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Cancel"

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    .line 523
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public static synthetic u(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->g()V

    return-void
.end method

.method private v()V
    .locals 6

    .prologue
    .line 527
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "You should receive a text message shortly."

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->d:Landroid/os/Handler;

    new-instance v2, LCE;

    invoke-direct {v2, p0, v0}, LCE;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/app/ProgressDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void
.end method

.method public static synthetic v(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->y()V

    return-void
.end method

.method private w()V
    .locals 8

    .prologue
    .line 571
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 572
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ResendCodeDialog"

    const-string v2, "Help! I didn\'t receive the code."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Whoops! Something might have gone wrong. Don\'t worry, we can fix it. You can either hit resend or email us at sms@yikyakapp.com."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Resend Code"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Email Us"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Change Number"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "Cancel"

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    .line 579
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public static synthetic w(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->x()V

    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 583
    invoke-static {p0}, Lcom/yik/yak/ui/activity/WebActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 585
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 588
    invoke-static {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 590
    return-void
.end method

.method private z()Z
    .locals 2

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->A()LAf;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    invoke-virtual {v0, v1}, LAf;->a(LAz;)I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x7f0b00e9

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 413
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 417
    :pswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 418
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 422
    :pswitch_2
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 423
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 427
    :pswitch_3
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 428
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 432
    :pswitch_4
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 433
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(LAz;)V
    .locals 2

    .prologue
    .line 478
    if-eqz p1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    if-eqz v0, :cond_0

    iget-object v0, p1, LAz;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    iget-object v1, v1, LAz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    :cond_0
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    .line 482
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    iget-object v1, v1, LAz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->t()V

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 486
    :cond_2
    iput-object p1, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->f:LAz;

    .line 487
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->t()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/DialogFragment;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 607
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifySendCodeDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    packed-switch p2, :pswitch_data_0

    .line 616
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResendCodeDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    packed-switch p2, :pswitch_data_1

    .line 641
    :cond_1
    :goto_1
    return-void

    .line 610
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->v()V

    .line 611
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 619
    :pswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->v()V

    .line 620
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_1

    .line 623
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 626
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sms@yikyakapp.com"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Help With Phone Number Verification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 635
    :pswitch_3
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 636
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 637
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_1

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 617
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->r:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 442
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v1, LwG;->b:LwG;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(LwG;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "You need to verify your phone number before continuing to use Yik Yak."

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 449
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 456
    :sswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->u()V

    goto :goto_0

    .line 460
    :sswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->w()V

    goto :goto_0

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x7f0d00a3 -> :sswitch_0
        0x7f0d01d5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->i()V

    .line 137
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->c()V

    .line 138
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->d()V

    .line 140
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a()V

    .line 142
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 146
    :cond_0
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/yik/yak/ui/activity/VerificationActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public showCountrySelect(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08016c

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/yik/yak/ui/activity/VerificationActivity;->A()LAf;

    move-result-object v1

    invoke-virtual {v1}, LAf;->b()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, LCD;

    invoke-direct {v2, p0}, LCD;-><init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 475
    return-void
.end method
