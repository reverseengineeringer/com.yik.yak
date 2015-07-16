.class final LKJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKS;


# instance fields
.field final synthetic a:LKU;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(LKU;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, LKJ;->a:LKU;

    iput-object p2, p0, LKJ;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, LKJ;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    return-void
.end method

.method public a_(LKx;J)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    iget-wide v0, p1, LKx;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 74
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, LKJ;->a:LKU;

    invoke-virtual {v0}, LKU;->j()V

    .line 76
    iget-object v0, p1, LKx;->a:LKQ;

    .line 77
    iget v1, v0, LKQ;->c:I

    iget v4, v0, LKQ;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 78
    iget-object v4, p0, LKJ;->b:Ljava/io/OutputStream;

    iget-object v5, v0, LKQ;->a:[B

    iget v6, v0, LKQ;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v4, v0, LKQ;->b:I

    add-int/2addr v4, v1

    iput v4, v0, LKQ;->b:I

    .line 81
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 82
    iget-wide v4, p1, LKx;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, LKx;->b:J

    .line 84
    iget v1, v0, LKQ;->b:I

    iget v4, v0, LKQ;->c:I

    if-ne v1, v4, :cond_0

    .line 85
    invoke-virtual {v0}, LKQ;->a()LKQ;

    move-result-object v1

    iput-object v1, p1, LKx;->a:LKQ;

    .line 86
    sget-object v1, LKR;->a:LKR;

    invoke-virtual {v1, v0}, LKR;->a(LKQ;)V

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method public b()LKU;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LKJ;->a:LKU;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LKJ;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LKJ;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
