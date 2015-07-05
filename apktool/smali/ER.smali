.class LER;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEQ;


# direct methods
.method constructor <init>(LEQ;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, LER;->a:LEQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, LER;->a:LEQ;

    invoke-static {v0}, LEQ;->a(LEQ;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v1, p0, LER;->a:LEQ;

    iget-object v0, p0, LER;->a:LEQ;

    invoke-static {v0}, LEQ;->b(LEQ;)LCQ;

    move-result-object v2

    iget-object v0, p0, LER;->a:LEQ;

    invoke-static {v0}, LEQ;->c(LEQ;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, LER;->a:LEQ;

    invoke-static {v3}, LEQ;->d(LEQ;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, LEQ;->a(LCQ;Landroid/view/View;I)V

    .line 48
    :cond_0
    iget-object v0, p0, LER;->a:LEQ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LEQ;->a(LEQ;I)I

    .line 49
    return-void
.end method
