.class Lcom/parse/ParseObject$34$1;
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
.field final synthetic this$0:Lcom/parse/ParseObject$34;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$34;)V
    .locals 0

    .prologue
    .line 2057
    iput-object p1, p0, Lcom/parse/ParseObject$34$1;->this$0:Lcom/parse/ParseObject$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 1
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
    .line 2061
    new-instance v0, Lcom/parse/ParseObject$34$1$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$34$1$1;-><init>(Lcom/parse/ParseObject$34$1;)V

    invoke-virtual {p1, v0}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$34$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
