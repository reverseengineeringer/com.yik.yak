.class Lcom/facebook/ProgressOutputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/ProgressOutputStream;

.field final synthetic val$progressCallback:Lcom/facebook/RequestBatch$OnProgressCallback;


# direct methods
.method constructor <init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/RequestBatch$OnProgressCallback;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    iput-object p2, p0, Lcom/facebook/ProgressOutputStream$1;->val$progressCallback:Lcom/facebook/RequestBatch$OnProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream$1;->val$progressCallback:Lcom/facebook/RequestBatch$OnProgressCallback;

    iget-object v1, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    # getter for: Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/RequestBatch;
    invoke-static {v1}, Lcom/facebook/ProgressOutputStream;->access$000(Lcom/facebook/ProgressOutputStream;)Lcom/facebook/RequestBatch;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    # getter for: Lcom/facebook/ProgressOutputStream;->batchProgress:J
    invoke-static {v2}, Lcom/facebook/ProgressOutputStream;->access$100(Lcom/facebook/ProgressOutputStream;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    # getter for: Lcom/facebook/ProgressOutputStream;->maxProgress:J
    invoke-static {v4}, Lcom/facebook/ProgressOutputStream;->access$200(Lcom/facebook/ProgressOutputStream;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/RequestBatch$OnProgressCallback;->onBatchProgress(Lcom/facebook/RequestBatch;JJ)V

    .line 71
    return-void
.end method
