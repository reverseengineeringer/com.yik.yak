.class LET;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LES;


# direct methods
.method constructor <init>(LES;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, LET;->a:LES;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, LET;->a:LES;

    invoke-virtual {v0}, LES;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LET;->a:LES;

    invoke-static {v0}, LES;->a(LES;)I

    move-result v0

    iget-object v1, p0, LET;->a:LES;

    invoke-static {v1}, LES;->b(LES;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v0, p0, LET;->a:LES;

    invoke-virtual {v0}, LES;->invalidateSelf()V

    .line 36
    iget-object v0, p0, LET;->a:LES;

    invoke-static {v0}, LES;->c(LES;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_0
    return-void
.end method
