.class Lcom/parse/ParseUser$5;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$5;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 702
    iget-object v1, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$5;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->constructSignUpCommand(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lcom/parse/ParseCommand;
    invoke-static {v1, v0, v2}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v1

    .line 703
    if-nez v1, :cond_0

    .line 704
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 706
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$5$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$5$1;-><init>(Lcom/parse/ParseUser$5;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v1, v2}, LR;->b(LQ;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
