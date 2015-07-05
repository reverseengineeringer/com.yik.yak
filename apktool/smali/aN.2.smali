.class LaN;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:LaD;


# direct methods
.method constructor <init>(LaD;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, LaN;->a:LaD;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, LaN;->a:LaD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LaD;->a(LaD;Z)Z

    .line 232
    return-void
.end method
