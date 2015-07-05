.class Lrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lrp;


# direct methods
.method private constructor <init>(Lrp;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lrr;->a:Lrp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrp;Lrq;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lrr;-><init>(Lrp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 350
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lrr;->a:Lrp;

    invoke-static {v0}, Lrp;->a(Lrp;)Lrn;

    move-result-object v0

    iget-object v0, v0, Lrn;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 352
    iget-object v1, p0, Lrr;->a:Lrp;

    invoke-static {v1}, Lrp;->b(Lrp;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 353
    iget-object v0, p0, Lrr;->a:Lrp;

    invoke-static {v0}, Lrp;->b(Lrp;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    iget-object v0, p0, Lrr;->a:Lrp;

    invoke-static {v0}, Lrp;->a(Lrp;)Lrn;

    move-result-object v0

    invoke-virtual {v0}, Lrn;->b()V

    .line 360
    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
