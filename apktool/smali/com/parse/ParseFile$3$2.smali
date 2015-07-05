.class Lcom/parse/ParseFile$3$2;
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
    .line 410
    iput-object p1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iget-object v1, v1, Lcom/parse/ParseFile;->data:[B

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    const/4 v1, 0x0

    # setter for: Lcom/parse/ParseFile;->dirty:Z
    invoke-static {v0, v1}, Lcom/parse/ParseFile;->access$102(Lcom/parse/ParseFile;Z)Z

    .line 424
    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
