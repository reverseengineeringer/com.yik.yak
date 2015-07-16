.class Lcom/parse/OfflineStore$13;
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
        "Ljava/lang/String;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/parse/OfflineStore$13;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$13;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p3, p0, Lcom/parse/OfflineStore$13;->val$object:Lcom/parse/ParseObject;

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
            "Ljava/lang/String;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 742
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    if-nez v0, :cond_0

    .line 749
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x78

    const-string v2, "Attempted to fetch an object offline which was never saved to the offline cache."

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    .line 780
    :goto_0
    return-object v0

    .line 759
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 768
    new-instance v2, Lcom/parse/OfflineStore$13$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$13$1;-><init>(Lcom/parse/OfflineStore$13;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/parse/OfflineStore$13$1;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/parse/ParseTraverser;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 780
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v2

    new-instance v3, Lcom/parse/OfflineStore$13$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/parse/OfflineStore$13$2;-><init>(Lcom/parse/OfflineStore$13;Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$13;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
