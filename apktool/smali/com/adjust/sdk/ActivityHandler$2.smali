.class Lcom/adjust/sdk/ActivityHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->timerFired()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$800(Lcom/adjust/sdk/ActivityHandler;)V

    .line 640
    return-void
.end method
