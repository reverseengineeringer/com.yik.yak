.class Lcom/parse/ParseRequest$2;
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
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/parse/ParseRequest$2;->this$0:Lcom/parse/ParseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TResponse;>;)",
            "LN",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 305
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
