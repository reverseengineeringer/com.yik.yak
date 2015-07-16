.class public Lcom/yik/yak/ui/view/PrivacyPolicyWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field public a:LFW;

.field public b:LFX;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->c:Z

    .line 31
    iput-object v1, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->a:LFW;

    .line 33
    iput-object v1, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->b:LFX;

    .line 28
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 57
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->getHeight()I

    move-result v1

    .line 58
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    .line 59
    if-lt p2, v0, :cond_1

    .line 60
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->c:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->c:Z

    .line 62
    iget-object v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->a:LFW;

    invoke-interface {v0, p0}, LFW;->a(Landroid/view/View;)V

    .line 73
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 74
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 67
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    if-ge p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->c:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->c:Z

    .line 69
    iget-object v0, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->b:LFX;

    invoke-interface {v0, p0}, LFX;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnBottomReachedListener(LFW;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->a:LFW;

    .line 41
    return-void
.end method

.method public setOnMovedFromBottomListener(LFX;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yik/yak/ui/view/PrivacyPolicyWebView;->b:LFX;

    .line 37
    return-void
.end method
