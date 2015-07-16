.class Lcom/parse/ParsePinningEventuallyQueue$5;
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

.field final synthetic val$command:Lcom/parse/ParseCommand;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$tcs:LZ;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseObject;Lcom/parse/ParseCommand;LZ;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$5;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$5;->val$command:Lcom/parse/ParseCommand;

    iput-object p4, p0, Lcom/parse/ParsePinningEventuallyQueue$5;->val$tcs:LZ;

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
    .line 207
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$5;->val$object:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$5;->val$command:Lcom/parse/ParseCommand;

    invoke-static {v0, v1}, Lcom/parse/EventuallyPin;->pinEventuallyCommand(Lcom/parse/ParseObject;Lcom/parse/ParseCommand;)LN;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$5$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$5$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$5;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$5;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
