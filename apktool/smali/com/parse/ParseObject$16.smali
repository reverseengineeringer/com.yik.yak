.class Lcom/parse/ParseObject$16;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$command:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/parse/ParseObject$16;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$16;->val$command:Lcom/parse/ParseCommand;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1660
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1661
    iget-object v1, p0, Lcom/parse/ParseObject$16;->val$command:Lcom/parse/ParseCommand;

    iget-object v2, p0, Lcom/parse/ParseObject$16;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$16;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
