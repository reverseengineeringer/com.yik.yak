.class Lcom/parse/ParseFile$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Z)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iput-boolean p2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$1;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isPinned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    :cond_1
    :goto_0
    return-object v3

    .line 261
    :cond_2
    iget-boolean v0, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v1

    .line 263
    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    .line 269
    :goto_1
    if-nez v0, :cond_4

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to pin file before saving"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v1

    .line 266
    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 274
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 277
    :cond_5
    iget-boolean v2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    if-eqz v2, :cond_6

    .line 278
    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    invoke-static {v0, v2}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {v1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    .line 285
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 286
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to pin file before retrieving"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_8
    invoke-static {v1, v0}, Lcom/parse/ParseFileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method
