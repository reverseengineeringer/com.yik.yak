.class Lcom/parse/ParseObject$10$1$1;
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
        "Ljava/lang/Void;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseObject$10$1;

.field final synthetic val$saveTask:LR;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$10$1;LR;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/parse/ParseObject$10$1$1;->this$2:Lcom/parse/ParseObject$10$1;

    iput-object p2, p0, Lcom/parse/ParseObject$10$1$1;->val$saveTask:LR;

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
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/parse/ParseObject$10$1$1;->val$saveTask:LR;

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10$1$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
