.class Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/oauth/OAuth1FlowDialog;


# direct methods
.method private constructor <init>(Lcom/parse/oauth/OAuth1FlowDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/oauth/OAuth1FlowDialog;Lcom/parse/oauth/OAuth1FlowDialog$1;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;-><init>(Lcom/parse/oauth/OAuth1FlowDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$400(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$500(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 172
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$600(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$700(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$400(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 155
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->dismiss()V

    .line 148
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$000(Lcom/parse/oauth/OAuth1FlowDialog;)Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 132
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->callbackUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->access$200(Lcom/parse/oauth/OAuth1FlowDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->dismiss()V

    .line 134
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;
    invoke-static {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->access$000(Lcom/parse/oauth/OAuth1FlowDialog;)Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;->onComplete(Ljava/lang/String;)V

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    # getter for: Lcom/parse/oauth/OAuth1FlowDialog;->serviceUrlIdentifier:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->access$300(Lcom/parse/oauth/OAuth1FlowDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
