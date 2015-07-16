.class Lcom/amplitude/api/AmplitudeClient$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$maxId:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;J)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$10;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-wide p2, p0, Lcom/amplitude/api/AmplitudeClient$10;->val$maxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$10;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v0

    .line 677
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$10;->val$maxId:J

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 678
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$10;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$1900(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 679
    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$10;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I
    invoke-static {v2}, Lcom/amplitude/api/AmplitudeClient;->access$2000(Lcom/amplitude/api/AmplitudeClient;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$10;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$10$1;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$10$1;-><init>(Lcom/amplitude/api/AmplitudeClient$10;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    .line 687
    :cond_0
    return-void
.end method
