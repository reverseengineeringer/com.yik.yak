.class public Lcom/parse/GcmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p1, p2}, Lcom/parse/PushService;->runGcmIntentInService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    return-void
.end method
