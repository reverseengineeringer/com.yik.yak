.class Lcom/parse/ParseUser$2$1;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$2;

.field final synthetic val$fetchAsyncTask:LN;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$2;LN;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/parse/ParseUser$2$1;->this$1:Lcom/parse/ParseUser$2;

    iput-object p2, p0, Lcom/parse/ParseUser$2$1;->val$fetchAsyncTask:LN;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/parse/ParseUser$2$1;->val$fetchAsyncTask:LN;

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$2$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
