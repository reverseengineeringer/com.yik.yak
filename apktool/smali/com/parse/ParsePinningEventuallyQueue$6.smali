.class Lcom/parse/ParsePinningEventuallyQueue$6;
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


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$6;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

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
    .line 254
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$6;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync(LR;)LR;
    invoke-static {v0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->access$400(Lcom/parse/ParsePinningEventuallyQueue;LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$6;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method