.class public Lcom/yik/yak/ui/activity/WebActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/WebActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->e()V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareEnabled"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    :cond_0
    return v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/WebActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->f()V

    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/WebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 68
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 74
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 75
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 76
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 78
    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 84
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->b:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    .line 123
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    new-instance v1, LCt;

    invoke-direct {v1, p0}, LCt;-><init>(Lcom/yik/yak/ui/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 140
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 141
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 145
    const v0, 0x7f0d01b2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->c:Landroid/widget/TextView;

    .line 147
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f080161

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->c:Landroid/widget/TextView;

    new-instance v1, LCu;

    invoke-direct {v1, p0}, LCu;-><init>(Lcom/yik/yak/ui/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "Yik Yak"

    .line 90
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/WebActivity;->setContentView(I)V

    .line 92
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->e:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "Yik Yak"

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->e:Ljava/lang/String;

    invoke-static {v1}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->finish()V

    .line 114
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebActivity;->a(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->g()V

    .line 116
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebActivity;->h()V

    .line 117
    return-void

    .line 102
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 103
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

    iput-object v1, p0, Lcom/yik/yak/ui/activity/WebActivity;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    const-string v2, ""

    iput-object v2, p0, Lcom/yik/yak/ui/activity/WebActivity;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 170
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 171
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCv;

    invoke-direct {v1, p0}, LCv;-><init>(Lcom/yik/yak/ui/activity/WebActivity;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method
