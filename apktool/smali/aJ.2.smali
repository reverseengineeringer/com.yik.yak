.class LaJ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, LaJ;->a:Laz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, LaJ;->a:Laz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laz;->a(Laz;Z)Z

    .line 232
    return-void
.end method
