.class Lcom/parse/ParseUser$17;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1364
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$17;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1368
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseUser;->isLazy:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1402(Lcom/parse/ParseUser;Z)Z

    .line 1369
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
