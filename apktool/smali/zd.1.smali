.class final Lzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKT;


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:LKB;


# direct methods
.method public constructor <init>(LKB;)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lzd;->f:LKB;

    .line 606
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    iget v0, p0, Lzd;->c:I

    .line 633
    iget-object v1, p0, Lzd;->f:LKB;

    invoke-static {v1}, Lzc;->a(LKB;)I

    move-result v1

    iput v1, p0, Lzd;->d:I

    iput v1, p0, Lzd;->a:I

    .line 634
    iget-object v1, p0, Lzd;->f:LKB;

    invoke-interface {v1}, LKB;->k()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 635
    iget-object v2, p0, Lzd;->f:LKB;

    invoke-interface {v2}, LKB;->k()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lzd;->b:B

    .line 636
    invoke-static {}, Lzc;->b()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lzc;->b()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lzd;->c:I

    iget v4, p0, Lzd;->a:I

    iget-byte v5, p0, Lzd;->b:B

    invoke-static {v7, v3, v4, v1, v5}, Lze;->a(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v2, p0, Lzd;->f:LKB;

    invoke-interface {v2}, LKB;->m()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lzd;->c:I

    .line 638
    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lzc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 639
    :cond_1
    iget v1, p0, Lzd;->c:I

    if-eq v1, v0, :cond_2

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lzc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 640
    :cond_2
    return-void
.end method


# virtual methods
.method public a(LKx;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 609
    :goto_0
    iget v2, p0, Lzd;->d:I

    if-nez v2, :cond_2

    .line 610
    iget-object v2, p0, Lzd;->f:LKB;

    iget-short v3, p0, Lzd;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, LKB;->g(J)V

    .line 611
    const/4 v2, 0x0

    iput-short v2, p0, Lzd;->e:S

    .line 612
    iget-byte v2, p0, Lzd;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 620
    :cond_0
    :goto_1
    return-wide v0

    .line 613
    :cond_1
    invoke-direct {p0}, Lzd;->a()V

    goto :goto_0

    .line 617
    :cond_2
    iget-object v2, p0, Lzd;->f:LKB;

    iget v3, p0, Lzd;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, LKB;->a(LKx;J)J

    move-result-wide v2

    .line 618
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 619
    iget v0, p0, Lzd;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lzd;->d:I

    move-wide v0, v2

    .line 620
    goto :goto_1
.end method

.method public b()LKU;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lzd;->f:LKB;

    invoke-interface {v0}, LKB;->b()LKU;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method
