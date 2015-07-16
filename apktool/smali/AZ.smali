.class public LAZ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, LAZ;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    iget-object v1, p0, LAZ;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v0, v1}, LAg;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method
