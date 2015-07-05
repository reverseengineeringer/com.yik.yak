.class public abstract Lcom/parse/PushConnection$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTerminal()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/parse/PushConnection$State;->runState()Lcom/parse/PushConnection$State;

    move-result-object v0

    .line 178
    const-class v1, Lcom/parse/PushConnection;

    monitor-enter v1

    .line 179
    :try_start_0
    # getter for: Lcom/parse/PushConnection;->stateTransitionListener:Lcom/parse/PushConnection$StateTransitionListener;
    invoke-static {}, Lcom/parse/PushConnection;->access$100()Lcom/parse/PushConnection$StateTransitionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    # getter for: Lcom/parse/PushConnection;->stateTransitionListener:Lcom/parse/PushConnection$StateTransitionListener;
    invoke-static {}, Lcom/parse/PushConnection;->access$100()Lcom/parse/PushConnection$StateTransitionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    invoke-interface {v2, v3, p0, v0}, Lcom/parse/PushConnection$StateTransitionListener;->onStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V

    .line 182
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {p0}, Lcom/parse/PushConnection$State;->isTerminal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const-string v0, "com.parse.PushConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished and is the terminal state. Thread exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$200(Lcom/parse/PushConnection;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 193
    :goto_0
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 187
    :cond_1
    if-eqz v0, :cond_2

    .line 188
    const-string v1, "com.parse.PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushConnection transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/parse/PushConnection;->access$200(Lcom/parse/PushConnection;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tried to transition to null state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract runState()Lcom/parse/PushConnection$State;
.end method
