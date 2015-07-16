.class public final LKx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKA;
.implements LKB;
.implements Ljava/lang/Cloneable;


# instance fields
.field a:LKQ;

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 6

    .prologue
    .line 549
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 551
    iget-object v1, p0, LKx;->a:LKQ;

    .line 552
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    iget v0, v1, LKQ;->c:I

    iget v2, v1, LKQ;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 554
    iget-object v2, v1, LKQ;->a:[B

    iget v3, v1, LKQ;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    iget v2, v1, LKQ;->b:I

    add-int/2addr v2, v0

    iput v2, v1, LKQ;->b:I

    .line 557
    iget-wide v2, p0, LKx;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LKx;->b:J

    .line 559
    iget v2, v1, LKQ;->b:I

    iget v3, v1, LKQ;->c:I

    if-ne v2, v3, :cond_0

    .line 560
    invoke-virtual {v1}, LKQ;->a()LKQ;

    move-result-object v2

    iput-object v2, p0, LKx;->a:LKQ;

    .line 561
    sget-object v2, LKR;->a:LKR;

    invoke-virtual {v2, v1}, LKR;->a(LKQ;)V

    goto :goto_0
.end method

.method public a(B)J
    .locals 2

    .prologue
    .line 897
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LKx;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .locals 12

    .prologue
    .line 905
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    iget-object v2, p0, LKx;->a:LKQ;

    .line 908
    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    .line 924
    :goto_0
    return-wide v0

    .line 909
    :cond_1
    const-wide/16 v0, 0x0

    .line 911
    :cond_2
    iget v3, v2, LKQ;->c:I

    iget v4, v2, LKQ;->b:I

    sub-int/2addr v3, v4

    .line 912
    int-to-long v4, v3

    cmp-long v4, p2, v4

    if-ltz v4, :cond_3

    .line 913
    int-to-long v4, v3

    sub-long/2addr p2, v4

    .line 921
    :goto_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 922
    iget-object v2, v2, LKQ;->d:LKQ;

    .line 923
    iget-object v3, p0, LKx;->a:LKQ;

    if-ne v2, v3, :cond_2

    .line 924
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 915
    :cond_3
    iget-object v6, v2, LKQ;->a:[B

    .line 916
    iget v4, v2, LKQ;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget v7, v2, LKQ;->c:I

    int-to-long v8, v7

    :goto_2
    cmp-long v7, v4, v8

    if-gez v7, :cond_5

    .line 917
    long-to-int v7, v4

    aget-byte v7, v6, v7

    if-ne v7, p1, :cond_4

    add-long/2addr v0, v4

    iget v2, v2, LKQ;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 916
    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_2

    .line 919
    :cond_5
    const-wide/16 p2, 0x0

    goto :goto_1
.end method

.method public a(LKT;)J
    .locals 6

    .prologue
    .line 703
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    const-wide/16 v0, 0x0

    .line 705
    :goto_0
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, LKT;->a(LKx;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 706
    add-long/2addr v0, v2

    goto :goto_0

    .line 708
    :cond_1
    return-wide v0
.end method

.method public a(LKx;J)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 888
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

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

    .line 890
    :cond_1
    iget-wide v0, p0, LKx;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    .line 893
    :goto_0
    return-wide p2

    .line 891
    :cond_2
    iget-wide v0, p0, LKx;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, LKx;->b:J

    .line 892
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, LKx;->a_(LKx;J)V

    goto :goto_0
.end method

.method public a(I)LKx;
    .locals 4

    .prologue
    .line 719
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LKx;->d(I)LKQ;

    move-result-object v0

    .line 720
    iget-object v1, v0, LKQ;->a:[B

    iget v2, v0, LKQ;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, LKQ;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 721
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LKx;->b:J

    .line 722
    return-object p0
.end method

.method public a(LKC;)LKx;
    .locals 3

    .prologue
    .line 598
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p1, LKC;->b:[B

    const/4 v1, 0x0

    iget-object v2, p1, LKC;->b:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, LKx;->b([BII)LKx;

    move-result-object v0

    return-object v0
.end method

.method public a(LKx;JJ)LKx;
    .locals 10

    .prologue
    .line 163
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-wide v0, p0, LKx;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    .line 193
    :cond_1
    return-object p0

    .line 167
    :cond_2
    iget-object v0, p0, LKx;->a:LKQ;

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LKx;->d(I)LKQ;

    move-result-object v1

    .line 169
    iget-wide v2, p1, LKx;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, LKx;->b:J

    move-wide v2, p2

    .line 171
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_1

    .line 173
    :goto_1
    iget v4, v0, LKQ;->c:I

    iget v5, v0, LKQ;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    .line 174
    iget v4, v0, LKQ;->c:I

    iget v5, v0, LKQ;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 175
    iget-object v0, v0, LKQ;->d:LKQ;

    goto :goto_1

    .line 179
    :cond_3
    iget v4, v1, LKQ;->c:I

    const/16 v5, 0x800

    if-ne v4, v5, :cond_4

    .line 180
    sget-object v4, LKR;->a:LKR;

    invoke-virtual {v4}, LKR;->a()LKQ;

    move-result-object v4

    invoke-virtual {v1, v4}, LKQ;->a(LKQ;)LKQ;

    move-result-object v1

    .line 184
    :cond_4
    iget v4, v0, LKQ;->c:I

    int-to-long v4, v4

    iget v6, v0, LKQ;->b:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 185
    iget v6, v1, LKQ;->c:I

    rsub-int v6, v6, 0x800

    int-to-long v6, v6

    .line 186
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 187
    iget-object v5, v0, LKQ;->a:[B

    iget v6, v0, LKQ;->b:I

    long-to-int v7, v2

    add-int/2addr v6, v7

    iget-object v7, v1, LKQ;->a:[B

    iget v8, v1, LKQ;->c:I

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    int-to-long v6, v4

    add-long/2addr v2, v6

    .line 189
    iget v5, v1, LKQ;->c:I

    add-int/2addr v5, v4

    iput v5, v1, LKQ;->c:I

    .line 190
    int-to-long v4, v4

    sub-long/2addr p4, v4

    .line 191
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)LKx;
    .locals 11

    .prologue
    const v10, 0xdfff

    const/16 v9, 0x80

    const/4 v1, 0x0

    .line 603
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_a

    .line 607
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 609
    if-ge v4, v9, :cond_3

    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LKx;->d(I)LKQ;

    move-result-object v5

    .line 611
    iget-object v6, v5, LKQ;->a:[B

    .line 612
    iget v0, v5, LKQ;->c:I

    sub-int v7, v0, v2

    .line 613
    rsub-int v0, v7, 0x800

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 616
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    .line 620
    :goto_1
    if-ge v0, v8, :cond_1

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 622
    if-lt v4, v9, :cond_2

    .line 626
    :cond_1
    add-int v2, v0, v7

    iget v4, v5, LKQ;->c:I

    sub-int/2addr v2, v4

    .line 627
    iget v4, v5, LKQ;->c:I

    add-int/2addr v4, v2

    iput v4, v5, LKQ;->c:I

    .line 628
    iget-wide v4, p0, LKx;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, LKx;->b:J

    :goto_2
    move v2, v0

    .line 665
    goto :goto_0

    .line 623
    :cond_2
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    move v0, v2

    goto :goto_1

    .line 630
    :cond_3
    const/16 v0, 0x800

    if-ge v4, v0, :cond_4

    .line 632
    shr-int/lit8 v0, v4, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 633
    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 634
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 636
    :cond_4
    const v0, 0xd800

    if-lt v4, v0, :cond_5

    if-le v4, v10, :cond_6

    .line 638
    :cond_5
    shr-int/lit8 v0, v4, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 639
    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 640
    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 641
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 646
    :cond_6
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v3, :cond_8

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 647
    :goto_3
    const v5, 0xdbff

    if-gt v4, v5, :cond_7

    const v5, 0xdc00

    if-lt v0, v5, :cond_7

    if-le v0, v10, :cond_9

    .line 648
    :cond_7
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 649
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 650
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 646
    goto :goto_3

    .line 656
    :cond_9
    const/high16 v5, 0x10000

    const v6, -0xd801

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xa

    const v6, -0xdc01

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 659
    shr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    invoke-virtual {p0, v4}, LKx;->a(I)LKx;

    .line 660
    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v4}, LKx;->a(I)LKx;

    .line 661
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v4}, LKx;->a(I)LKx;

    .line 662
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LKx;->a(I)LKx;

    .line 663
    add-int/lit8 v0, v2, 0x2

    goto/16 :goto_2

    .line 667
    :cond_a
    return-object p0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 455
    iget-wide v0, p0, LKx;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 456
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    .line 477
    :cond_2
    :goto_0
    return-object v0

    .line 462
    :cond_3
    iget-object v1, p0, LKx;->a:LKQ;

    .line 463
    iget v0, v1, LKQ;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, LKQ;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 465
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, LKx;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 468
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, LKQ;->a:[B

    iget v3, v1, LKQ;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 469
    iget v2, v1, LKQ;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, LKQ;->b:I

    .line 470
    iget-wide v2, p0, LKx;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, LKx;->b:J

    .line 472
    iget v2, v1, LKQ;->b:I

    iget v3, v1, LKQ;->c:I

    if-ne v2, v3, :cond_2

    .line 473
    invoke-virtual {v1}, LKQ;->a()LKQ;

    move-result-object v2

    iput-object v2, p0, LKx;->a:LKQ;

    .line 474
    sget-object v2, LKR;->a:LKR;

    invoke-virtual {v2, v1}, LKR;->a(LKQ;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 959
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 98
    iget-wide v0, p0, LKx;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 99
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 542
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, LKx;->a([BII)I

    move-result v1

    .line 543
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 544
    :cond_0
    add-int/2addr v0, v1

    .line 545
    goto :goto_0

    .line 546
    :cond_1
    return-void
.end method

.method public a_(LKx;J)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 848
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_1
    iget-wide v0, p1, LKx;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 852
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    .line 854
    iget-object v0, p1, LKx;->a:LKQ;

    iget v0, v0, LKQ;->c:I

    iget-object v1, p1, LKx;->a:LKQ;

    iget v1, v1, LKQ;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    .line 855
    iget-object v0, p0, LKx;->a:LKQ;

    if-eqz v0, :cond_4

    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v0, v0, LKQ;->e:LKQ;

    .line 856
    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, LKQ;->c:I

    iget v4, v0, LKQ;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, p2

    const-wide/16 v6, 0x800

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 859
    :cond_2
    iget-object v0, p1, LKx;->a:LKQ;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, LKQ;->a(I)LKQ;

    move-result-object v0

    iput-object v0, p1, LKx;->a:LKQ;

    .line 870
    :cond_3
    iget-object v0, p1, LKx;->a:LKQ;

    .line 871
    iget v1, v0, LKQ;->c:I

    iget v4, v0, LKQ;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 872
    invoke-virtual {v0}, LKQ;->a()LKQ;

    move-result-object v1

    iput-object v1, p1, LKx;->a:LKQ;

    .line 873
    iget-object v1, p0, LKx;->a:LKQ;

    if-nez v1, :cond_7

    .line 874
    iput-object v0, p0, LKx;->a:LKQ;

    .line 875
    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v1, p0, LKx;->a:LKQ;

    iget-object v6, p0, LKx;->a:LKQ;

    iput-object v6, v1, LKQ;->e:LKQ;

    iput-object v6, v0, LKQ;->d:LKQ;

    .line 881
    :goto_2
    iget-wide v0, p1, LKx;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, LKx;->b:J

    .line 882
    iget-wide v0, p0, LKx;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, LKx;->b:J

    .line 883
    sub-long/2addr p2, v4

    .line 884
    goto :goto_0

    .line 855
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 862
    :cond_5
    iget-object v1, p1, LKx;->a:LKQ;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, LKQ;->a(LKQ;I)V

    .line 863
    iget-wide v0, p1, LKx;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, LKx;->b:J

    .line 864
    iget-wide v0, p0, LKx;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, LKx;->b:J

    .line 885
    :cond_6
    return-void

    .line 877
    :cond_7
    iget-object v1, p0, LKx;->a:LKQ;

    iget-object v1, v1, LKQ;->e:LKQ;

    .line 878
    invoke-virtual {v1, v0}, LKQ;->a(LKQ;)LKQ;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, LKQ;->b()V

    goto :goto_2
.end method

.method public b(J)B
    .locals 7

    .prologue
    .line 295
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 296
    iget-object v0, p0, LKx;->a:LKQ;

    .line 297
    :goto_0
    iget v1, v0, LKQ;->c:I

    iget v2, v0, LKQ;->b:I

    sub-int/2addr v1, v2

    .line 298
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, LKQ;->a:[B

    iget v0, v0, LKQ;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 299
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 296
    iget-object v0, v0, LKQ;->d:LKQ;

    goto :goto_0
.end method

.method public synthetic b(LKC;)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, LKx;->a(LKC;)LKx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, LKx;->a(Ljava/lang/String;)LKx;

    move-result-object v0

    return-object v0
.end method

.method public b()LKU;
    .locals 1

    .prologue
    .line 965
    sget-object v0, LKU;->b:LKU;

    return-object v0
.end method

.method public b(I)LKx;
    .locals 5

    .prologue
    .line 726
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LKx;->d(I)LKQ;

    move-result-object v0

    .line 727
    iget-object v1, v0, LKQ;->a:[B

    .line 728
    iget v2, v0, LKQ;->c:I

    .line 729
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 730
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 731
    iput v2, v0, LKQ;->c:I

    .line 732
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, LKx;->b:J

    .line 733
    return-object p0
.end method

.method public b([B)LKx;
    .locals 2

    .prologue
    .line 679
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LKx;->b([BII)LKx;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)LKx;
    .locals 6

    .prologue
    .line 684
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 687
    add-int v0, p2, p3

    .line 688
    :goto_0
    if-ge p2, v0, :cond_1

    .line 689
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LKx;->d(I)LKQ;

    move-result-object v1

    .line 691
    sub-int v2, v0, p2

    iget v3, v1, LKQ;->c:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 692
    iget-object v3, v1, LKQ;->a:[B

    iget v4, v1, LKQ;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    add-int/2addr p2, v2

    .line 695
    iget v3, v1, LKQ;->c:I

    add-int/2addr v2, v3

    iput v2, v1, LKQ;->c:I

    goto :goto_0

    .line 698
    :cond_1
    iget-wide v0, p0, LKx;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, LKx;->b:J

    .line 699
    return-object p0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, LKx;->b:J

    return-wide v0
.end method

.method public synthetic c([B)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, LKx;->b([B)LKx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, LKx;->b([BII)LKx;

    move-result-object v0

    return-object v0
.end method

.method public c(J)LKC;
    .locals 3

    .prologue
    .line 415
    new-instance v0, LKC;

    invoke-virtual {p0, p1, p2}, LKx;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, LKC;-><init>([B)V

    return-object v0
.end method

.method public c(I)LKx;
    .locals 5

    .prologue
    .line 741
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LKx;->d(I)LKQ;

    move-result-object v0

    .line 742
    iget-object v1, v0, LKQ;->a:[B

    .line 743
    iget v2, v0, LKQ;->c:I

    .line 744
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 745
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 746
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 747
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 748
    iput v2, v0, LKQ;->c:I

    .line 749
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, LKx;->b:J

    .line 750
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, LKx;->t()LKx;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method d(I)LKQ;
    .locals 3

    .prologue
    const/16 v2, 0x800

    .line 783
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 785
    :cond_1
    iget-object v0, p0, LKx;->a:LKQ;

    if-nez v0, :cond_3

    .line 786
    sget-object v0, LKR;->a:LKR;

    invoke-virtual {v0}, LKR;->a()LKQ;

    move-result-object v0

    iput-object v0, p0, LKx;->a:LKQ;

    .line 787
    iget-object v1, p0, LKx;->a:LKQ;

    iget-object v2, p0, LKx;->a:LKQ;

    iget-object v0, p0, LKx;->a:LKQ;

    iput-object v0, v2, LKQ;->e:LKQ;

    iput-object v0, v1, LKQ;->d:LKQ;

    .line 794
    :cond_2
    :goto_0
    return-object v0

    .line 790
    :cond_3
    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v0, v0, LKQ;->e:LKQ;

    .line 791
    iget v1, v0, LKQ;->c:I

    add-int/2addr v1, p1

    if-le v1, v2, :cond_2

    .line 792
    sget-object v1, LKR;->a:LKR;

    invoke-virtual {v1}, LKR;->a()LKQ;

    move-result-object v1

    invoke-virtual {v0, v1}, LKQ;->a(LKQ;)LKQ;

    move-result-object v0

    goto :goto_0
.end method

.method public d()LKx;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    sget-object v0, LKW;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, LKx;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, LKx;->c(I)LKx;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 64
    new-instance v0, LKy;

    invoke-direct {v0, p0}, LKy;-><init>(LKx;)V

    return-object v0
.end method

.method e(J)Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v2, 0x1

    .line 502
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, LKx;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 504
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, LKx;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 505
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, LKx;->g(J)V

    .line 512
    :goto_0
    return-object v0

    .line 510
    :cond_0
    invoke-virtual {p0, p1, p2}, LKx;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {p0, v2, v3}, LKx;->g(J)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 980
    if-ne p0, p1, :cond_0

    move v0, v6

    .line 1009
    :goto_0
    return v0

    .line 981
    :cond_0
    instance-of v2, p1, LKx;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 982
    :cond_1
    check-cast p1, LKx;

    .line 983
    iget-wide v2, p0, LKx;->b:J

    iget-wide v4, p1, LKx;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    .line 984
    :cond_2
    iget-wide v2, p0, LKx;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    .line 986
    :cond_3
    iget-object v5, p0, LKx;->a:LKQ;

    .line 987
    iget-object v4, p1, LKx;->a:LKQ;

    .line 988
    iget v3, v5, LKQ;->b:I

    .line 989
    iget v2, v4, LKQ;->b:I

    .line 991
    :goto_1
    iget-wide v8, p0, LKx;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    .line 992
    iget v8, v5, LKQ;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, LKQ;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 994
    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    .line 995
    iget-object v12, v5, LKQ;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, LKQ;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_4

    move v0, v7

    goto :goto_0

    .line 994
    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_2

    .line 998
    :cond_5
    iget v8, v5, LKQ;->c:I

    if-ne v3, v8, :cond_6

    .line 999
    iget-object v5, v5, LKQ;->d:LKQ;

    .line 1000
    iget v3, v5, LKQ;->b:I

    .line 1003
    :cond_6
    iget v8, v4, LKQ;->c:I

    if-ne v2, v8, :cond_7

    .line 1004
    iget-object v4, v4, LKQ;->d:LKQ;

    .line 1005
    iget v2, v4, LKQ;->b:I

    .line 991
    :cond_7
    add-long/2addr v0, v10

    goto :goto_1

    :cond_8
    move v0, v6

    .line 1009
    goto :goto_0
.end method

.method public synthetic f(I)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, LKx;->b(I)LKx;

    move-result-object v0

    return-object v0
.end method

.method public f()LKx;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public f(J)[B
    .locals 7

    .prologue
    .line 525
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, LKW;->a(JJJ)V

    .line 526
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 531
    invoke-virtual {p0, v0}, LKx;->a([B)V

    .line 532
    return-object v0
.end method

.method public g()LKA;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public synthetic g(I)LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, LKx;->a(I)LKx;

    move-result-object v0

    return-object v0
.end method

.method public g(J)V
    .locals 7

    .prologue
    .line 581
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 582
    iget-object v0, p0, LKx;->a:LKQ;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 584
    :cond_1
    iget-object v0, p0, LKx;->a:LKQ;

    iget v0, v0, LKQ;->c:I

    iget-object v1, p0, LKx;->a:LKQ;

    iget v1, v1, LKQ;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 585
    iget-wide v2, p0, LKx;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LKx;->b:J

    .line 586
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 587
    iget-object v1, p0, LKx;->a:LKQ;

    iget v2, v1, LKQ;->b:I

    add-int/2addr v0, v2

    iput v0, v1, LKQ;->b:I

    .line 589
    iget-object v0, p0, LKx;->a:LKQ;

    iget v0, v0, LKQ;->b:I

    iget-object v1, p0, LKx;->a:LKQ;

    iget v1, v1, LKQ;->c:I

    if-ne v0, v1, :cond_0

    .line 590
    iget-object v0, p0, LKx;->a:LKQ;

    .line 591
    invoke-virtual {v0}, LKQ;->a()LKQ;

    move-result-object v1

    iput-object v1, p0, LKx;->a:LKQ;

    .line 592
    sget-object v1, LKR;->a:LKR;

    invoke-virtual {v1, v0}, LKR;->a(LKQ;)V

    goto :goto_0

    .line 595
    :cond_2
    return-void
.end method

.method public h()Z
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1013
    iget-object v1, p0, LKx;->a:LKQ;

    .line 1014
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1022
    :goto_0
    return v0

    .line 1015
    :cond_0
    const/4 v0, 0x1

    .line 1017
    :cond_1
    iget v2, v1, LKQ;->b:I

    iget v4, v1, LKQ;->c:I

    :goto_1
    if-ge v2, v4, :cond_2

    .line 1018
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, LKQ;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1017
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 1020
    :cond_2
    iget-object v1, v1, LKQ;->d:LKQ;

    .line 1021
    iget-object v2, p0, LKx;->a:LKQ;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public i()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 106
    new-instance v0, LKz;

    invoke-direct {v0, p0}, LKz;-><init>(LKx;)V

    return-object v0
.end method

.method public j()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 260
    iget-wide v0, p0, LKx;->b:J

    .line 261
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 269
    :cond_0
    :goto_0
    return-wide v0

    .line 264
    :cond_1
    iget-object v2, p0, LKx;->a:LKQ;

    iget-object v2, v2, LKQ;->e:LKQ;

    .line 265
    iget v3, v2, LKQ;->c:I

    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    .line 266
    iget v3, v2, LKQ;->c:I

    iget v2, v2, LKQ;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public k()B
    .locals 10

    .prologue
    .line 273
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, LKx;->a:LKQ;

    .line 276
    iget v1, v0, LKQ;->b:I

    .line 277
    iget v2, v0, LKQ;->c:I

    .line 279
    iget-object v3, v0, LKQ;->a:[B

    .line 280
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 281
    iget-wide v6, p0, LKx;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, LKx;->b:J

    .line 283
    if-ne v4, v2, :cond_1

    .line 284
    invoke-virtual {v0}, LKQ;->a()LKQ;

    move-result-object v2

    iput-object v2, p0, LKx;->a:LKQ;

    .line 285
    sget-object v2, LKR;->a:LKR;

    invoke-virtual {v2, v0}, LKR;->a(LKQ;)V

    .line 290
    :goto_0
    return v1

    .line 287
    :cond_1
    iput v4, v0, LKQ;->b:I

    goto :goto_0
.end method

.method public l()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 304
    iget-wide v0, p0, LKx;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LKx;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, LKx;->a:LKQ;

    .line 307
    iget v1, v0, LKQ;->b:I

    .line 308
    iget v2, v0, LKQ;->c:I

    .line 311
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 312
    invoke-virtual {p0}, LKx;->k()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LKx;->k()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 314
    int-to-short v0, v0

    .line 329
    :goto_0
    return v0

    .line 317
    :cond_1
    iget-object v3, v0, LKQ;->a:[B

    .line 318
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 320
    iget-wide v6, p0, LKx;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, LKx;->b:J

    .line 322
    if-ne v5, v2, :cond_2

    .line 323
    invoke-virtual {v0}, LKQ;->a()LKQ;

    move-result-object v2

    iput-object v2, p0, LKx;->a:LKQ;

    .line 324
    sget-object v2, LKR;->a:LKR;

    invoke-virtual {v2, v0}, LKR;->a(LKQ;)V

    .line 329
    :goto_1
    int-to-short v0, v1

    goto :goto_0

    .line 326
    :cond_2
    iput v5, v0, LKQ;->b:I

    goto :goto_1
.end method

.method public m()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 333
    iget-wide v0, p0, LKx;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LKx;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget-object v1, p0, LKx;->a:LKQ;

    .line 336
    iget v0, v1, LKQ;->b:I

    .line 337
    iget v2, v1, LKQ;->c:I

    .line 340
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 341
    invoke-virtual {p0}, LKx;->k()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, LKx;->k()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, LKx;->k()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, LKx;->k()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 361
    :goto_0
    return v0

    .line 347
    :cond_1
    iget-object v3, v1, LKQ;->a:[B

    .line 348
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 352
    iget-wide v6, p0, LKx;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, LKx;->b:J

    .line 354
    if-ne v5, v2, :cond_2

    .line 355
    invoke-virtual {v1}, LKQ;->a()LKQ;

    move-result-object v2

    iput-object v2, p0, LKx;->a:LKQ;

    .line 356
    sget-object v2, LKR;->a:LKR;

    invoke-virtual {v2, v1}, LKR;->a(LKQ;)V

    goto :goto_0

    .line 358
    :cond_2
    iput v5, v1, LKQ;->b:I

    goto :goto_0
.end method

.method public n()S
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, LKx;->l()S

    move-result v0

    invoke-static {v0}, LKW;->a(S)S

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, LKx;->m()I

    move-result v0

    invoke-static {v0}, LKW;->a(I)I

    move-result v0

    return v0
.end method

.method public p()LKC;
    .locals 2

    .prologue
    .line 411
    new-instance v0, LKC;

    invoke-virtual {p0}, LKx;->r()[B

    move-result-object v1

    invoke-direct {v0, v1}, LKC;-><init>([B)V

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 8

    .prologue
    .line 491
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LKx;->a(B)J

    move-result-wide v0

    .line 492
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 493
    new-instance v1, LKx;

    invoke-direct {v1}, LKx;-><init>()V

    .line 494
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, LKx;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LKx;->a(LKx;JJ)LKx;

    .line 495
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LKx;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, LKx;->p()LKC;

    move-result-object v1

    invoke-virtual {v1}, LKC;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    invoke-virtual {p0, v0, v1}, LKx;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[B
    .locals 2

    .prologue
    .line 518
    :try_start_0
    iget-wide v0, p0, LKx;->b:J

    invoke-virtual {p0, v0, v1}, LKx;->f(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public s()V
    .locals 2

    .prologue
    .line 573
    :try_start_0
    iget-wide v0, p0, LKx;->b:J

    invoke-virtual {p0, v0, v1}, LKx;->g(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public t()LKx;
    .locals 6

    .prologue
    .line 1050
    new-instance v1, LKx;

    invoke-direct {v1}, LKx;-><init>()V

    .line 1051
    iget-wide v2, p0, LKx;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1058
    :goto_0
    return-object v0

    .line 1053
    :cond_0
    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v0, v0, LKQ;->a:[B

    iget-object v2, p0, LKx;->a:LKQ;

    iget v2, v2, LKQ;->b:I

    iget-object v3, p0, LKx;->a:LKQ;

    iget v3, v3, LKQ;->c:I

    iget-object v4, p0, LKx;->a:LKQ;

    iget v4, v4, LKQ;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, LKx;->b([BII)LKx;

    .line 1054
    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v0, v0, LKQ;->d:LKQ;

    :goto_1
    iget-object v2, p0, LKx;->a:LKQ;

    if-eq v0, v2, :cond_1

    .line 1055
    iget-object v2, v0, LKQ;->a:[B

    iget v3, v0, LKQ;->b:I

    iget v4, v0, LKQ;->c:I

    iget v5, v0, LKQ;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, LKx;->b([BII)LKx;

    .line 1054
    iget-object v0, v0, LKQ;->d:LKQ;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1058
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1026
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1027
    const-string v0, "Buffer[size=0]"

    .line 1041
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    iget-wide v0, p0, LKx;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1031
    invoke-virtual {p0}, LKx;->t()LKx;

    move-result-object v0

    invoke-virtual {v0}, LKx;->p()LKC;

    move-result-object v0

    .line 1032
    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, LKx;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, LKC;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1036
    :cond_1
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1037
    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v0, v0, LKQ;->a:[B

    iget-object v2, p0, LKx;->a:LKQ;

    iget v2, v2, LKQ;->b:I

    iget-object v3, p0, LKx;->a:LKQ;

    iget v3, v3, LKQ;->c:I

    iget-object v4, p0, LKx;->a:LKQ;

    iget v4, v4, LKQ;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1038
    iget-object v0, p0, LKx;->a:LKQ;

    iget-object v0, v0, LKQ;->d:LKQ;

    :goto_1
    iget-object v2, p0, LKx;->a:LKQ;

    if-eq v0, v2, :cond_2

    .line 1039
    iget-object v2, v0, LKQ;->a:[B

    iget v3, v0, LKQ;->b:I

    iget v4, v0, LKQ;->c:I

    iget v5, v0, LKQ;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1038
    iget-object v0, v0, LKQ;->d:LKQ;

    goto :goto_1

    .line 1041
    :cond_2
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, LKx;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, LKC;->a([B)LKC;

    move-result-object v1

    invoke-virtual {v1}, LKC;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public synthetic u()LKA;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, LKx;->f()LKx;

    move-result-object v0

    return-object v0
.end method
