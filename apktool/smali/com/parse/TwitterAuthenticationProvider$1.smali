.class Lcom/parse/TwitterAuthenticationProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/internal/AsyncCallback;


# instance fields
.field final synthetic this$0:Lcom/parse/TwitterAuthenticationProvider;

.field final synthetic val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iput-object p2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    # invokes: Lcom/parse/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    invoke-static {v0, v1}, Lcom/parse/TwitterAuthenticationProvider;->access$000(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 44
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0}, Lcom/parse/TwitterAuthenticationProvider;->access$100(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eq v0, v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0, p1}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0, v2}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v1, v2}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0}, Lcom/parse/TwitterAuthenticationProvider;->access$100(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eq v0, v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v1}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/twitter/Twitter;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v2}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v3}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/twitter/Twitter;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v4}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/twitter/Twitter;->getAuthTokenSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v1, v0}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0, v5}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v1, v0}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0, v5}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v1, v5}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method
