.class Lcom/parse/ParseObject$29;
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
        "Ljava/lang/Object;",
        "LN",
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
.method public then(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/parse/ParseObject;->handleDeleteResultAsync(Ljava/lang/Object;)LN;
    invoke-static {v0, v1}, Lcom/parse/ParseObject;->access$1000(Lcom/parse/ParseObject;Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1955
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$29;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
