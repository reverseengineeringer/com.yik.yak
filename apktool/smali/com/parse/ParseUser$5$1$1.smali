.class Lcom/parse/ParseUser$5$1$1;
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
.field final synthetic this$2:Lcom/parse/ParseUser$5$1;

.field final synthetic val$signUpTask:LN;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$5$1;LN;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iput-object p2, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LN;

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
    .line 714
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LN;

    invoke-virtual {v0}, LN;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LN;

    invoke-virtual {v0}, LN;->d()Z

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

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LN;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)LN;

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:LN;

    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
