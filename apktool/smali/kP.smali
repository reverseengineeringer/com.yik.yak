.class LKP;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:LKO;


# direct methods
.method constructor <init>(LKO;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, LKP;->a:LKO;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, LKP;->a:LKO;

    invoke-static {v0}, LKO;->a(LKO;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->a:LKx;

    iget-wide v0, v0, LKx;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, LKP;->a:LKO;

    invoke-virtual {v0}, LKO;->close()V

    .line 312
    return-void
.end method

.method public read()I
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, LKP;->a:LKO;

    invoke-static {v0}, LKO;->a(LKO;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->a:LKx;

    iget-wide v0, v0, LKx;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->b:LKT;

    iget-object v1, p0, LKP;->a:LKO;

    iget-object v1, v1, LKO;->a:LKx;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, LKT;->a(LKx;J)J

    move-result-wide v0

    .line 288
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->a:LKx;

    invoke-virtual {v0}, LKx;->k()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6

    .prologue
    .line 294
    iget-object v0, p0, LKP;->a:LKO;

    invoke-static {v0}, LKO;->a(LKO;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 297
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->a:LKx;

    iget-wide v0, v0, LKx;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->b:LKT;

    iget-object v1, p0, LKP;->a:LKO;

    iget-object v1, v1, LKO;->a:LKx;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, LKT;->a(LKx;J)J

    move-result-wide v0

    .line 299
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 302
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LKP;->a:LKO;

    iget-object v0, v0, LKO;->a:LKx;

    invoke-virtual {v0, p1, p2, p3}, LKx;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LKP;->a:LKO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
