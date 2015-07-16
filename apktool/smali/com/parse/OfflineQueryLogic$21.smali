.class Lcom/parse/OfflineQueryLogic$21;
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

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$include:Ljava/lang/String;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$21;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$21;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$21;->val$include:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$21;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 1028
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$21;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$21;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$21;->val$include:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$21;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$21;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
