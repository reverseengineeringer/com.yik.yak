.class Lcom/parse/ParseFile$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Void;",
        "LN",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$7;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    iget-object v1, p0, Lcom/parse/ParseFile$7;->val$progressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;LN;)LN;
    invoke-static {v0, v1, p1}, Lcom/parse/ParseFile;->access$600(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$7;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
