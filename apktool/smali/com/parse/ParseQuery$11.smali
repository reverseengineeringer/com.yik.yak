.class Lcom/parse/ParseQuery$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/parse/ParseQuery$11;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 5

    .prologue
    const/16 v4, 0x78

    .line 825
    iget-object v0, p0, Lcom/parse/ParseQuery$11;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/parse/ParseQuery;->makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    invoke-static {v0, v1}, Lcom/parse/ParseQuery;->access$1100(Lcom/parse/ParseQuery;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/parse/ParseQuery$11;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->maxCacheAge:J
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$1000(Lcom/parse/ParseQuery;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parse/Parse;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 827
    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "results not cached"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 831
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "the cache contains the wrong datatype"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .line 836
    :try_start_0
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 838
    :catch_0
    move-exception v0

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "the cache contains corrupted json"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/parse/ParseQuery$11;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
