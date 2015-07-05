.class public Lcom/yik/yak/ui/activity/BaseActionBarActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseActionBarActivity;->setRequestedOrientation(I)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 55
    invoke-static {}, Lcom/amplitude/api/Amplitude;->endSession()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 48
    const-string v0, "1488368971408413"

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/amplitude/api/Amplitude;->startSession()V

    .line 50
    return-void
.end method
