.class Lcom/parse/ParseQuery$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TTResult;",
        "LR",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/parse/ParseQuery$12;->this$0:Lcom/parse/ParseQuery;

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
            "<TTResult;>;)",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/parse/ParseQuery$12;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1200(Lcom/parse/ParseQuery;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery$12;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseQuery;->isRunning:Z
    invoke-static {v0, v2}, Lcom/parse/ParseQuery;->access$1302(Lcom/parse/ParseQuery;Z)Z

    .line 867
    iget-object v0, p0, Lcom/parse/ParseQuery$12;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v0, v2}, Lcom/parse/ParseQuery;->access$402(Lcom/parse/ParseQuery;Lcom/parse/ParseCommand;)Lcom/parse/ParseCommand;

    .line 868
    monitor-exit v1

    .line 869
    return-object p1

    .line 868
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
    .line 862
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$12;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
