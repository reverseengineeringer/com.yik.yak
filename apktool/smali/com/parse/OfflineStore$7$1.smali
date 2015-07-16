.class Lcom/parse/OfflineStore$7$1;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$7;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$7;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/parse/OfflineStore$7$1;->this$1:Lcom/parse/OfflineStore$7;

    iput-object p2, p0, Lcom/parse/OfflineStore$7$1;->val$object:Lcom/parse/ParseObject;

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
    .line 528
    iget-object v0, p0, Lcom/parse/OfflineStore$7$1;->this$1:Lcom/parse/OfflineStore$7;

    iget-object v0, v0, Lcom/parse/OfflineStore$7;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineStore$7$1;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$7$1;->this$1:Lcom/parse/OfflineStore$7;

    iget-object v2, v2, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    iget-object v3, p0, Lcom/parse/OfflineStore$7$1;->this$1:Lcom/parse/OfflineStore$7;

    iget-object v3, v3, Lcom/parse/OfflineStore$7;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->fetchIncludes(Lcom/parse/ParseObject;Lcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$7$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
