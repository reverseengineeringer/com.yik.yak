.class Lcom/amplitude/api/Amplitude$Lib$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;J)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iput-wide p2, p0, Lcom/amplitude/api/Amplitude$Lib$5;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v0, v0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->endSessionRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$1600(Lcom/amplitude/api/Amplitude$Lib;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->getEndSessionId()J
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$1700(Lcom/amplitude/api/Amplitude$Lib;)J

    move-result-wide v0

    .line 439
    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->getEndSessionTime()J
    invoke-static {v2}, Lcom/amplitude/api/Amplitude$Lib;->access$1800(Lcom/amplitude/api/Amplitude$Lib;)J

    move-result-wide v2

    .line 440
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/amplitude/api/Amplitude$Lib$5;->val$now:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/amplitude/api/Amplitude$Lib;->access$1900(Lcom/amplitude/api/Amplitude$Lib;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v2

    .line 443
    invoke-virtual {v2, v0, v1}, Lcom/amplitude/api/DatabaseHelper;->removeEvent(J)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib$5;->val$now:J

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->startNewSessionIfNeeded(J)V
    invoke-static {v0, v2, v3}, Lcom/amplitude/api/Amplitude$Lib;->access$2000(Lcom/amplitude/api/Amplitude$Lib;J)V

    .line 446
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->openSession()V
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$2100(Lcom/amplitude/api/Amplitude$Lib;)V

    .line 449
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib$5;->val$now:J

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->setLastEventTime(J)V
    invoke-static {v0, v2, v3}, Lcom/amplitude/api/Amplitude$Lib;->access$2200(Lcom/amplitude/api/Amplitude$Lib;J)V

    .line 451
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$5;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->uploadEvents()V

    .line 452
    return-void
.end method
