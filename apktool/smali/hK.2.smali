.class public final LhK;
.super LjL;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LjL",
        "<",
        "LhK;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile o:[LhK;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[LhK;

.field public d:[LhK;

.field public e:[LhK;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Z

.field public j:[LhK;

.field public k:[I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LjL;-><init>()V

    invoke-virtual {p0}, LhK;->b()LhK;

    return-void
.end method

.method public static a()[LhK;
    .locals 2

    sget-object v0, LhK;->o:[LhK;

    if-nez v0, :cond_1

    sget-object v1, LjP;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, LhK;->o:[LhK;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [LhK;

    sput-object v0, LhK;->o:[LhK;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, LhK;->o:[LhK;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(LjJ;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, LhK;->a:I

    invoke-virtual {p1, v0, v2}, LjJ;->a(II)V

    iget-object v0, p0, LhK;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v2, p0, LhK;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, LjJ;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, LhK;->c:[LhK;

    if-eqz v0, :cond_2

    iget-object v0, p0, LhK;->c:[LhK;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, LhK;->c:[LhK;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, LhK;->c:[LhK;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, LjJ;->a(ILjQ;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LhK;->d:[LhK;

    if-eqz v0, :cond_4

    iget-object v0, p0, LhK;->d:[LhK;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, LhK;->d:[LhK;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, LhK;->d:[LhK;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, LjJ;->a(ILjQ;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, LhK;->e:[LhK;

    if-eqz v0, :cond_6

    iget-object v0, p0, LhK;->e:[LhK;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v2, p0, LhK;->e:[LhK;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, LhK;->e:[LhK;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, LjJ;->a(ILjQ;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, LhK;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    iget-object v2, p0, LhK;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, LjJ;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, LhK;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v2, p0, LhK;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, LjJ;->a(ILjava/lang/String;)V

    :cond_8
    iget-wide v2, p0, LhK;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-wide v2, p0, LhK;->h:J

    invoke-virtual {p1, v0, v2, v3}, LjJ;->a(IJ)V

    :cond_9
    iget-boolean v0, p0, LhK;->l:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-boolean v2, p0, LhK;->l:Z

    invoke-virtual {p1, v0, v2}, LjJ;->a(IZ)V

    :cond_a
    iget-object v0, p0, LhK;->k:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, LhK;->k:[I

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_3
    iget-object v2, p0, LhK;->k:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    const/16 v2, 0xa

    iget-object v3, p0, LhK;->k:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, LjJ;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, LhK;->j:[LhK;

    if-eqz v0, :cond_d

    iget-object v0, p0, LhK;->j:[LhK;

    array-length v0, v0

    if-lez v0, :cond_d

    :goto_4
    iget-object v0, p0, LhK;->j:[LhK;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, LhK;->j:[LhK;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, LjJ;->a(ILjQ;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v0, p0, LhK;->i:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    iget-boolean v1, p0, LhK;->i:Z

    invoke-virtual {p1, v0, v1}, LjJ;->a(IZ)V

    :cond_e
    invoke-super {p0, p1}, LjL;->a(LjJ;)V

    return-void
.end method

.method public b()LhK;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, LhK;->a:I

    const-string v0, ""

    iput-object v0, p0, LhK;->b:Ljava/lang/String;

    invoke-static {}, LhK;->a()[LhK;

    move-result-object v0

    iput-object v0, p0, LhK;->c:[LhK;

    invoke-static {}, LhK;->a()[LhK;

    move-result-object v0

    iput-object v0, p0, LhK;->d:[LhK;

    invoke-static {}, LhK;->a()[LhK;

    move-result-object v0

    iput-object v0, p0, LhK;->e:[LhK;

    const-string v0, ""

    iput-object v0, p0, LhK;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LhK;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LhK;->h:J

    iput-boolean v2, p0, LhK;->i:Z

    invoke-static {}, LhK;->a()[LhK;

    move-result-object v0

    iput-object v0, p0, LhK;->j:[LhK;

    sget-object v0, LjT;->a:[I

    iput-object v0, p0, LhK;->k:[I

    iput-boolean v2, p0, LhK;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, LhK;->m:LjN;

    const/4 v0, -0x1

    iput v0, p0, LhK;->n:I

    return-object p0
.end method

.method protected c()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, LjL;->c()I

    move-result v0

    const/4 v2, 0x1

    iget v3, p0, LhK;->a:I

    invoke-static {v2, v3}, LjJ;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, LhK;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, LhK;->b:Ljava/lang/String;

    invoke-static {v2, v3}, LjJ;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, LhK;->c:[LhK;

    if-eqz v2, :cond_3

    iget-object v2, p0, LhK;->c:[LhK;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, LhK;->c:[LhK;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, LhK;->c:[LhK;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    invoke-static {v4, v3}, LjJ;->c(ILjQ;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    iget-object v2, p0, LhK;->d:[LhK;

    if-eqz v2, :cond_6

    iget-object v2, p0, LhK;->d:[LhK;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, LhK;->d:[LhK;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, LhK;->d:[LhK;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    invoke-static {v4, v3}, LjJ;->c(ILjQ;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    iget-object v2, p0, LhK;->e:[LhK;

    if-eqz v2, :cond_9

    iget-object v2, p0, LhK;->e:[LhK;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, LhK;->e:[LhK;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, LhK;->e:[LhK;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/4 v4, 0x5

    invoke-static {v4, v3}, LjJ;->c(ILjQ;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :cond_9
    iget-object v2, p0, LhK;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x6

    iget-object v3, p0, LhK;->f:Ljava/lang/String;

    invoke-static {v2, v3}, LjJ;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, LhK;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x7

    iget-object v3, p0, LhK;->g:Ljava/lang/String;

    invoke-static {v2, v3}, LjJ;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-wide v2, p0, LhK;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    iget-wide v4, p0, LhK;->h:J

    invoke-static {v2, v4, v5}, LjJ;->b(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-boolean v2, p0, LhK;->l:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x9

    iget-boolean v3, p0, LhK;->l:Z

    invoke-static {v2, v3}, LjJ;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, LhK;->k:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, LhK;->k:[I

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    move v3, v1

    :goto_3
    iget-object v4, p0, LhK;->k:[I

    array-length v4, v4

    if-ge v2, v4, :cond_e

    iget-object v4, p0, LhK;->k:[I

    aget v4, v4, v2

    invoke-static {v4}, LjJ;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, v3

    iget-object v2, p0, LhK;->k:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_f
    iget-object v2, p0, LhK;->j:[LhK;

    if-eqz v2, :cond_11

    iget-object v2, p0, LhK;->j:[LhK;

    array-length v2, v2

    if-lez v2, :cond_11

    :goto_4
    iget-object v2, p0, LhK;->j:[LhK;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, LhK;->j:[LhK;

    aget-object v2, v2, v1

    if-eqz v2, :cond_10

    const/16 v3, 0xb

    invoke-static {v3, v2}, LjJ;->c(ILjQ;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iget-boolean v1, p0, LhK;->i:Z

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    iget-boolean v2, p0, LhK;->i:Z

    invoke-static {v1, v2}, LjJ;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, LhK;

    if-eqz v1, :cond_0

    check-cast p1, LhK;

    iget v1, p0, LhK;->a:I

    iget v2, p1, LhK;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LhK;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, LhK;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, LhK;->c:[LhK;

    iget-object v2, p1, LhK;->c:[LhK;

    invoke-static {v1, v2}, LjP;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LhK;->d:[LhK;

    iget-object v2, p1, LhK;->d:[LhK;

    invoke-static {v1, v2}, LjP;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LhK;->e:[LhK;

    iget-object v2, p1, LhK;->e:[LhK;

    invoke-static {v1, v2}, LjP;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LhK;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, LhK;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, LhK;->g:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, LhK;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_4
    iget-wide v2, p0, LhK;->h:J

    iget-wide v4, p1, LhK;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, LhK;->i:Z

    iget-boolean v2, p1, LhK;->i:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LhK;->j:[LhK;

    iget-object v2, p1, LhK;->j:[LhK;

    invoke-static {v1, v2}, LjP;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LhK;->k:[I

    iget-object v2, p1, LhK;->k:[I

    invoke-static {v1, v2}, LjP;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LhK;->l:Z

    iget-boolean v2, p1, LhK;->l:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, LhK;->a(LjL;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, LhK;->b:Ljava/lang/String;

    iget-object v2, p1, LhK;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, LhK;->f:Ljava/lang/String;

    iget-object v2, p1, LhK;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, LhK;->g:Ljava/lang/String;

    iget-object v2, p1, LhK;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 8

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget v0, p0, LhK;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, LhK;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, LhK;->c:[LhK;

    invoke-static {v4}, LjP;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, LhK;->d:[LhK;

    invoke-static {v4}, LjP;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, LhK;->e:[LhK;

    invoke-static {v4}, LjP;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, LhK;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, LhK;->g:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, LhK;->h:J

    iget-wide v6, p0, LhK;->h:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, LhK;->i:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LhK;->j:[LhK;

    invoke-static {v1}, LjP;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LhK;->k:[I

    invoke-static {v1}, LjP;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LhK;->l:Z

    if-eqz v1, :cond_4

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LhK;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, LhK;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LhK;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, LhK;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method
