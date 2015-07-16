.class Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;
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
        "Ljava/lang/Void;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    # getter for: Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->access$000(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    # getter for: Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->access$100(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 144
    invoke-virtual {v0}, LN;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, LN;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    :cond_1
    monitor-exit v1

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    # getter for: Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->access$100(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
