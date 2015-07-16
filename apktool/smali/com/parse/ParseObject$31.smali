.class Lcom/parse/ParseObject$31;
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


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1942
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1943
    iget-object v0, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1944
    const/4 p1, 0x0

    monitor-exit v1

    .line 1946
    :goto_0
    return-object p1

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 1947
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
    .line 1938
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$31;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
