.class Lcom/facebook/internal/LikeActionController$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/RequestBatch$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field final synthetic val$completionHandler:Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;

.field final synthetic val$objectIdRequest:Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;

.field final synthetic val$pageIdRequest:Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$10;->val$objectIdRequest:Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iput-object p3, p0, Lcom/facebook/internal/LikeActionController$10;->val$pageIdRequest:Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;

    iput-object p4, p0, Lcom/facebook/internal/LikeActionController$10;->val$completionHandler:Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/RequestBatch;)V
    .locals 6

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$10;->val$objectIdRequest:Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v1, v1, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    # setter for: Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$1902(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$10;->val$pageIdRequest:Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v1, v1, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    # setter for: Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$1902(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$10;->val$pageIdRequest:Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-boolean v1, v1, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;->objectIsPage:Z

    # setter for: Lcom/facebook/internal/LikeActionController;->objectIsPage:Z
    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$2502(Lcom/facebook/internal/LikeActionController;Z)Z

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/internal/LikeActionController;->access$2400(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$10;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v2, "get_verified_id"

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->val$pageIdRequest:Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->val$pageIdRequest:Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    :goto_0
    # invokes: Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/LikeActionController;->access$2600(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->val$completionHandler:Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;

    if-eqz v0, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->val$completionHandler:Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;

    invoke-interface {v0}, Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    .line 1058
    :cond_2
    return-void

    .line 1051
    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$10;->val$objectIdRequest:Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    goto :goto_0
.end method
