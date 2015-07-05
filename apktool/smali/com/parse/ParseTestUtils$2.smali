.class final Lcom/parse/ParseTestUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$done:Ljava/util/concurrent/Semaphore;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(ZLjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/parse/ParseTestUtils$2;->val$enabled:Z

    iput-object p2, p0, Lcom/parse/ParseTestUtils$2;->val$done:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/parse/ParseTestUtils$2;->val$enabled:Z

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->setStrictModeEnabledForThisThread(Z)V

    .line 603
    iget-object v0, p0, Lcom/parse/ParseTestUtils$2;->val$done:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 604
    return-void
.end method
