.class Lcom/parse/OfflineStore$8$4;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/parse/OfflineStore$8$4;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$4;->val$uuid:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parse/OfflineStore$8$4;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v0, v0, Lcom/parse/OfflineStore$8;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$8$4;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineStore$8$4;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v2, v2, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineStore;->access$600(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$4;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
