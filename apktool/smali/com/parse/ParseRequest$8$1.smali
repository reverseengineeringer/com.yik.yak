.class Lcom/parse/ParseRequest$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/parse/ParseRequest$8;

.field final synthetic val$retryTask:LZ;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$8;LZ;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iput-object p2, p0, Lcom/parse/ParseRequest$8$1;->val$retryTask:LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 378
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget-object v0, v0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    iget-object v1, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget v1, v1, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget-wide v2, v2, Lcom/parse/ParseRequest$8;->val$delay:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget-object v4, v4, Lcom/parse/ParseRequest$8;->val$progressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)LN;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseRequest;->access$300(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$8$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$8$1$1;-><init>(Lcom/parse/ParseRequest$8$1;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    .line 392
    return-void
.end method
