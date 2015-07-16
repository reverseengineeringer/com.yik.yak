.class LKy;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:LKx;


# direct methods
.method constructor <init>(LKx;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, LKy;->a:LKx;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 66
    iget-object v0, p0, LKy;->a:LKx;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, LKx;->a(I)LKx;

    .line 67
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, LKy;->a:LKx;

    invoke-virtual {v0, p1, p2, p3}, LKx;->b([BII)LKx;

    .line 71
    return-void
.end method
