.class Lcom/facebook/RequestProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/RequestProgress;

.field final synthetic val$callbackCopy:Lcom/facebook/Request$OnProgressCallback;

.field final synthetic val$currentCopy:J

.field final synthetic val$maxProgressCopy:J


# direct methods
.method constructor <init>(Lcom/facebook/RequestProgress;Lcom/facebook/Request$OnProgressCallback;JJ)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/RequestProgress$1;->this$0:Lcom/facebook/RequestProgress;

    iput-object p2, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/Request$OnProgressCallback;

    iput-wide p3, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    iput-wide p5, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/Request$OnProgressCallback;

    iget-wide v2, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    iget-wide v4, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/facebook/Request$OnProgressCallback;->onProgress(JJ)V

    .line 71
    return-void
.end method
