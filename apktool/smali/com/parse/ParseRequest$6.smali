.class Lcom/parse/ParseRequest$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "LR",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$6;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 332
    # getter for: Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J
    invoke-static {}, Lcom/parse/ParseRequest;->access$200()J

    move-result-wide v0

    # getter for: Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J
    invoke-static {}, Lcom/parse/ParseRequest;->access$200()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    .line 334
    iget-object v2, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    if-nez v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    iget-object v3, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    invoke-virtual {v3}, Lcom/parse/ParseRequest;->newRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    # setter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2, v3}, Lcom/parse/ParseRequest;->access$002(Lcom/parse/ParseRequest;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parse/ParseRequest$6;->val$progressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)LR;
    invoke-static {v2, v3, v0, v1, v4}, Lcom/parse/ParseRequest;->access$300(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$6;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
