.class public final LyL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKS;


# instance fields
.field private a:Z

.field private final b:I

.field private final c:LKx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, v0}, LyL;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, LKx;

    invoke-direct {v0}, LKx;-><init>()V

    iput-object v0, p0, LyL;->c:LKx;

    .line 38
    iput p1, p0, LyL;->b:I

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public a(LKS;)V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, LyL;->c:LKx;

    invoke-virtual {v0}, LKx;->t()LKx;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, LKx;->c()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, LKS;->a_(LKx;J)V

    .line 78
    return-void
.end method

.method public a_(LKx;J)V
    .locals 6

    .prologue
    .line 55
    iget-boolean v0, p0, LyL;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, LKx;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lyi;->a(JJJ)V

    .line 57
    iget v0, p0, LyL;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LyL;->c:LKx;

    invoke-virtual {v0}, LKx;->c()J

    move-result-wide v0

    iget v2, p0, LyL;->b:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 58
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LyL;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, LyL;->c:LKx;

    invoke-virtual {v0, p1, p2, p3}, LKx;->a_(LKx;J)V

    .line 61
    return-void
.end method

.method public b()LKU;
    .locals 1

    .prologue
    .line 67
    sget-object v0, LKU;->b:LKU;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, LyL;->c:LKx;

    invoke-virtual {v0}, LKx;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 46
    iget-boolean v0, p0, LyL;->a:Z

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LyL;->a:Z

    .line 48
    iget-object v0, p0, LyL;->c:LKx;

    invoke-virtual {v0}, LKx;->c()J

    move-result-wide v0

    iget v2, p0, LyL;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 49
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LyL;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LyL;->c:LKx;

    .line 50
    invoke-virtual {v2}, LKx;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
