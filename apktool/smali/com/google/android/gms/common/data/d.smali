.class public abstract Lcom/google/android/gms/common/data/d;
.super Ljava/lang/Object;


# instance fields
.field protected final JG:Lcom/google/android/gms/common/data/DataHolder;

.field protected KZ:I

.field private La:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/d;->as(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public aQ(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->aQ(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected aR(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->g(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected aS(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->h(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected as(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, LiB;->a(Z)V

    iput p1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->au(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/data/d;->La:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/data/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/common/data/d;

    iget v1, p1, Lcom/google/android/gms/common/data/d;->KZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/android/gms/common/data/d;->La:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected gW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    return v0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected getByteArray(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/data/d;->KZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/data/d;->La:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    aput-object v2, v0, v1

    invoke-static {v0}, Lix;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->JG:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
