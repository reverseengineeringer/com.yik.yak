.class Lcom/facebook/Session$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 5

    .prologue
    .line 610
    invoke-static {p1}, Lcom/facebook/Session;->handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    # getter for: Lcom/facebook/Session;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/facebook/Session;->access$200(Lcom/facebook/Session;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    # getter for: Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
    invoke-static {v3}, Lcom/facebook/Session;->access$300(Lcom/facebook/Session;)Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/Session$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/Session$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/facebook/AccessToken;->createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    # setter for: Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
    invoke-static {v2, v0}, Lcom/facebook/Session;->access$302(Lcom/facebook/Session;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    .line 616
    iget-object v0, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    # getter for: Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    invoke-static {v2}, Lcom/facebook/Session;->access$400(Lcom/facebook/Session;)Lcom/facebook/SessionState;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 617
    monitor-exit v1

    .line 619
    :cond_0
    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
