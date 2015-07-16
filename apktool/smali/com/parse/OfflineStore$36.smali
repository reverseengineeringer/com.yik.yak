.class Lcom/parse/OfflineStore$36;
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

.field final synthetic val$jsonObject:LL;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuid:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;LL;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/parse/OfflineStore$36;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$36;->val$uuid:LL;

    iput-object p3, p0, Lcom/parse/OfflineStore$36;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineStore$36;->val$jsonObject:LL;

    iput-object p5, p0, Lcom/parse/OfflineStore$36;->val$object:Lcom/parse/ParseObject;

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
            "Ljava/lang/String;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/parse/OfflineStore$36;->val$uuid:LL;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LL;->a(Ljava/lang/Object;)V

    .line 1236
    new-instance v0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    iget-object v1, p0, Lcom/parse/OfflineStore$36;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$36;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    .line 1237
    iget-object v1, p0, Lcom/parse/OfflineStore$36;->val$jsonObject:LL;

    iget-object v2, p0, Lcom/parse/OfflineStore$36;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, LL;->a(Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->whenFinished()LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$36;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
