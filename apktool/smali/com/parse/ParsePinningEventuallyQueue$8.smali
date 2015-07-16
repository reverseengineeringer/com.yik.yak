.class Lcom/parse/ParsePinningEventuallyQueue$8;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$8;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$8;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/EventuallyPin;->findAllPinned(Ljava/util/Collection;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$8;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
