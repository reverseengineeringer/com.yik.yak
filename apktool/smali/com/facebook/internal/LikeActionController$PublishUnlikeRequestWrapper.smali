.class Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;
.super Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field private unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1213
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    .line 1214
    invoke-direct {p0, p1, v3}, Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 1216
    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1218
    new-instance v0, Lcom/facebook/Request;

    # getter for: Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$2700(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/Session;

    move-result-object v1

    sget-object v2, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v1, p2, v3, v2}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;->setRequest(Lcom/facebook/Request;)V

    .line 1219
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1227
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error unliking object with unlike token \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v1, "publish_unlike"

    # invokes: Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/LikeActionController;->access$2600(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1231
    return-void
.end method

.method protected processSuccess(Lcom/facebook/Response;)V
    .locals 0

    .prologue
    .line 1223
    return-void
.end method
