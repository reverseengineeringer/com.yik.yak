.class Lcom/parse/ParseObject$29;
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
        "Ljava/lang/Object;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

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
            "Ljava/lang/Object;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/parse/ParseObject;->handleDeleteResultAsync(Ljava/lang/Object;)LR;
    invoke-static {v0, v1}, Lcom/parse/ParseObject;->access$1000(Lcom/parse/ParseObject;Ljava/lang/Object;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1955
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$29;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
