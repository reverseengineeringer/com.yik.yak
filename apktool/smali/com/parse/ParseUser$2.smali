.class Lcom/parse/ParseUser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TT;",
        "LR",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TT;>;)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    .line 518
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LR;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$2$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseUser$2$1;-><init>(Lcom/parse/ParseUser$2;LR;)V

    invoke-virtual {v0, v2}, LR;->b(LQ;)LR;

    move-result-object p1

    monitor-exit v1

    .line 526
    :goto_0
    return-object p1

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
