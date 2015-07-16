.class Lcom/parse/ParsePinningEventuallyQueue$9;
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

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$9;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$9;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$9;->val$uuid:Ljava/lang/String;

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
    .line 298
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$9;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$9;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;LN;)LN;
    invoke-static {v0, v1, p1}, Lcom/parse/ParsePinningEventuallyQueue;->access$700(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;LN;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$9$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$9$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$9;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$9;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
