.class Lcom/parse/PushService$6;
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
        "Ljava/lang/Boolean;",
        "LR",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$forceEnabledCapture:LP;


# direct methods
.method constructor <init>(Lcom/parse/PushService;LP;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/parse/PushService$6;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$6;->val$forceEnabledCapture:LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "LR",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/parse/PushService$6;->val$forceEnabledCapture:LP;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LP;->a(Ljava/lang/Object;)V

    .line 464
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/parse/PushService$6;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
