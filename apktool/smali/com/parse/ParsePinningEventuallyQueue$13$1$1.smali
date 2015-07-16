.class Lcom/parse/ParsePinningEventuallyQueue$13$1$1;
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
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

.field final synthetic val$saveTask:LN;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;LN;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->val$saveTask:LN;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->val$saveTask:LN;

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
