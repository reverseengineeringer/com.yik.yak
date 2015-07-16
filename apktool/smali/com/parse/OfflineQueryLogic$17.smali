.class Lcom/parse/OfflineQueryLogic$17;
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
        "Ljava/lang/Void;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$array:Lorg/json/JSONArray;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$index:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lorg/json/JSONArray;ILjava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$17;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$17;->val$array:Lorg/json/JSONArray;

    iput p3, p0, Lcom/parse/OfflineQueryLogic$17;->val$index:I

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$17;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/OfflineQueryLogic$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$17;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$17;->val$array:Lorg/json/JSONArray;

    iget v2, p0, Lcom/parse/OfflineQueryLogic$17;->val$index:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$17;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$17;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
