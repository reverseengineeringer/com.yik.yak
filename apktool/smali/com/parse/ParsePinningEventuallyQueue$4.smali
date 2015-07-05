.class Lcom/parse/ParsePinningEventuallyQueue$4;
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

.field final synthetic val$command:Lcom/parse/ParseCommand;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseCommand;Lcom/parse/ParseObject;Lad;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$command:Lcom/parse/ParseCommand;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$object:Lcom/parse/ParseObject;

    iput-object p4, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$tcs:Lad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 4
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
    .line 195
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$command:Lcom/parse/ParseCommand;

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$object:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$tcs:Lad;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;LR;Lad;)LR;
    invoke-static {v0, v1, v2, p1, v3}, Lcom/parse/ParsePinningEventuallyQueue;->access$100(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseCommand;Lcom/parse/ParseObject;LR;Lad;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$4;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
