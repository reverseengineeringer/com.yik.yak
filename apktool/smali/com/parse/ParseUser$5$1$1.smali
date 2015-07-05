.class Lcom/parse/ParseUser$5$1$1;
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
.field final synthetic this$2:Lcom/parse/ParseUser$5$1;

.field final synthetic val$signUpTask:LR;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$5$1;LR;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iput-object p2, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LR;

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
    .line 714
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LR;

    invoke-virtual {v0}, LR;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LR;

    invoke-virtual {v0}, LR;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    const/4 v1, 0x1

    # setter for: Lcom/parse/ParseUser;->isNew:Z
    invoke-static {v0, v1}, Lcom/parse/ParseUser;->access$302(Lcom/parse/ParseUser;Z)Z

    .line 716
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    const/4 v1, 0x0

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v0, v1}, Lcom/parse/ParseUser;->access$402(Lcom/parse/ParseUser;Z)Z

    .line 717
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LR;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LR;

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5$1$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
