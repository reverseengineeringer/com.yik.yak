.class Lcom/parse/ParseSQLiteOpenHelper$2;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteOpenHelper;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteOpenHelper;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parse/ParseSQLiteOpenHelper$2;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    iput-object p2, p0, Lcom/parse/ParseSQLiteOpenHelper$2;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$2;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteOpenHelper$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
