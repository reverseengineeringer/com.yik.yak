.class Lur;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lum;


# direct methods
.method private constructor <init>(Lum;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lur;->a:Lum;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lum;Lun;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lur;-><init>(Lum;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lur;->a:Lum;

    invoke-static {v0}, Lum;->c(Lum;)Lup;

    move-result-object v0

    sget-object v1, LrP;->b:LrP;

    invoke-static {}, Lum;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lup;->a(LrP;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch LrK; {:try_start_0 .. :try_end_0} :catch_0
    .catch LrJ; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Luq;

    iget-object v2, p0, Lur;->a:Lum;

    invoke-direct {v1, v2, v0}, Luq;-><init>(Lum;Ljava/lang/Throwable;)V

    throw v1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    new-instance v1, Luq;

    iget-object v2, p0, Lur;->a:Lum;

    invoke-direct {v1, v2, v0}, Luq;-><init>(Lum;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-array v0, v3, [B

    .line 130
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 131
    invoke-virtual {p0, v0, v2, v3}, Lur;->write([BII)V

    .line 132
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lur;->write([BII)V

    .line 138
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 143
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lur;->a:Lum;

    invoke-static {v1}, Lum;->c(Lum;)Lup;

    move-result-object v1

    sget-object v2, LrP;->b:LrP;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lup;->a(LrP;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch LrK; {:try_start_0 .. :try_end_0} :catch_0
    .catch LrJ; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Luq;

    iget-object v2, p0, Lur;->a:Lum;

    invoke-direct {v1, v2, v0}, Luq;-><init>(Lum;Ljava/lang/Throwable;)V

    throw v1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    new-instance v1, Luq;

    iget-object v2, p0, Lur;->a:Lum;

    invoke-direct {v1, v2, v0}, Luq;-><init>(Lum;Ljava/lang/Throwable;)V

    throw v1
.end method
