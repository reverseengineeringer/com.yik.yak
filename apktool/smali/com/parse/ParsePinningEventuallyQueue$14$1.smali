.class Lcom/parse/ParsePinningEventuallyQueue$14$1;
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
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$14;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$14;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$14$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$14;

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
    .line 547
    invoke-static {}, Lcom/parse/EventuallyPin;->findAllPinned()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$14$1;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$14$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
