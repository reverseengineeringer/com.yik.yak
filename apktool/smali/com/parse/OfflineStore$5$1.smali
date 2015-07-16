.class Lcom/parse/OfflineStore$5$1;
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
        "Ljava/util/List",
        "<TT;>;",
        "LN",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$5;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$5;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/parse/OfflineStore$5$1;->this$1:Lcom/parse/OfflineStore$5;

    iput-object p2, p0, Lcom/parse/OfflineStore$5$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/parse/OfflineStore$5$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->close()LN;

    .line 386
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$5$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
