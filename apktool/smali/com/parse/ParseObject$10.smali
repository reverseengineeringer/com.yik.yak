.class Lcom/parse/ParseObject$10;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:LL;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;LL;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$10;->val$operations:LL;

    iput-object p3, p0, Lcom/parse/ParseObject$10;->val$sessionToken:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    iget-object v0, p0, Lcom/parse/ParseObject$10;->val$operations:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    iget-object v2, p0, Lcom/parse/ParseObject$10;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$10$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$10$1;-><init>(Lcom/parse/ParseObject$10;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1400
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
