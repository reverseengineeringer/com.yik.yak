.class Lcom/parse/PushRouter$15;
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
        "Lcom/parse/ParseObject;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushRouter;


# direct methods
.method constructor <init>(Lcom/parse/PushRouter;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/parse/PushRouter$15;->this$0:Lcom/parse/PushRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$15;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/parse/PushRouter$15;->this$0:Lcom/parse/PushRouter;

    # getter for: Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/parse/PushRouter;->access$500(Lcom/parse/PushRouter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 853
    const/4 v0, 0x0

    return-object v0
.end method
