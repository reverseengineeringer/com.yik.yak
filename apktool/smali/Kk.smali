.class final LKK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKT;


# instance fields
.field final synthetic a:LKU;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(LKU;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, LKK;->a:LKU;

    iput-object p2, p0, LKK;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LKx;J)J
    .locals 6

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

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

    .line 133
    :cond_0
    iget-object v0, p0, LKK;->a:LKU;

    invoke-virtual {v0}, LKU;->j()V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LKx;->d(I)LKQ;

    move-result-object v0

    .line 135
    iget v1, v0, LKQ;->c:I

    rsub-int v1, v1, 0x800

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 136
    iget-object v2, p0, LKK;->b:Ljava/io/InputStream;

    iget-object v3, v0, LKQ;->a:[B

    iget v4, v0, LKQ;->c:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 137
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-wide/16 v0, -0x1

    .line 140
    :goto_0
    return-wide v0

    .line 138
    :cond_1
    iget v2, v0, LKQ;->c:I

    add-int/2addr v2, v1

    iput v2, v0, LKQ;->c:I

    .line 139
    iget-wide v2, p1, LKx;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, LKx;->b:J

    .line 140
    int-to-long v0, v1

    goto :goto_0
.end method

.method public b()LKU;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, LKK;->a:LKU;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, LKK;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LKK;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
