.class Lcom/parse/ParseTestUtils$StateTransition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final connection:Lcom/parse/PushConnection;

.field public final fromState:Lcom/parse/PushConnection$State;

.field public final timestamp:J

.field public final toState:Lcom/parse/PushConnection$State;


# direct methods
.method constructor <init>(JLcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-wide p1, p0, Lcom/parse/ParseTestUtils$StateTransition;->timestamp:J

    .line 380
    iput-object p3, p0, Lcom/parse/ParseTestUtils$StateTransition;->connection:Lcom/parse/PushConnection;

    .line 381
    iput-object p4, p0, Lcom/parse/ParseTestUtils$StateTransition;->fromState:Lcom/parse/PushConnection$State;

    .line 382
    iput-object p5, p0, Lcom/parse/ParseTestUtils$StateTransition;->toState:Lcom/parse/PushConnection$State;

    .line 383
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/parse/ParseTestUtils$StateTransition;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseTestUtils$StateTransition;->fromState:Lcom/parse/PushConnection$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseTestUtils$StateTransition;->toState:Lcom/parse/PushConnection$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
