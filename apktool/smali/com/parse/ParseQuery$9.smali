.class Lcom/parse/ParseQuery$9;
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
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/parse/ParseQuery$9;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/parse/ParseQuery$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x78

    .line 773
    iget-object v0, p0, Lcom/parse/ParseQuery$9;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    invoke-static {v0, v1}, Lcom/parse/ParseQuery;->access$900(Lcom/parse/ParseQuery;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/parse/ParseQuery$9;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->maxCacheAge:J
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$1000(Lcom/parse/ParseQuery;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parse/Parse;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 775
    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "results not cached"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 779
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "the cache contains the wrong datatype"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 782
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseQuery$9;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/parse/ParseQuery;->access$800(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 786
    :catch_0
    move-exception v0

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "the cache contains corrupted json"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
