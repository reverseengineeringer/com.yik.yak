.class Lcom/parse/OfflineStore$OfflineDecoder;
.super Lcom/parse/ParseDecoder;
.source "SourceFile"


# instance fields
.field private offlineObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LN",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method private constructor <init>(Lcom/parse/OfflineStore;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LN",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineDecoder;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Lcom/parse/ParseDecoder;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineDecoder;->offlineObjects:Ljava/util/Map;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/OfflineStore;Ljava/util/Map;Lcom/parse/OfflineStore$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore$OfflineDecoder;-><init>(Lcom/parse/OfflineStore;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
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

    .line 101
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineDecoder;->offlineObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    invoke-virtual {v0}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
