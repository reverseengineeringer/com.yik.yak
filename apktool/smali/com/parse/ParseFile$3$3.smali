.class Lcom/parse/ParseFile$3$3;
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
        "Ljava/lang/Object;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v2, v2, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseFile;->handleFileUploadResultAsync(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)LR;
    invoke-static {v1, v0, v2}, Lcom/parse/ParseFile;->access$200(Lcom/parse/ParseFile;Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$3;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
