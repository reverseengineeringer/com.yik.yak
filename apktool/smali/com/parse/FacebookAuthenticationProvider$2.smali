.class Lcom/parse/FacebookAuthenticationProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic this$0:Lcom/parse/FacebookAuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/parse/FacebookAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 130
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    # getter for: Lcom/parse/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0}, Lcom/parse/FacebookAuthenticationProvider;->access$300(Lcom/parse/FacebookAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "me"

    new-instance v1, Lcom/parse/FacebookAuthenticationProvider$2$1;

    invoke-direct {v1, p0}, Lcom/parse/FacebookAuthenticationProvider$2$1;-><init>(Lcom/parse/FacebookAuthenticationProvider$2;)V

    invoke-static {p1, v0, v1}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fields"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0

    .line 154
    :cond_2
    if-eqz p3, :cond_3

    .line 155
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p3}, Lcom/parse/FacebookAuthenticationProvider;->access$200(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleCancel()V
    invoke-static {v0}, Lcom/parse/FacebookAuthenticationProvider;->access$400(Lcom/parse/FacebookAuthenticationProvider;)V

    goto :goto_0
.end method
