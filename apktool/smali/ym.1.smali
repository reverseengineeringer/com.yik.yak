.class final Lym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKk;


# instance fields
.field final synthetic a:Lyh;

.field private b:Z

.field private c:J


# direct methods
.method private constructor <init>(Lyh;J)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lym;->a:Lyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-wide p2, p0, Lym;->c:J

    .line 265
    return-void
.end method

.method synthetic constructor <init>(Lyh;JLyi;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lym;-><init>(Lyh;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lym;->b:Z

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lym;->a:Lyh;

    invoke-static {v0}, Lyh;->a(Lyh;)LJS;

    move-result-object v0

    invoke-interface {v0}, LJS;->a()V

    goto :goto_0
.end method

.method public a_(LJP;J)V
    .locals 6

    .prologue
    .line 272
    iget-boolean v0, p0, Lym;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p1}, LJP;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LxY;->a(JJJ)V

    .line 274
    iget-wide v0, p0, Lym;->c:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 275
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lym;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    iget-object v0, p0, Lym;->a:Lyh;

    invoke-static {v0}, Lyh;->a(Lyh;)LJS;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LJS;->a_(LJP;J)V

    .line 279
    iget-wide v0, p0, Lym;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lym;->c:J

    .line 280
    return-void
.end method

.method public b()LKm;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lym;->a:Lyh;

    invoke-static {v0}, Lyh;->a(Lyh;)LJS;

    move-result-object v0

    invoke-interface {v0}, LJS;->b()LKm;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 288
    iget-boolean v0, p0, Lym;->b:Z

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lym;->b:Z

    .line 290
    iget-wide v0, p0, Lym;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    iget-object v0, p0, Lym;->a:Lyh;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyh;->a(Lyh;I)I

    goto :goto_0
.end method
