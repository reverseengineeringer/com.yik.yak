.class Lcom/amplitude/api/AmplitudeClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;J)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-wide p2, p0, Lcom/amplitude/api/AmplitudeClient$3;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 438
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->endSessionRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$1200(Lcom/amplitude/api/AmplitudeClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->getEndSessionId()J

    move-result-wide v0

    .line 440
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v2}, Lcom/amplitude/api/AmplitudeClient;->getEndSessionTime()J

    move-result-wide v2

    .line 441
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient$3;->val$now:J

    sub-long v2, v4, v2

    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J
    invoke-static {v4}, Lcom/amplitude/api/AmplitudeClient;->access$1300(Lcom/amplitude/api/AmplitudeClient;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, v2, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v2

    .line 444
    invoke-virtual {v2, v0, v1}, Lcom/amplitude/api/DatabaseHelper;->removeEvent(J)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$3;->val$now:J

    # invokes: Lcom/amplitude/api/AmplitudeClient;->startNewSessionIfNeeded(J)V
    invoke-static {v0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->access$1400(Lcom/amplitude/api/AmplitudeClient;J)V

    .line 447
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # invokes: Lcom/amplitude/api/AmplitudeClient;->openSession()V
    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$1500(Lcom/amplitude/api/AmplitudeClient;)V

    .line 450
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$3;->val$now:J

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->setLastEventTime(J)V

    .line 452
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->uploadEvents()V

    .line 453
    return-void
.end method
