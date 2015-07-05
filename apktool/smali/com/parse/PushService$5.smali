.class Lcom/parse/PushService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$conn:Lcom/parse/PushConnection;

.field final synthetic val$forceEnabledCapture:LP;


# direct methods
.method constructor <init>(Lcom/parse/PushService;LP;Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/parse/PushService$5;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$5;->val$forceEnabledCapture:LP;

    iput-object p3, p0, Lcom/parse/PushService$5;->val$conn:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/parse/PushService$5;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v0, p0, Lcom/parse/PushService$5;->val$forceEnabledCapture:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 470
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v3

    .line 471
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 476
    if-nez v3, :cond_0

    .line 477
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 478
    const-string v0, "Not starting PushService because this device has no subscriptions"

    .line 492
    :goto_0
    if-eqz v0, :cond_2

    .line 493
    const-string v1, "com.parse.PushService"

    invoke-static {v1, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/parse/PushService$5;->this$0:Lcom/parse/PushService;

    invoke-virtual {v0}, Lcom/parse/PushService;->stopSelf()V

    .line 499
    :goto_1
    return-object v2

    .line 484
    :cond_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 485
    const-string v0, "Not starting PushService because this device is not registered for push notifications."

    goto :goto_0

    .line 487
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 488
    const-string v0, "Not starting PushService because push has been manually disabled."

    goto :goto_0

    .line 496
    :cond_2
    const-string v0, "com.parse.PushService"

    const-string v1, "Starting PushService."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/parse/PushService$5;->val$conn:Lcom/parse/PushConnection;

    invoke-virtual {v0}, Lcom/parse/PushConnection;->start()V

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
