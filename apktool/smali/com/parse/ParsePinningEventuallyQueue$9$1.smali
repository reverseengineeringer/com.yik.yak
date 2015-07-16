.class Lcom/parse/ParsePinningEventuallyQueue$9$1;
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
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$9;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$9;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$9$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 2
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
    .line 301
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$9$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$9;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$9;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$9$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$9;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$9;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$9$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
