.class Lqv;
.super LpT;
.source "SourceFile"


# instance fields
.field protected final c:[B

.field private d:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, LpT;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lqv;->d:I

    .line 34
    iput-object p1, p0, Lqv;->c:[B

    .line 35
    return-void
.end method

.method static a(I[BII)I
    .locals 3

    .prologue
    .line 246
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 247
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return p0
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lqv;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lqv;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected a(III)I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lqv;->b()I

    move-result v0

    add-int/2addr v0, p2

    .line 141
    iget-object v1, p0, Lqv;->c:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, LqV;->a(I[BII)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lqv;->c:[B

    invoke-virtual {p0}, Lqv;->b()I

    move-result v2

    invoke-virtual {p0}, Lqv;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method protected a([BIII)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lqv;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void
.end method

.method a(Lqv;II)Z
    .locals 7

    .prologue
    .line 184
    invoke-virtual {p1}, Lqv;->a()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lqv;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1}, Lqv;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lqv;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iget-object v2, p0, Lqv;->c:[B

    .line 195
    iget-object v3, p1, Lqv;->c:[B

    .line 196
    invoke-virtual {p0}, Lqv;->b()I

    move-result v0

    add-int v4, v0, p3

    .line 197
    invoke-virtual {p0}, Lqv;->b()I

    move-result v1

    invoke-virtual {p1}, Lqv;->b()I

    move-result v0

    add-int/2addr v0, p2

    .line 199
    :goto_0
    if-ge v1, v4, :cond_3

    .line 200
    aget-byte v5, v2, v1

    aget-byte v6, v3, v0

    if-eq v5, v6, :cond_2

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_1
    return v0

    .line 199
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method protected b(III)I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lqv;->c:[B

    invoke-virtual {p0}, Lqv;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lqv;->a(I[BII)I

    move-result v0

    return v0
.end method

.method b(Ljava/io/OutputStream;II)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lqv;->c:[B

    invoke-virtual {p0}, Lqv;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    return-void
.end method

.method public c()LpU;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lqx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqx;-><init>(Lqv;Lqw;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 166
    :goto_0
    return v0

    .line 152
    :cond_0
    instance-of v0, p1, LpT;

    if-nez v0, :cond_1

    move v0, v2

    .line 153
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lqv;->a()I

    move-result v3

    move-object v0, p1

    check-cast v0, LpT;

    invoke-virtual {v0}, LpT;->a()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lqv;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 160
    goto :goto_0

    .line 163
    :cond_3
    instance-of v0, p1, Lqv;

    if-eqz v0, :cond_4

    .line 164
    check-cast p1, Lqv;

    invoke-virtual {p0}, Lqv;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lqv;->a(Lqv;II)Z

    move-result v0

    goto :goto_0

    .line 165
    :cond_4
    instance-of v0, p1, LqD;

    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 168
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lqv;->b()I

    move-result v0

    .line 135
    iget-object v1, p0, Lqv;->c:[B

    invoke-virtual {p0}, Lqv;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, LqV;->a([BII)Z

    move-result v0

    return v0
.end method

.method public h()LpW;
    .locals 1

    .prologue
    .line 270
    invoke-static {p0}, LpW;->a(Lqv;)LpW;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lqv;->d:I

    .line 224
    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lqv;->a()I

    move-result v0

    .line 226
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lqv;->b(III)I

    move-result v0

    .line 227
    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_0
    iput v0, p0, Lqv;->d:I

    .line 232
    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lqv;->c()LpU;

    move-result-object v0

    return-object v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lqv;->d:I

    return v0
.end method
