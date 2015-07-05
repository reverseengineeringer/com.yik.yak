.class public LCu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/WebActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/WebActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, LCu;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    const-string v1, "url"

    iget-object v2, p0, LCu;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/WebActivity;->c(Lcom/yik/yak/ui/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, LCu;->a:Lcom/yik/yak/ui/activity/WebActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    iget-object v0, p0, LCu;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/WebActivity;->finish()V

    .line 157
    return-void
.end method
