.class abstract Lcom/parse/ParseEventuallyQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isConnected:Z

.field private testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)LR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method fakeObjectUpdate()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 92
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 93
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;-><init>(Lcom/parse/ParseEventuallyQueue$1;)V

    iput-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parse/ParseEventuallyQueue;->isConnected:Z

    return v0
.end method

.method protected notifyTestHelper(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract pendingCount()I
.end method

.method public abstract resume()V
.end method

.method public setConnected(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/parse/ParseEventuallyQueue;->isConnected:Z

    .line 24
    return-void
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method abstract simulateReboot()V
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    return-object v0
.end method
