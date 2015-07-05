.class Lcom/parse/ParseUser$14$2;
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
        "Ljava/lang/Void;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$14;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$14;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/parse/ParseUser$14$2;->this$0:Lcom/parse/ParseUser$14;

    iput-object p2, p0, Lcom/parse/ParseUser$14$2;->val$user:Lcom/parse/ParseUser;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/parse/ParseUser$14$2;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1275
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$14$2;->val$user:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$402(Lcom/parse/ParseUser;Z)Z

    .line 1276
    iget-object v0, p0, Lcom/parse/ParseUser$14$2;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$14$2;->this$0:Lcom/parse/ParseUser$14;

    iget-object v2, v2, Lcom/parse/ParseUser$14;->val$authType:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1000(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/parse/ParseUser$14$2;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LR;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1278
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
    .line 1271
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$14$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
