.class Lcom/parse/ParseObject$11;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$11;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
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
    .line 1389
    iget-object v0, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1396
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$300(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject$11;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)LN;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$400(Ljava/lang/Object;Ljava/lang/String;)LN;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1397
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
    .line 1386
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$11;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
