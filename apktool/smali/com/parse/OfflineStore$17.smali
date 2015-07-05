.class Lcom/parse/OfflineStore$17;
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
        "Ljava/lang/String;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$encoded:LP;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuid:LP;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;LP;Lcom/parse/ParseSQLiteDatabase;LP;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/parse/OfflineStore$17;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$17;->val$uuid:LP;

    iput-object p3, p0, Lcom/parse/OfflineStore$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineStore$17;->val$encoded:LP;

    iput-object p5, p0, Lcom/parse/OfflineStore$17;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/parse/OfflineStore$17;->val$uuid:LP;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LP;->a(Ljava/lang/Object;)V

    .line 878
    new-instance v0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    iget-object v1, p0, Lcom/parse/OfflineStore$17;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    .line 879
    iget-object v1, p0, Lcom/parse/OfflineStore$17;->val$encoded:LP;

    iget-object v2, p0, Lcom/parse/OfflineStore$17;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, LP;->a(Ljava/lang/Object;)V

    .line 880
    invoke-virtual {v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->whenFinished()LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$17;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
