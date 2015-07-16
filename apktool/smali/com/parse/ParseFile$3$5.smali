.class Lcom/parse/ParseFile$3$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/parse/ParseFile$3$5;->this$1:Lcom/parse/ParseFile$3;

    iput-object p2, p0, Lcom/parse/ParseFile$3$5;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseCommand;
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/parse/ParseFile$3$5;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iget-object v1, p0, Lcom/parse/ParseFile$3$5;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseFile;->constructFileUploadCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    invoke-static {v0, v1}, Lcom/parse/ParseFile;->access$300(Lcom/parse/ParseFile;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/parse/ParseFile$3$5;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->val$tcs:LZ;

    invoke-virtual {v1}, LZ;->a()LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$3$5$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$3$5$1;-><init>(Lcom/parse/ParseFile$3$5;Lcom/parse/ParseCommand;)V

    invoke-virtual {v1, v2}, LN;->a(LM;)LN;

    .line 397
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/parse/ParseFile$3$5;->call()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method
