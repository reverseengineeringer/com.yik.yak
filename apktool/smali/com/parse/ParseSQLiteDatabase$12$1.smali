.class Lcom/parse/ParseSQLiteDatabase$12$1;
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
        "Ljava/lang/Integer;",
        "LN",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseSQLiteDatabase$12;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase$12;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$12$1;->this$1:Lcom/parse/ParseSQLiteDatabase$12;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$12$1;->val$cursor:Landroid/database/Cursor;

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
            "Ljava/lang/Integer;",
            ">;)",
            "LN",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$12$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$12$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
