.class Lcom/parse/ParseSQLiteDatabase$12;
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
        "Landroid/database/Cursor;",
        "LN",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$12;->this$0:Lcom/parse/ParseSQLiteDatabase;

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
            "Landroid/database/Cursor;",
            ">;)",
            "LN",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$12$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseSQLiteDatabase$12$1;-><init>(Lcom/parse/ParseSQLiteDatabase$12;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$12;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
