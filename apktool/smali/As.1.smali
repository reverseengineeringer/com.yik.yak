.class LAs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field final synthetic a:LAq;


# direct methods
.method constructor <init>(LAq;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, LAs;->a:LAq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, LAs;->a:LAq;

    invoke-static {v0}, LAq;->a(LAq;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 91
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 92
    iget-object v1, p0, LAs;->a:LAq;

    invoke-static {v1}, LAq;->a(LAq;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 95
    :cond_0
    iget-object v0, p0, LAs;->a:LAq;

    invoke-virtual {v0}, LAq;->h()V

    .line 96
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, LAs;->a:LAq;

    invoke-static {v0}, LAq;->a(LAq;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 102
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 103
    iget-object v1, p0, LAs;->a:LAq;

    invoke-static {v1}, LAq;->a(LAq;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 106
    :cond_0
    iget-object v0, p0, LAs;->a:LAq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAq;->a(LAq;Lcom/yik/yak/data/models/YakkerLocation;)Lcom/yik/yak/data/models/YakkerLocation;

    .line 107
    return-void
.end method
