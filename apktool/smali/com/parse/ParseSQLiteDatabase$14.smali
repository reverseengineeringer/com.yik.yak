.class Lcom/parse/ParseSQLiteDatabase$14;
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
    .line 223
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$14;->this$0:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 0
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
    .line 227
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$14;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
