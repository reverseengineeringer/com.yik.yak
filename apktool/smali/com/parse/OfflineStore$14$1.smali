.class Lcom/parse/OfflineStore$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TT;",
        "LN",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$14;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$14;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/parse/OfflineStore$14$1;->this$1:Lcom/parse/OfflineStore$14;

    iput-object p2, p0, Lcom/parse/OfflineStore$14$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "<TT;>;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/parse/OfflineStore$14$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->close()LN;

    .line 820
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 816
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$14$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
