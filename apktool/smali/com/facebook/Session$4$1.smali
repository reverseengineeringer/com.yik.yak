.class Lcom/facebook/Session$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/facebook/Session$4;

.field final synthetic val$callback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Session$4;Lcom/facebook/Session$StatusCallback;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/facebook/Session$4$1;->this$1:Lcom/facebook/Session$4;

    iput-object p2, p0, Lcom/facebook/Session$4$1;->val$callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/facebook/Session$4$1;->val$callback:Lcom/facebook/Session$StatusCallback;

    iget-object v1, p0, Lcom/facebook/Session$4$1;->this$1:Lcom/facebook/Session$4;

    iget-object v1, v1, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/Session$4$1;->this$1:Lcom/facebook/Session$4;

    iget-object v2, v2, Lcom/facebook/Session$4;->val$newState:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session$4$1;->this$1:Lcom/facebook/Session$4;

    iget-object v3, v3, Lcom/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1541
    return-void
.end method
