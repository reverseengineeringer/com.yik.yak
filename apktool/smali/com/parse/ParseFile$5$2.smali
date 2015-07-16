.class Lcom/parse/ParseFile$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<[B",
        "LN",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$5;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$5;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<[B>;)",
            "LN",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_1

    .line 540
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object p1

    .line 554
    :cond_0
    :goto_0
    return-object p1

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object p1

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    iget-object v1, v0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcom/parse/ParseFile;->data:[B

    .line 550
    iget-object v0, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    iget-object v0, v0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$5$2;->this$1:Lcom/parse/ParseFile$5;

    iget-object v1, v1, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    iget-object v1, v1, Lcom/parse/ParseFile;->data:[B

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$5$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
