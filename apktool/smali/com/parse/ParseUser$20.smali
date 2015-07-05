.class Lcom/parse/ParseUser$20;
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
        "Lcom/parse/ParseOperationSet;",
        "LR",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$operations:LP;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;LP;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$20;->val$operations:LP;

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
            "Lcom/parse/ParseOperationSet;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/parse/ParseUser$20;->val$operations:LP;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LP;->a(Ljava/lang/Object;)V

    .line 1388
    iget-object v1, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v0, p0, Lcom/parse/ParseUser$20;->val$operations:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParseUser;->constructSignUpOrLoginCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;
    invoke-static {v1, v0}, Lcom/parse/ParseUser;->access$900(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1389
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$20;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
