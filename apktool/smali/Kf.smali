.class LKf;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:LKe;


# direct methods
.method constructor <init>(LKe;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, LKf;->a:LKe;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, LKf;->a:LKe;

    invoke-virtual {v0}, LKe;->close()V

    .line 174
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, LKf;->a:LKe;

    invoke-static {v0}, LKe;->a(LKe;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, LKf;->a:LKe;

    invoke-virtual {v0}, LKe;->a()V

    .line 170
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LKf;->a:LKe;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, LKf;->a:LKe;

    invoke-static {v0}, LKe;->a(LKe;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, LKf;->a:LKe;

    iget-object v0, v0, LKe;->a:LJP;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, LJP;->a(I)LJP;

    .line 156
    iget-object v0, p0, LKf;->a:LKe;

    invoke-virtual {v0}, LKe;->u()LJS;

    .line 157
    return-void
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, LKf;->a:LKe;

    invoke-static {v0}, LKe;->a(LKe;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, LKf;->a:LKe;

    iget-object v0, v0, LKe;->a:LJP;

    invoke-virtual {v0, p1, p2, p3}, LJP;->b([BII)LJP;

    .line 162
    iget-object v0, p0, LKf;->a:LKe;

    invoke-virtual {v0}, LKe;->u()LJS;

    .line 163
    return-void
.end method
