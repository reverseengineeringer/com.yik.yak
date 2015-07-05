.class Lcom/parse/ParseFile$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lad;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$5;->val$tcs:Lad;

    iput-object p3, p0, Lcom/parse/ParseFile$5;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$5;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<[B>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 526
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/parse/ParseFile$5;->val$tcs:Lad;

    invoke-virtual {v1, v0}, Lad;->a(Ljava/lang/Object;)Z

    .line 572
    :goto_0
    return-object v2

    .line 533
    :cond_0
    new-instance v0, Lcom/parse/ParseAWSRequest;

    iget-object v1, p0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseAWSRequest;-><init>(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/parse/ParseFile$5;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v0, v1}, Lcom/parse/ParseAWSRequest;->executeAsync(Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$5$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$5$2;-><init>(Lcom/parse/ParseFile$5;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$5$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$5$1;-><init>(Lcom/parse/ParseFile$5;)V

    invoke-virtual {v0, v1}, LR;->a(LQ;)LR;

    goto :goto_0
.end method
