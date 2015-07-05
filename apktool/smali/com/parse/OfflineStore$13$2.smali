.class Lcom/parse/OfflineStore$13$2;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$13;

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$offlineObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$13;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/parse/OfflineStore$13$2;->this$1:Lcom/parse/OfflineStore$13;

    iput-object p2, p0, Lcom/parse/OfflineStore$13$2;->val$json:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$13$2;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$13$2;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 783
    iget-object v0, p0, Lcom/parse/OfflineStore$13$2;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v0, v0, Lcom/parse/OfflineStore$13;->val$object:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineStore$13$2;->val$json:Lorg/json/JSONObject;

    new-instance v2, Lcom/parse/OfflineStore$OfflineDecoder;

    iget-object v3, p0, Lcom/parse/OfflineStore$13$2;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v3, v3, Lcom/parse/OfflineStore$13;->this$0:Lcom/parse/OfflineStore;

    iget-object v4, p0, Lcom/parse/OfflineStore$13$2;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5}, Lcom/parse/OfflineStore$OfflineDecoder;-><init>(Lcom/parse/OfflineStore;Ljava/util/Map;Lcom/parse/OfflineStore$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 784
    return-object v5
.end method
