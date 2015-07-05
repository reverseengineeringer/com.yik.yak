.class Lcom/parse/ParseSQLiteOpenHelper$3;
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
        "Ljava/lang/Object;",
        "LR",
        "<",
        "Ljava/lang/Void;",
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
    .line 77
    iput-object p1, p0, Lcom/parse/ParseSQLiteOpenHelper$3;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    iput-object p2, p0, Lcom/parse/ParseSQLiteOpenHelper$3;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$3;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iget-object v1, p0, Lcom/parse/ParseSQLiteOpenHelper$3;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    # getter for: Lcom/parse/ParseSQLiteOpenHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v1}, Lcom/parse/ParseSQLiteOpenHelper;->access$000(Lcom/parse/ParseSQLiteOpenHelper;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseSQLiteDatabase;->open(Landroid/database/sqlite/SQLiteOpenHelper;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteOpenHelper$3;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
