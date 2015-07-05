.class Lcom/parse/ParseObject$37$2$3$1;
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
.field final synthetic this$2:Lcom/parse/ParseObject$37$2$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37$2$3;)V
    .locals 0

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 4
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
    .line 2336
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2337
    iget-object v2, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2338
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateSave()V

    .line 2339
    iget-object v3, p0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v3, v3, Lcom/parse/ParseObject$37$2$3;->val$operations:Ljava/util/List;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2340
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2343
    :cond_0
    new-instance v0, Lcom/parse/ParseObject$37$2$3$1$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$37$2$3$1$1;-><init>(Lcom/parse/ParseObject$37$2$3$1;)V

    invoke-virtual {p1, v0}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2333
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37$2$3$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
