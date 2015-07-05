.class Lcom/parse/ParsePinningEventuallyQueue$14$1;
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
.method public then(LR;)LR;
    .locals 2
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
    .line 547
    invoke-static {}, Lcom/parse/EventuallyPin;->findAllPinned()LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$14$1;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$14$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
