.class Lcom/parse/ParsePinningEventuallyQueue$2$1;
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
        "Ljava/lang/Integer;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$2;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$2;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$2$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$2;

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
            "Ljava/lang/Integer;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$2$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$2;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$2;->val$tcs:Lad;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lad;->b(Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$2$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
