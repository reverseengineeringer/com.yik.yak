.class public LCM;
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
    .line 176
    iput-object p1, p0, LCM;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string v1, "url"

    iget-object v2, p0, LCM;->a:Lcom/yik/yak/ui/activity/WebActivity;

    iget-object v2, v2, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, LCM;->a:Lcom/yik/yak/ui/activity/WebActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    iget-object v0, p0, LCM;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/WebActivity;->finish()V

    .line 183
    return-void
.end method
