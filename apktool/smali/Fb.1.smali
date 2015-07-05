.class LFb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LFa;


# direct methods
.method constructor <init>(LFa;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, LFb;->a:LFa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, LFb;->a:LFa;

    invoke-virtual {v0}, LFa;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, LFb;->a:LFa;

    invoke-virtual {v0}, LFa;->invalidateSelf()V

    .line 33
    iget-object v0, p0, LFb;->a:LFa;

    invoke-static {v0}, LFa;->a(LFa;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :cond_0
    return-void
.end method
