.class LqG;
.super LpW;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private final d:I

.field private final e:LpW;

.field private final f:LpW;

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 69
    :goto_0
    if-lez v0, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 74
    goto :goto_0

    .line 78
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, LqG;->c:[I

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, LqG;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 82
    sget-object v3, LqG;->c:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method private constructor <init>(LpW;LpW;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, LpW;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, LqG;->i:I

    .line 102
    iput-object p1, p0, LqG;->e:LpW;

    .line 103
    iput-object p2, p0, LqG;->f:LpW;

    .line 104
    invoke-virtual {p1}, LpW;->a()I

    move-result v0

    iput v0, p0, LqG;->g:I

    .line 105
    iget v0, p0, LqG;->g:I

    invoke-virtual {p2}, LpW;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LqG;->d:I

    .line 106
    invoke-virtual {p1}, LpW;->j()I

    move-result v0

    invoke-virtual {p2}, LpW;->j()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LqG;->h:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(LpW;LpW;LqH;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, LqG;-><init>(LpW;LpW;)V

    return-void
.end method

.method static a(LpW;LpW;)LpW;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x80

    .line 125
    instance-of v0, p0, LqG;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LqG;

    .line 127
    :goto_0
    invoke-virtual {p1}, LpW;->a()I

    move-result v2

    if-nez v2, :cond_1

    .line 173
    :goto_1
    return-object p0

    :cond_0
    move-object v0, v1

    .line 125
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, LpW;->a()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, p1

    .line 130
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, LpW;->a()I

    move-result v2

    invoke-virtual {p1}, LpW;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 133
    if-ge v2, v5, :cond_3

    .line 136
    invoke-static {p0, p1}, LqG;->b(LpW;LpW;)Lqy;

    move-result-object p0

    goto :goto_1

    .line 137
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v0, LqG;->f:LpW;

    invoke-virtual {v3}, LpW;->a()I

    move-result v3

    invoke-virtual {p1}, LpW;->a()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v5, :cond_4

    .line 149
    iget-object v1, v0, LqG;->f:LpW;

    invoke-static {v1, p1}, LqG;->b(LpW;LpW;)Lqy;

    move-result-object v1

    .line 150
    new-instance p0, LqG;

    iget-object v0, v0, LqG;->e:LpW;

    invoke-direct {p0, v0, v1}, LqG;-><init>(LpW;LpW;)V

    goto :goto_1

    .line 151
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, v0, LqG;->e:LpW;

    invoke-virtual {v3}, LpW;->j()I

    move-result v3

    iget-object v4, v0, LqG;->f:LpW;

    invoke-virtual {v4}, LpW;->j()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, LqG;->j()I

    move-result v3

    invoke-virtual {p1}, LpW;->j()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 159
    new-instance v1, LqG;

    iget-object v2, v0, LqG;->f:LpW;

    invoke-direct {v1, v2, p1}, LqG;-><init>(LpW;LpW;)V

    .line 160
    new-instance p0, LqG;

    iget-object v0, v0, LqG;->e:LpW;

    invoke-direct {p0, v0, v1}, LqG;-><init>(LpW;LpW;)V

    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p0}, LpW;->j()I

    move-result v0

    invoke-virtual {p1}, LpW;->j()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 165
    sget-object v3, LqG;->c:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    .line 167
    new-instance v0, LqG;

    invoke-direct {v0, p0, p1}, LqG;-><init>(LpW;LpW;)V

    move-object p0, v0

    goto :goto_1

    .line 169
    :cond_6
    new-instance v0, LqI;

    invoke-direct {v0, v1}, LqI;-><init>(LqH;)V

    invoke-static {v0, p0, p1}, LqI;->a(LqI;LpW;LpW;)LpW;

    move-result-object p0

    goto/16 :goto_1
.end method

.method static synthetic a(LqG;)LpW;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LqG;->e:LpW;

    return-object v0
.end method

.method static synthetic b(LqG;)LpW;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LqG;->f:LpW;

    return-object v0
.end method

.method private static b(LpW;LpW;)Lqy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-virtual {p0}, LpW;->a()I

    move-result v0

    .line 187
    invoke-virtual {p1}, LpW;->a()I

    move-result v1

    .line 188
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 189
    invoke-virtual {p0, v2, v3, v3, v0}, LpW;->b([BIII)V

    .line 190
    invoke-virtual {p1, v2, v3, v0, v1}, LpW;->b([BIII)V

    .line 191
    new-instance v0, Lqy;

    invoke-direct {v0, v2}, Lqy;-><init>([B)V

    return-object v0
.end method

.method private b(LpW;)Z
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    .line 466
    new-instance v7, LqJ;

    invoke-direct {v7, p0, v1}, LqJ;-><init>(LpW;LqH;)V

    .line 467
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy;

    .line 470
    new-instance v8, LqJ;

    invoke-direct {v8, p1, v1}, LqJ;-><init>(LpW;LqH;)V

    .line 471
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqy;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    .line 475
    :goto_0
    invoke-virtual {v5}, Lqy;->a()I

    move-result v1

    sub-int v9, v1, v6

    .line 476
    invoke-virtual {v3}, Lqy;->a()I

    move-result v1

    sub-int v10, v1, v4

    .line 477
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 480
    if-nez v6, :cond_0

    invoke-virtual {v5, v3, v4, v11}, Lqy;->a(Lqy;II)Z

    move-result v1

    .line 483
    :goto_1
    if-nez v1, :cond_1

    .line 490
    :goto_2
    return v2

    .line 480
    :cond_0
    invoke-virtual {v3, v5, v6, v11}, Lqy;->a(Lqy;II)Z

    move-result v1

    goto :goto_1

    .line 487
    :cond_1
    add-int v1, v0, v11

    .line 488
    iget v0, p0, LqG;->d:I

    if-lt v1, v0, :cond_3

    .line 489
    iget v0, p0, LqG;->d:I

    if-ne v1, v0, :cond_2

    .line 490
    const/4 v2, 0x1

    goto :goto_2

    .line 492
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 495
    :cond_3
    if-ne v11, v9, :cond_4

    .line 497
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy;

    move-object v5, v0

    move v6, v2

    .line 501
    :goto_3
    if-ne v11, v10, :cond_5

    .line 503
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy;

    move v3, v2

    :goto_4
    move v4, v3

    move-object v3, v0

    move v0, v1

    .line 507
    goto :goto_0

    .line 499
    :cond_4
    add-int/2addr v6, v11

    goto :goto_3

    .line 505
    :cond_5
    add-int v0, v4, v11

    move-object v12, v3

    move v3, v0

    move-object v0, v12

    goto :goto_4
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, LqG;->c:[I

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, LqG;->d:I

    return v0
.end method

.method protected a(III)I
    .locals 4

    .prologue
    .line 408
    add-int v0, p2, p3

    .line 409
    iget v1, p0, LqG;->g:I

    if-gt v0, v1, :cond_0

    .line 410
    iget-object v0, p0, LqG;->e:LpW;

    invoke-virtual {v0, p1, p2, p3}, LpW;->a(III)I

    move-result v0

    .line 416
    :goto_0
    return v0

    .line 411
    :cond_0
    iget v0, p0, LqG;->g:I

    if-lt p2, v0, :cond_1

    .line 412
    iget-object v0, p0, LqG;->f:LpW;

    iget v1, p0, LqG;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, LpW;->a(III)I

    move-result v0

    goto :goto_0

    .line 414
    :cond_1
    iget v0, p0, LqG;->g:I

    sub-int/2addr v0, p2

    .line 415
    iget-object v1, p0, LqG;->e:LpW;

    invoke-virtual {v1, p1, p2, v0}, LpW;->a(III)I

    move-result v1

    .line 416
    iget-object v2, p0, LqG;->f:LpW;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, LpW;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, LqG;->e()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected a([BIII)V
    .locals 4

    .prologue
    .line 332
    add-int v0, p2, p4

    iget v1, p0, LqG;->g:I

    if-gt v0, v1, :cond_0

    .line 333
    iget-object v0, p0, LqG;->e:LpW;

    invoke-virtual {v0, p1, p2, p3, p4}, LpW;->a([BIII)V

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v0, p0, LqG;->g:I

    if-lt p2, v0, :cond_1

    .line 335
    iget-object v0, p0, LqG;->f:LpW;

    iget v1, p0, LqG;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, LpW;->a([BIII)V

    goto :goto_0

    .line 338
    :cond_1
    iget v0, p0, LqG;->g:I

    sub-int/2addr v0, p2

    .line 339
    iget-object v1, p0, LqG;->e:LpW;

    invoke-virtual {v1, p1, p2, p3, v0}, LpW;->a([BIII)V

    .line 340
    iget-object v1, p0, LqG;->f:LpW;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, LpW;->a([BIII)V

    goto :goto_0
.end method

.method protected b(III)I
    .locals 4

    .prologue
    .line 539
    add-int v0, p2, p3

    .line 540
    iget v1, p0, LqG;->g:I

    if-gt v0, v1, :cond_0

    .line 541
    iget-object v0, p0, LqG;->e:LpW;

    invoke-virtual {v0, p1, p2, p3}, LpW;->b(III)I

    move-result v0

    .line 547
    :goto_0
    return v0

    .line 542
    :cond_0
    iget v0, p0, LqG;->g:I

    if-lt p2, v0, :cond_1

    .line 543
    iget-object v0, p0, LqG;->f:LpW;

    iget v1, p0, LqG;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, LpW;->b(III)I

    move-result v0

    goto :goto_0

    .line 545
    :cond_1
    iget v0, p0, LqG;->g:I

    sub-int/2addr v0, p2

    .line 546
    iget-object v1, p0, LqG;->e:LpW;

    invoke-virtual {v1, p1, p2, v0}, LpW;->b(III)I

    move-result v1

    .line 547
    iget-object v2, p0, LqG;->f:LpW;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, LpW;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method b(Ljava/io/OutputStream;II)V
    .locals 3

    .prologue
    .line 379
    add-int v0, p2, p3

    iget v1, p0, LqG;->g:I

    if-gt v0, v1, :cond_0

    .line 380
    iget-object v0, p0, LqG;->e:LpW;

    invoke-virtual {v0, p1, p2, p3}, LpW;->b(Ljava/io/OutputStream;II)V

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_0
    iget v0, p0, LqG;->g:I

    if-lt p2, v0, :cond_1

    .line 382
    iget-object v0, p0, LqG;->f:LpW;

    iget v1, p0, LqG;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, LpW;->b(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 384
    :cond_1
    iget v0, p0, LqG;->g:I

    sub-int/2addr v0, p2

    .line 385
    iget-object v1, p0, LqG;->e:LpW;

    invoke-virtual {v1, p1, p2, v0}, LpW;->b(Ljava/io/OutputStream;II)V

    .line 386
    iget-object v1, p0, LqG;->f:LpW;

    const/4 v2, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, LpW;->b(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method public c()LpX;
    .locals 2

    .prologue
    .line 752
    new-instance v0, LqK;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LqK;-><init>(LqG;LqH;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 425
    if-ne p1, p0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    instance-of v2, p1, LpW;

    if-nez v2, :cond_2

    move v0, v1

    .line 429
    goto :goto_0

    .line 432
    :cond_2
    check-cast p1, LpW;

    .line 433
    iget v2, p0, LqG;->d:I

    invoke-virtual {p1}, LpW;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 434
    goto :goto_0

    .line 436
    :cond_3
    iget v2, p0, LqG;->d:I

    if-eqz v2, :cond_0

    .line 445
    iget v0, p0, LqG;->i:I

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {p1}, LpW;->l()I

    move-result v0

    .line 447
    if-eqz v0, :cond_4

    iget v2, p0, LqG;->i:I

    if-eq v2, v0, :cond_4

    move v0, v1

    .line 448
    goto :goto_0

    .line 452
    :cond_4
    invoke-direct {p0, p1}, LqG;->b(LpW;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, LqG;->e:LpW;

    iget v2, p0, LqG;->g:I

    invoke-virtual {v1, v0, v0, v2}, LpW;->a(III)I

    move-result v1

    .line 402
    iget-object v2, p0, LqG;->f:LpW;

    iget-object v3, p0, LqG;->f:LpW;

    invoke-virtual {v3}, LpW;->a()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, LpW;->a(III)I

    move-result v1

    .line 403
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public h()LpZ;
    .locals 1

    .prologue
    .line 556
    new-instance v0, LqL;

    invoke-direct {v0, p0}, LqL;-><init>(LqG;)V

    invoke-static {v0}, LpZ;->a(Ljava/io/InputStream;)LpZ;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 519
    iget v0, p0, LqG;->i:I

    .line 521
    if-nez v0, :cond_1

    .line 522
    iget v0, p0, LqG;->d:I

    .line 523
    const/4 v1, 0x0

    iget v2, p0, LqG;->d:I

    invoke-virtual {p0, v0, v1, v2}, LqG;->b(III)I

    move-result v0

    .line 524
    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_0
    iput v0, p0, LqG;->i:I

    .line 529
    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, LqG;->c()LpX;

    move-result-object v0

    return-object v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, LqG;->h:I

    return v0
.end method

.method protected k()Z
    .locals 3

    .prologue
    .line 262
    iget v0, p0, LqG;->d:I

    sget-object v1, LqG;->c:[I

    iget v2, p0, LqG;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, LqG;->i:I

    return v0
.end method
