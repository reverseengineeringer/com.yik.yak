.class Lcom/parse/ParseFile$3$5$1;
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
.field final synthetic this$2:Lcom/parse/ParseFile$3$5;

.field final synthetic val$command:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3$5;Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/parse/ParseFile$3$5$1;->this$2:Lcom/parse/ParseFile$3$5;

    iput-object p2, p0, Lcom/parse/ParseFile$3$5$1;->val$command:Lcom/parse/ParseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$5$1;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 1
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
    .line 391
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/parse/ParseFile$3$5$1;->val$command:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->cancel()V

    .line 394
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
