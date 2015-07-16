.class public Lcom/yik/yak/ui/activity/WebActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field protected g:I

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/TextView;

.field public j:Landroid/webkit/WebView;

.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 35
    const v0, 0x7f030027

    iput v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->g:I

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v1, "title"

    const v2, 0x7f080198

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "url"

    const v2, 0x7f080199

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 171
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->i:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f08018c

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->i:Landroid/widget/TextView;

    new-instance v1, LCM;

    invoke-direct {v1, p0}, LCM;-><init>(Lcom/yik/yak/ui/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 142
    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->h:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    .line 145
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    new-instance v1, LCL;

    invoke-direct {v1, p0}, LCL;-><init>(Lcom/yik/yak/ui/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected c()Z
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareEnabled"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    :cond_0
    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public g()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 90
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 96
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 98
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 100
    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "Yik Yak"

    .line 112
    iget v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->g:I

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/WebActivity;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->k:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->e()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v0, "Yik Yak"

    .line 132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->k:Ljava/lang/String;

    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->finish()V

    .line 136
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->a(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->a()V

    .line 138
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->i()V

    .line 139
    return-void

    .line 124
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    const-string v2, ""

    iput-object v2, p0, Lcom/yik/yak/ui/activity/WebActivity;->k:Ljava/lang/String;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 196
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 197
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCN;

    invoke-direct {v1, p0}, LCN;-><init>(Lcom/yik/yak/ui/activity/WebActivity;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method
