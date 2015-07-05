.class Lcom/parse/ParsePinningEventuallyQueue$2;
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
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lad;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$2;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$2;->val$tcs:Lad;

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
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$2;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync(LR;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$2$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$2$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$2;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
