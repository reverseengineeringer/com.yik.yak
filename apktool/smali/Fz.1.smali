.class LFz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LFy;


# direct methods
.method constructor <init>(LFy;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, LFz;->a:LFy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, LFz;->a:LFy;

    invoke-virtual {v0}, LFy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LFz;->a:LFy;

    invoke-static {v0}, LFy;->a(LFy;)I

    move-result v0

    iget-object v1, p0, LFz;->a:LFy;

    invoke-static {v1}, LFy;->b(LFy;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v0, p0, LFz;->a:LFy;

    invoke-virtual {v0}, LFy;->invalidateSelf()V

    .line 36
    iget-object v0, p0, LFz;->a:LFy;

    invoke-static {v0}, LFy;->c(LFy;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_0
    return-void
.end method
