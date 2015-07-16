.class Lcom/parse/Parse$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/parse/Parse$6;

.field final synthetic val$task:LN;


# direct methods
.method constructor <init>(Lcom/parse/Parse$6;LN;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iput-object p2, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v0}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    .line 937
    if-eqz v1, :cond_4

    instance-of v0, v1, Lcom/parse/ParseException;

    if-nez v0, :cond_4

    .line 938
    new-instance v0, Lcom/parse/ParseException;

    invoke-direct {v0, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 940
    :goto_0
    iget-object v1, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v1, v1, Lcom/parse/Parse$6;->val$callback:Lcom/parse/ParseCallback;

    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v2}, LN;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseCallback;->internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    iget-object v0, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v0}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v0, v0, Lcom/parse/Parse$6;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->c()V

    .line 950
    :goto_1
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v0}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v0, v0, Lcom/parse/Parse$6;->val$tcs:LZ;

    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Exception;)V

    goto :goto_1

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v0, v0, Lcom/parse/Parse$6;->val$tcs:LZ;

    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 942
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v1}, LN;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    iget-object v1, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v1, v1, Lcom/parse/Parse$6;->val$tcs:LZ;

    invoke-virtual {v1}, LZ;->c()V

    .line 947
    :goto_2
    throw v0

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v1}, LN;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 945
    iget-object v1, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v1, v1, Lcom/parse/Parse$6;->val$tcs:LZ;

    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v2}, LN;->f()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, LZ;->b(Ljava/lang/Exception;)V

    goto :goto_2

    .line 947
    :cond_3
    iget-object v1, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v1, v1, Lcom/parse/Parse$6;->val$tcs:LZ;

    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:LN;

    invoke-virtual {v2}, LN;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, LZ;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
