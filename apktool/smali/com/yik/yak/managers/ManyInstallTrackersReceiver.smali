.class public Lcom/yik/yak/managers/ManyInstallTrackersReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;-><init>()V

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    new-instance v0, Lcom/mobileapptracker/Tracker;

    invoke-direct {v0}, Lcom/mobileapptracker/Tracker;-><init>()V

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/mobileapptracker/Tracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 17
    return-void
.end method
