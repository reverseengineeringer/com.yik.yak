.class LeW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:LeU;


# direct methods
.method constructor <init>(LeU;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, LeW;->a:LeU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_0

    invoke-static {}, LeU;->f()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lfl;->a(Z)V

    .line 111
    iget-object v0, p0, LeW;->a:LeU;

    invoke-virtual {v0}, LeU;->c()V

    .line 112
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfl;->a(Z)V

    .line 113
    iget-object v0, p0, LeW;->a:LeU;

    invoke-static {v0}, LeU;->b(LeU;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LeW;->a:LeU;

    invoke-static {v0}, LeU;->c(LeU;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, LeW;->a:LeU;

    invoke-static {v0}, LeU;->d(LeU;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LeW;->a:LeU;

    invoke-static {v1}, LeU;->d(LeU;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, LeU;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, LeW;->a:LeU;

    invoke-static {v2}, LeU;->b(LeU;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    :cond_0
    return v4
.end method
