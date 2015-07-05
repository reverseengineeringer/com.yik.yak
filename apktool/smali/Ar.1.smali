.class LAr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic a:LAq;


# direct methods
.method constructor <init>(LAq;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, LAr;->a:LAq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, LAr;->a:LAq;

    invoke-static {v0}, LAq;->a(LAq;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 74
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 75
    iget-object v1, p0, LAr;->a:LAq;

    invoke-static {v1}, LAq;->a(LAq;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 77
    :cond_0
    return-void
.end method
