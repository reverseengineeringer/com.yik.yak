.class final LIx;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:LIu;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(LIu;LIw;)V
    .locals 1

    .prologue
    .line 448
    iput-object p1, p0, LIx;->a:LIu;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 449
    iget v0, p2, LIw;->b:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, LIu;->a(LIu;I)I

    move-result v0

    iput v0, p0, LIx;->b:I

    .line 450
    iget v0, p2, LIw;->c:I

    iput v0, p0, LIx;->c:I

    .line 451
    return-void
.end method

.method synthetic constructor <init>(LIu;LIw;LIv;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, LIx;-><init>(LIu;LIw;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .prologue
    .line 474
    iget v0, p0, LIx;->c:I

    if-nez v0, :cond_0

    .line 475
    const/4 v0, -0x1

    .line 481
    :goto_0
    return v0

    .line 477
    :cond_0
    iget-object v0, p0, LIx;->a:LIu;

    invoke-static {v0}, LIu;->a(LIu;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, LIx;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 478
    iget-object v0, p0, LIx;->a:LIu;

    invoke-static {v0}, LIu;->a(LIu;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 479
    iget-object v1, p0, LIx;->a:LIu;

    iget v2, p0, LIx;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, LIu;->a(LIu;I)I

    move-result v1

    iput v1, p0, LIx;->b:I

    .line 480
    iget v1, p0, LIx;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LIx;->c:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 455
    const-string v0, "buffer"

    invoke-static {p1, v0}, LIu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 459
    :cond_1
    iget v0, p0, LIx;->c:I

    if-lez v0, :cond_3

    .line 460
    iget v0, p0, LIx;->c:I

    if-le p3, v0, :cond_2

    .line 461
    iget p3, p0, LIx;->c:I

    .line 463
    :cond_2
    iget-object v0, p0, LIx;->a:LIu;

    iget v1, p0, LIx;->b:I

    invoke-static {v0, v1, p1, p2, p3}, LIu;->a(LIu;I[BII)V

    .line 464
    iget-object v0, p0, LIx;->a:LIu;

    iget v1, p0, LIx;->b:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, LIu;->a(LIu;I)I

    move-result v0

    iput v0, p0, LIx;->b:I

    .line 465
    iget v0, p0, LIx;->c:I

    sub-int/2addr v0, p3

    iput v0, p0, LIx;->c:I

    .line 468
    :goto_0
    return p3

    :cond_3
    const/4 p3, -0x1

    goto :goto_0
.end method
