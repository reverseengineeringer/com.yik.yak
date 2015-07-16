.class public Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;
.super Lcom/yik/yak/ui/activity/WebActivity;
.source "SourceFile"


# instance fields
.field protected c:I

.field public d:Landroid/view/animation/TranslateAnimation;

.field public e:Landroid/view/animation/TranslateAnimation;

.field protected f:Landroid/view/animation/Animation$AnimationListener;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/Switch;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->n:Z

    .line 50
    new-instance v0, LBE;

    invoke-direct {v0, p0}, LBE;-><init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->f:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string v1, "layoutId"

    const v2, 0x7f030022

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v1, "title"

    const v2, 0x7f08014e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "url"

    const v2, 0x7f080151

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->n:Z

    return p1
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->m:Landroid/widget/Switch;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->n:Z

    return v0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "okText"

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "cancelText"

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const v2, 0x7f0d008e

    const/4 v1, 0x1

    .line 98
    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->h:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->j:Landroid/webkit/WebView;

    .line 101
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->l:Landroid/widget/LinearLayout;

    .line 102
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->m:Landroid/widget/Switch;

    .line 104
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;

    .line 105
    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    invoke-virtual {v0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    new-instance v2, LBF;

    invoke-direct {v2, p0}, LBF;-><init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->setOnBottomReachedListener(LFW;)V

    .line 124
    new-instance v2, LBG;

    invoke-direct {v2, p0}, LBG;-><init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->setOnMovedFromBottomListener(LFX;)V

    .line 134
    iget-object v2, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->m:Landroid/widget/Switch;

    invoke-static {}, LAa;->v()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->m:Landroid/widget/Switch;

    new-instance v1, LBH;

    invoke-direct {v1, p0}, LBH;-><init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 161
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 162
    invoke-static {v1}, LAa;->m(Z)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v0}, LAa;->m(Z)V

    .line 165
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->m:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    const-string v1, "layoutId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->finish()V

    .line 79
    :cond_1
    const-string v1, "layoutId"

    iget v2, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->g:I

    .line 80
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->c:I

    .line 82
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->c:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->e:Landroid/view/animation/TranslateAnimation;

    .line 83
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 84
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 85
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->e:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->f:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->c:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->d:Landroid/view/animation/TranslateAnimation;

    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->d:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->d:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 90
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->d:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->f:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Ljava/lang/String;)V

    .line 95
    return-void
.end method
