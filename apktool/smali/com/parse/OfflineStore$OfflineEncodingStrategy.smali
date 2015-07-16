.class Lcom/parse/OfflineStore$OfflineEncodingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseObjectEncodingStrategy;


# instance fields
.field private db:Lcom/parse/ParseSQLiteDatabase;

.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tasksLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;

    .line 130
    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->db:Lcom/parse/ParseSQLiteDatabase;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v1, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v1, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    const-string v1, "__type"

    const-string v2, "OfflineObject"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    iget-object v2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->this$0:Lcom/parse/OfflineStore;

    iget-object v4, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v3, p1, v4}, Lcom/parse/OfflineStore;->access$200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;

    invoke-direct {v4, p0, v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;-><init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, LN;->c(LM;)LN;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whenFinished()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;-><init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method
