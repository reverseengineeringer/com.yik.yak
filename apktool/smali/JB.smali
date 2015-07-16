.class LJB;
.super LJC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJC",
        "<",
        "LJA;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:LJA;


# direct methods
.method constructor <init>(LJA;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2402
    iput-object p1, p0, LJB;->c:LJA;

    iput-object p4, p0, LJB;->a:Ljava/io/InputStream;

    iput-object p5, p0, LJB;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, LJC;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()LJA;
    .locals 4

    .prologue
    .line 2406
    iget-object v0, p0, LJB;->c:LJA;

    invoke-static {v0}, LJA;->a(LJA;)I

    move-result v0

    new-array v0, v0, [B

    .line 2408
    :goto_0
    iget-object v1, p0, LJB;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2409
    iget-object v2, p0, LJB;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2410
    :cond_0
    iget-object v0, p0, LJB;->c:LJA;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2402
    invoke-virtual {p0}, LJB;->a()LJA;

    move-result-object v0

    return-object v0
.end method
