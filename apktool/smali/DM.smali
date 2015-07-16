.class public LDM;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, LDM;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LDM;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n()V

    .line 68
    return-void
.end method
