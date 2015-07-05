.class Lcom/parse/ParseRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponse;"
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->client:Lorg/apache/http/client/HttpClient;
    invoke-static {v0}, Lcom/parse/ParseRequest;->access$100(Lcom/parse/ParseRequest;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v1}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iget-object v2, p0, Lcom/parse/ParseRequest$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseRequest;->onResponse(Lorg/apache/http/HttpResponse;Lcom/parse/ProgressCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    const-string v2, "bad protocol"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseRequest;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v0

    throw v0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    const-string v2, "i/o failure"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseRequest;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v0

    throw v0
.end method
