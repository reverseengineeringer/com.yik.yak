.class public final LjJ;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LjJ;->a:[B

    iput p2, p0, LjJ;->c:I

    add-int v0, p2, p3

    iput v0, p0, LjJ;->b:I

    return-void
.end method

.method public static a([B)LjJ;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, LjJ;->a([BII)LjJ;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)LjJ;
    .locals 1

    new-instance v0, LjJ;

    invoke-direct {v0, p0, p1, p2}, LjJ;-><init>([BII)V

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, LjJ;->f(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(II)I
    .locals 2

    invoke-static {p0}, LjJ;->d(I)I

    move-result v0

    invoke-static {p1}, LjJ;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 3

    invoke-static {p0}, LjJ;->d(I)I

    move-result v0

    invoke-static {p1, p2}, LjJ;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjQ;)I
    .locals 2

    invoke-static {p0}, LjJ;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, LjJ;->c(LjQ;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, LjJ;->d(I)I

    move-result v0

    invoke-static {p1}, LjJ;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 2

    invoke-static {p0}, LjJ;->d(I)I

    move-result v0

    invoke-static {p1}, LjJ;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .locals 2

    invoke-static {p0, p1}, LjJ;->d(J)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, LjJ;->f(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static c(ILjQ;)I
    .locals 2

    invoke-static {p0}, LjJ;->d(I)I

    move-result v0

    invoke-static {p1}, LjJ;->d(LjQ;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(LjQ;)I
    .locals 1

    invoke-virtual {p0}, LjQ;->f()I

    move-result v0

    return v0
.end method

.method public static d(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, LjT;->a(II)I

    move-result v0

    invoke-static {v0}, LjJ;->f(I)I

    move-result v0

    return v0
.end method

.method public static d(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static d(LjQ;)I
    .locals 2

    invoke-virtual {p0}, LjQ;->f()I

    move-result v0

    invoke-static {v0}, LjJ;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public a(B)V
    .locals 3

    iget v0, p0, LjJ;->c:I

    iget v1, p0, LjJ;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, LjK;

    iget v1, p0, LjJ;->c:I

    iget v2, p0, LjJ;->b:I

    invoke-direct {v0, v1, v2}, LjK;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, LjJ;->a:[B

    iget v1, p0, LjJ;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LjJ;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, LjJ;->e(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, LjJ;->c(J)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LjJ;->c(II)V

    invoke-virtual {p0, p2}, LjJ;->a(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LjJ;->c(II)V

    invoke-virtual {p0, p2, p3}, LjJ;->a(J)V

    return-void
.end method

.method public a(ILjQ;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LjJ;->c(II)V

    invoke-virtual {p0, p2}, LjJ;->b(LjQ;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LjJ;->c(II)V

    invoke-virtual {p0, p2}, LjJ;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LjJ;->c(II)V

    invoke-virtual {p0, p2}, LjJ;->a(Z)V

    return-void
.end method

.method public a(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, LjJ;->c(J)V

    return-void
.end method

.method public a(LjQ;)V
    .locals 0

    invoke-virtual {p1, p0}, LjQ;->a(LjJ;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, LjJ;->e(I)V

    invoke-virtual {p0, v0}, LjJ;->b([B)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, LjJ;->c(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(LjQ;)V
    .locals 1

    invoke-virtual {p1}, LjQ;->e()I

    move-result v0

    invoke-virtual {p0, v0}, LjJ;->e(I)V

    invoke-virtual {p1, p0}, LjQ;->a(LjJ;)V

    return-void
.end method

.method public b([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LjJ;->b([BII)V

    return-void
.end method

.method public b([BII)V
    .locals 3

    iget v0, p0, LjJ;->b:I

    iget v1, p0, LjJ;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, LjJ;->a:[B

    iget v1, p0, LjJ;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, LjJ;->c:I

    add-int/2addr v0, p3

    iput v0, p0, LjJ;->c:I

    return-void

    :cond_0
    new-instance v0, LjK;

    iget v1, p0, LjJ;->c:I

    iget v2, p0, LjJ;->b:I

    invoke-direct {v0, v1, v2}, LjK;-><init>(II)V

    throw v0
.end method

.method public c(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, LjJ;->a(B)V

    return-void
.end method

.method public c(II)V
    .locals 1

    invoke-static {p1, p2}, LjT;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, LjJ;->e(I)V

    return-void
.end method

.method public c(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, LjJ;->c(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LjJ;->c(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public e(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LjJ;->c(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LjJ;->c(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
