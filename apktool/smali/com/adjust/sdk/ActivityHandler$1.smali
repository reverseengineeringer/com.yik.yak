.class Lcom/adjust/sdk/ActivityHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$deepLink:Ljava/lang/String;

.field final synthetic val$responseData:Lcom/adjust/sdk/ResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$1;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$1;->val$responseData:Lcom/adjust/sdk/ResponseData;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$1;->val$deepLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$1;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$1;->val$responseData:Lcom/adjust/sdk/ResponseData;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->runDelegateMain(Lcom/adjust/sdk/ResponseData;)V
    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$000(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 174
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$1;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$1;->val$deepLink:Ljava/lang/String;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->launchDeepLinkMain(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$100(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
