.class public Lcom/parse/oauth/OAuth1FlowDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final FILL:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private final callbackUrl:Ljava/lang/String;

.field private closeImage:Landroid/widget/ImageView;

.field private content:Landroid/widget/FrameLayout;

.field private final handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final requestUrl:Ljava/lang/String;

.field private final serviceUrlIdentifier:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/parse/oauth/OAuth1FlowDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;)V
    .locals 1

    .prologue
    .line 40
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p2, p0, Lcom/parse/oauth/OAuth1FlowDialog;->requestUrl:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/parse/oauth/OAuth1FlowDialog;->callbackUrl:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/parse/oauth/OAuth1FlowDialog;->serviceUrlIdentifier:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/parse/oauth/OAuth1FlowDialog;->handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    .line 46
    new-instance v0, Lcom/parse/oauth/OAuth1FlowDialog$1;

    invoke-direct {v0, p0}, Lcom/parse/oauth/OAuth1FlowDialog$1;-><init>(Lcom/parse/oauth/OAuth1FlowDialog;)V

    invoke-virtual {p0, v0}, Lcom/parse/oauth/OAuth1FlowDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/parse/oauth/OAuth1FlowDialog;)Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/oauth/OAuth1FlowDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/oauth/OAuth1FlowDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->serviceUrlIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCloseImage()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/parse/oauth/OAuth1FlowDialog$2;

    invoke-direct {v1, p0}, Lcom/parse/oauth/OAuth1FlowDialog$2;-><init>(Lcom/parse/oauth/OAuth1FlowDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method private setUpWebView(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    .line 95
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 96
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 97
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;-><init>(Lcom/parse/oauth/OAuth1FlowDialog;Lcom/parse/oauth/OAuth1FlowDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/parse/oauth/OAuth1FlowDialog;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    sget-object v2, Lcom/parse/oauth/OAuth1FlowDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 103
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 104
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 58
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 59
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/parse/oauth/OAuth1FlowDialog;->requestWindowFeature(I)Z

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;

    .line 64
    invoke-direct {p0}, Lcom/parse/oauth/OAuth1FlowDialog;->createCloseImage()V

    .line 67
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 68
    invoke-direct {p0, v0}, Lcom/parse/oauth/OAuth1FlowDialog;->setUpWebView(I)V

    .line 71
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/parse/oauth/OAuth1FlowDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method
