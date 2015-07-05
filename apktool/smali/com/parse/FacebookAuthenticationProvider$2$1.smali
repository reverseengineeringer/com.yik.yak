.class Lcom/parse/FacebookAuthenticationProvider$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic this$1:Lcom/parse/FacebookAuthenticationProvider$2;


# direct methods
.method constructor <init>(Lcom/parse/FacebookAuthenticationProvider$2;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parse/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/FacebookAuthenticationProvider$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/FacebookAuthenticationProvider$2;

    iget-object v0, v0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/parse/FacebookAuthenticationProvider;->access$200(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/FacebookAuthenticationProvider$2;

    iget-object v0, v0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    new-instance v1, Lcom/parse/ParseException;

    const/4 v2, -0x1

    const-string v3, "An error occurred while fetching the Facebook user\'s identity."

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/parse/FacebookAuthenticationProvider;->access$200(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/parse/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/FacebookAuthenticationProvider$2;

    iget-object v1, v0, Lcom/parse/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    const-string v2, "id"

    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/parse/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/parse/FacebookAuthenticationProvider;->access$100(Lcom/parse/FacebookAuthenticationProvider;Ljava/lang/String;)V

    goto :goto_0
.end method
