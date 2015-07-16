.class Lcom/parse/ParsePinningEventuallyQueue$5$1$1;
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
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$5$1;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$5$1;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;->this$2:Lcom/parse/ParsePinningEventuallyQueue$5$1;

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
    .line 232
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;->this$2:Lcom/parse/ParsePinningEventuallyQueue$5$1;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    .line 233
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
