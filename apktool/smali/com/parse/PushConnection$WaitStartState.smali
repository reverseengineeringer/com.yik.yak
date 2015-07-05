.class public Lcom/parse/PushConnection$WaitStartState;
.super Lcom/parse/PushConnection$State;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    return-void
.end method


# virtual methods
.method public runState()Lcom/parse/PushConnection$State;
    .locals 5

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v1}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/parse/PushConnection$Event;

    const/4 v3, 0x0

    sget-object v4, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/parse/PushConnection$EventSet;->await([Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v1

    .line 224
    sget-object v2, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    new-instance v0, Lcom/parse/PushConnection$StoppedState;

    iget-object v1, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v0, v1}, Lcom/parse/PushConnection$StoppedState;-><init>(Lcom/parse/PushConnection;)V

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    sget-object v2, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v0, Lcom/parse/PushConnection$ConnectState;

    iget-object v1, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/PushConnection$ConnectState;-><init>(Lcom/parse/PushConnection;J)V

    goto :goto_0
.end method
