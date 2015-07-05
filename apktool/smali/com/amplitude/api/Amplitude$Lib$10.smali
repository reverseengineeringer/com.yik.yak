.class Lcom/amplitude/api/Amplitude$Lib$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;

.field final synthetic val$maxId:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;J)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$10;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iput-wide p2, p0, Lcom/amplitude/api/Amplitude$Lib$10;->val$maxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 651
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$10;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$1900(Lcom/amplitude/api/Amplitude$Lib;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v0

    .line 652
    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib$10;->val$maxId:J

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 653
    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$10;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$2800(Lcom/amplitude/api/Amplitude$Lib;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 654
    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$10;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v0, v0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/Amplitude$Lib$10$1;

    invoke-direct {v1, p0}, Lcom/amplitude/api/Amplitude$Lib$10$1;-><init>(Lcom/amplitude/api/Amplitude$Lib$10;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    .line 662
    :cond_0
    return-void
.end method
