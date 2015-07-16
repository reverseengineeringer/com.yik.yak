.class Lcom/parse/ParseRequest$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TResponse;",
        "LN",
        "<TResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/parse/ParseRequest$5;->this$0:Lcom/parse/ParseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TResponse;>;)",
            "LN",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/parse/ParseRequest$5;->this$0:Lcom/parse/ParseRequest;

    invoke-virtual {v0, p1}, Lcom/parse/ParseRequest;->onPostExecute(LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$5;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
