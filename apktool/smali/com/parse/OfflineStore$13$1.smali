.class Lcom/parse/OfflineStore$13$1;
.super Lcom/parse/ParseTraverser;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$13;

.field final synthetic val$offlineObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$13;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/parse/OfflineStore$13$1;->this$1:Lcom/parse/OfflineStore$13;

    iput-object p2, p0, Lcom/parse/OfflineStore$13$1;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 771
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "__type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/parse/OfflineStore$13$1;->val$offlineObjects:Ljava/util/Map;

    iget-object v2, p0, Lcom/parse/OfflineStore$13$1;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v2, v2, Lcom/parse/OfflineStore$13;->this$0:Lcom/parse/OfflineStore;

    iget-object v3, p0, Lcom/parse/OfflineStore$13$1;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v3, v3, Lcom/parse/OfflineStore$13;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LR;
    invoke-static {v2, v0, v3}, Lcom/parse/OfflineStore;->access$600(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LR;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
