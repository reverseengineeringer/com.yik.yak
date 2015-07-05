.class LGU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGX;


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:I

.field final synthetic c:LGS;


# direct methods
.method constructor <init>(LGS;I)V
    .locals 2

    .prologue
    .line 568
    iput-object p1, p0, LGU;->c:LGS;

    iput p2, p0, LGU;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, LGU;->b:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LGU;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, LGU;->c:LGS;

    invoke-static {v0}, LGS;->b(LGS;)LGX;

    move-result-object v0

    invoke-interface {v0, p1}, LGX;->a(Ljava/lang/Exception;)V

    .line 586
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, LGU;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 577
    iget-object v0, p0, LGU;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, LGU;->c:LGS;

    invoke-static {v0}, LGS;->a(LGS;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 579
    iget-object v0, p0, LGU;->c:LGS;

    invoke-static {v0}, LGS;->b(LGS;)LGX;

    move-result-object v0

    iget-object v1, p0, LGU;->c:LGS;

    invoke-interface {v0, v1}, LGX;->a(Ljava/lang/Object;)V

    .line 581
    :cond_0
    return-void
.end method
