.class Lcom/amplitude/api/Amplitude$Lib$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$4;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$4;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$1500(Lcom/amplitude/api/Amplitude$Lib;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$4;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->updateServer()V
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$1400(Lcom/amplitude/api/Amplitude$Lib;)V

    .line 335
    return-void
.end method
