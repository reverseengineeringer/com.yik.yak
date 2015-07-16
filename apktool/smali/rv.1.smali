.class Lrv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lrt;


# direct methods
.method private constructor <init>(Lrt;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lrv;->a:Lrt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrt;Lru;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lrv;-><init>(Lrt;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 353
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lrv;->a:Lrt;

    invoke-static {v0}, Lrt;->a(Lrt;)Lrr;

    move-result-object v0

    iget-object v0, v0, Lrr;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 355
    iget-object v1, p0, Lrv;->a:Lrt;

    invoke-static {v1}, Lrt;->b(Lrt;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 356
    iget-object v0, p0, Lrv;->a:Lrt;

    invoke-static {v0}, Lrt;->b(Lrt;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    iget-object v0, p0, Lrv;->a:Lrt;

    invoke-static {v0}, Lrt;->a(Lrt;)Lrr;

    move-result-object v0

    invoke-virtual {v0}, Lrr;->b()V

    .line 363
    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
