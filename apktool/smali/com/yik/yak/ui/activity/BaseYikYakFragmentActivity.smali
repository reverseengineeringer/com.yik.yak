.class public Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->setRequestedOrientation(I)V

    .line 24
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 37
    invoke-static {}, Lcom/amplitude/api/Amplitude;->endSession()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 30
    const-string v0, "1488368971408413"

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/amplitude/api/Amplitude;->startSession()V

    .line 32
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->a:Z

    .line 45
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->a:Z

    .line 51
    return-void
.end method
