.class Lyn;
.super Lyj;
.source "SourceFile"


# instance fields
.field final synthetic c:Lyh;

.field private d:J


# direct methods
.method public constructor <init>(Lyh;J)V
    .locals 4

    .prologue
    .line 396
    iput-object p1, p0, Lyn;->c:Lyh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyj;-><init>(Lyh;Lyi;)V

    .line 397
    iput-wide p2, p0, Lyn;->d:J

    .line 398
    iget-wide v0, p0, Lyn;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyn;->a(Z)V

    .line 401
    :cond_0
    return-void
.end method


# virtual methods
.method public a(LJP;J)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    .line 404
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iget-boolean v2, p0, Lyn;->a:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    iget-wide v2, p0, Lyn;->d:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 418
    :goto_0
    return-wide v0

    .line 408
    :cond_2
    iget-object v2, p0, Lyn;->c:Lyh;

    invoke-static {v2}, Lyh;->b(Lyh;)LJT;

    move-result-object v2

    iget-wide v4, p0, Lyn;->d:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, LJT;->a(LJP;J)J

    move-result-wide v2

    .line 409
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 410
    invoke-virtual {p0}, Lyn;->a()V

    .line 411
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_3
    iget-wide v0, p0, Lyn;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lyn;->d:J

    .line 415
    iget-wide v0, p0, Lyn;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyn;->a(Z)V

    :cond_4
    move-wide v0, v2

    .line 418
    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 422
    iget-boolean v0, p0, Lyn;->a:Z

    if-eqz v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-wide v0, p0, Lyn;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 425
    invoke-static {p0, v0, v1}, LxY;->a(LKl;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lyn;->a()V

    .line 429
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyn;->a:Z

    goto :goto_0
.end method
