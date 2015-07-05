.class final Lcom/squareup/picasso/RequestCreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$id:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator$1;->val$id:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/squareup/picasso/RequestCreator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator$1;->val$id:Ljava/util/concurrent/atomic/AtomicInteger;

    # invokes: Lcom/squareup/picasso/RequestCreator;->getRequestId()I
    invoke-static {}, Lcom/squareup/picasso/RequestCreator;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    return-void
.end method
