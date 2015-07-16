.class public LCL;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/WebActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/WebActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, LCL;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, LCL;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/WebActivity;->h()V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 153
    iget-object v0, p0, LCL;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/WebActivity;->g()V

    .line 154
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 155
    return-void
.end method
