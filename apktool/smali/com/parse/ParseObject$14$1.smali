.class Lcom/parse/ParseObject$14$1;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$14;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$14;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/parse/ParseObject$14$1;->this$1:Lcom/parse/ParseObject$14;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1562
    iget-object v1, p0, Lcom/parse/ParseObject$14$1;->this$1:Lcom/parse/ParseObject$14;

    iget-object v1, v1, Lcom/parse/ParseObject$14;->val$operationSet:Lcom/parse/ParseOperationSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1558
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$14$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
