.class final Lcom/parse/ParseConfig$2;
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
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Lcom/parse/ParseConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseConfig;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 102
    new-instance v1, Lcom/parse/ParseConfig;

    new-instance v2, Lcom/parse/ParseDecoder;

    invoke-direct {v2}, Lcom/parse/ParseDecoder;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/parse/ParseConfig;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 103
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentConfig"

    # invokes: Lcom/parse/ParseConfig;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/parse/ParseConfig;->access$100(Lcom/parse/ParseConfig;Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    # getter for: Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseConfig;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 105
    :try_start_0
    # setter for: Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;
    invoke-static {v1}, Lcom/parse/ParseConfig;->access$302(Lcom/parse/ParseConfig;)Lcom/parse/ParseConfig;

    .line 106
    # getter for: Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;
    invoke-static {}, Lcom/parse/ParseConfig;->access$300()Lcom/parse/ParseConfig;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$2;->then(LR;)Lcom/parse/ParseConfig;

    move-result-object v0

    return-object v0
.end method
