.class Lcom/amplitude/api/AmplitudeClient$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$1800(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 596
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$8;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->updateServer()V

    .line 597
    return-void
.end method
