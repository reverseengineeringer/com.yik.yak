.class LaK;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, LaK;->a:Laz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, LaK;->a:Laz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laz;->a(Laz;Z)Z

    .line 241
    return-void
.end method
