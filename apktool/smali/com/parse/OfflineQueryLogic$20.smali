.class Lcom/parse/OfflineQueryLogic$20;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$container:Ljava/lang/Object;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$20;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$20;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    instance-of v0, v0, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$20;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$20$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineQueryLogic$20$1;-><init>(Lcom/parse/OfflineQueryLogic$20;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    .line 1005
    :goto_0
    return-object v0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    goto :goto_0

    .line 1005
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "include is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 989
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$20;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
