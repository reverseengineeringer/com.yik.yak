.class Lcom/parse/PushRouter$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/parse/PushRouter$13;

.field final synthetic val$task:LN;


# direct methods
.method constructor <init>(Lcom/parse/PushRouter$13;LN;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/parse/PushRouter$13$1;->this$0:Lcom/parse/PushRouter$13;

    iput-object p2, p0, Lcom/parse/PushRouter$13$1;->val$task:LN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/parse/PushRouter$13$1;->val$task:LN;

    invoke-virtual {v1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
