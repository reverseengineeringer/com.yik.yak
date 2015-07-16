.class Lcom/parse/ParseFile$6;
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
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$6;->then(LN;)[B

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    # invokes: Lcom/parse/ParseFile;->getCachedData()[B
    invoke-static {v0}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ParseFile;)[B

    move-result-object v0

    return-object v0
.end method
