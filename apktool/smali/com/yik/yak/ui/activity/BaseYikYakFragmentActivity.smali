.class public Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->setRequestedOrientation(I)V

    .line 22
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 34
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->endSession()V

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 28
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->startSession()V

    .line 29
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->a:Z

    .line 42
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->a:Z

    .line 48
    return-void
.end method
