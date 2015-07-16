.class LFx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LFw;


# direct methods
.method constructor <init>(LFw;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, LFx;->a:LFw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, LFx;->a:LFw;

    invoke-static {v0}, LFw;->a(LFw;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v1, p0, LFx;->a:LFw;

    iget-object v0, p0, LFx;->a:LFw;

    invoke-static {v0}, LFw;->b(LFw;)LDd;

    move-result-object v2

    iget-object v0, p0, LFx;->a:LFw;

    invoke-static {v0}, LFw;->c(LFw;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, LFx;->a:LFw;

    invoke-static {v3}, LFw;->d(LFw;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, LFw;->a(LDd;Landroid/view/View;I)V

    .line 48
    :cond_0
    iget-object v0, p0, LFx;->a:LFw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LFw;->a(LFw;I)I

    .line 49
    return-void
.end method
