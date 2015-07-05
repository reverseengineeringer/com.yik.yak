.class Lcom/parse/ParseSQLiteDatabase$23$1;
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
        "Ljava/lang/Integer;",
        "LR",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseSQLiteDatabase$23;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase$23;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$23$1;->this$1:Lcom/parse/ParseSQLiteDatabase$23;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$23$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "LR",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$23$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$23$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
