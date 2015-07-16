.class Lcom/parse/ParseCommandCache$4;
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
        "Ljava/lang/Object;",
        "LN",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$localId:Ljava/lang/String;

.field final synthetic val$tcs:LZ;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;LZ;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:LZ;

    iput-object p3, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

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
            "Ljava/lang/Object;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    .line 496
    if-eqz v1, :cond_2

    .line 497
    instance-of v0, v1, Lcom/parse/ParseException;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-object p1

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:LZ;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:LZ;

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    .line 509
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:LZ;

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:LZ;

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 513
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "objectId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    check-cast v1, Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/parse/ParseCommandCache$4;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
