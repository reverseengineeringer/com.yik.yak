.class Lcom/parse/ParsePinningEventuallyQueue$10;
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
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

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
    .line 326
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$10$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$10;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
