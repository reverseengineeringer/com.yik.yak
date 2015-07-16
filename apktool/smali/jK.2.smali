.class LjK;
.super Ljava/lang/Object;


# static fields
.field private static final a:LjL;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[LjL;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LjL;

    invoke-direct {v0}, LjL;-><init>()V

    sput-object v0, LjK;->a:LjL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, LjK;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, LjK;->b:Z

    invoke-direct {p0, p1}, LjK;->b(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, LjK;->c:[I

    new-array v0, v0, [LjL;

    iput-object v0, p0, LjK;->d:[LjL;

    iput v2, p0, LjK;->e:I

    return-void
.end method

.method private a([I[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a([LjL;[LjL;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, LjL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, LjK;->c(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private c(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, LjK;->e:I

    iget-object v4, p0, LjK;->c:[I

    iget-object v5, p0, LjK;->d:[LjL;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, LjK;->a:LjL;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, LjK;->b:Z

    iput v0, p0, LjK;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-boolean v0, p0, LjK;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LjK;->c()V

    :cond_0
    iget v0, p0, LjK;->e:I

    return v0
.end method

.method public a(I)LjL;
    .locals 1

    iget-boolean v0, p0, LjK;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LjK;->c()V

    :cond_0
    iget-object v0, p0, LjK;->d:[LjL;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, LjK;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, LjK;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, LjK;

    invoke-virtual {p0}, LjK;->a()I

    move-result v2

    invoke-virtual {p1}, LjK;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, LjK;->c:[I

    iget-object v3, p1, LjK;->c:[I

    iget v4, p0, LjK;->e:I

    invoke-direct {p0, v2, v3, v4}, LjK;->a([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, LjK;->d:[LjL;

    iget-object v3, p1, LjK;->d:[LjL;

    iget v4, p0, LjK;->e:I

    invoke-direct {p0, v2, v3, v4}, LjK;->a([LjL;[LjL;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, LjK;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LjK;->c()V

    :cond_0
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, LjK;->e:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, LjK;->c:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, LjK;->d:[LjL;

    aget-object v2, v2, v0

    invoke-virtual {v2}, LjL;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
