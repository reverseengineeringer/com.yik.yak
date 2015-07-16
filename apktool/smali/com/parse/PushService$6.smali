.class Lcom/parse/PushService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Boolean;",
        "LN",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$forceEnabledCapture:LL;


# direct methods
.method constructor <init>(Lcom/parse/PushService;LL;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/parse/PushService$6;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$6;->val$forceEnabledCapture:LL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "LN",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/parse/PushService$6;->val$forceEnabledCapture:LL;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LL;->a(Ljava/lang/Object;)V

    .line 464
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/parse/PushService$6;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
