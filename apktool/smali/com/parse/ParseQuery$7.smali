.class Lcom/parse/ParseQuery$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$shouldRetry:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Z)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    iput-boolean p2, p0, Lcom/parse/ParseQuery$7;->val$shouldRetry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/parse/ParseQuery$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/parse/ParseQuery$7;->val$shouldRetry:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$400(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
