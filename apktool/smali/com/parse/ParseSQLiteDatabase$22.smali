.class Lcom/parse/ParseSQLiteDatabase$22;
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
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$22;->this$0:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    return-object p1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$22;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method