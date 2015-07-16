.class final Lcom/parse/Parse$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/ParseCallback;

.field final synthetic val$reportCancellation:Z

.field final synthetic val$tcs:LZ;


# direct methods
.method constructor <init>(ZLZ;Lcom/parse/ParseCallback;)V
    .locals 0

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/parse/Parse$6;->val$reportCancellation:Z

    iput-object p2, p0, Lcom/parse/Parse$6;->val$tcs:LZ;

    iput-object p3, p0, Lcom/parse/Parse$6;->val$callback:Lcom/parse/ParseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Lcom/parse/Parse$6;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 928
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/Parse$6;->val$reportCancellation:Z

    if-nez v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/parse/Parse$6;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->c()V

    .line 952
    :goto_0
    return-object v2

    .line 932
    :cond_0
    sget-object v0, LN;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/parse/Parse$6$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/Parse$6$1;-><init>(Lcom/parse/Parse$6;LN;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
