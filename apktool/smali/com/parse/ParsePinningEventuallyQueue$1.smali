.class Lcom/parse/ParsePinningEventuallyQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ConnectivityNotifier$ConnectivityListener;


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkConnectivityStatusChanged(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "noConnectivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ConnectivityNotifier;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    goto :goto_0
.end method
