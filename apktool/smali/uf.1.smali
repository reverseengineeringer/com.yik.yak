.class Luf;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lua;


# direct methods
.method private constructor <init>(Lua;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Luf;->a:Lua;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lua;Lub;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Luf;-><init>(Lua;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Luf;->a:Lua;

    invoke-static {v0}, Lua;->c(Lua;)Lud;

    move-result-object v0

    sget-object v1, LrL;->b:LrL;

    invoke-static {}, Lua;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lud;->a(LrL;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch LrG; {:try_start_0 .. :try_end_0} :catch_0
    .catch LrF; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lue;

    iget-object v2, p0, Luf;->a:Lua;

    invoke-direct {v1, v2, v0}, Lue;-><init>(Lua;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    new-instance v1, Lue;

    iget-object v2, p0, Luf;->a:Lua;

    invoke-direct {v1, v2, v0}, Lue;-><init>(Lua;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-array v0, v3, [B

    .line 127
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 128
    invoke-virtual {p0, v0, v2, v3}, Luf;->write([BII)V

    .line 129
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Luf;->write([BII)V

    .line 135
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 140
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    :try_start_0
    iget-object v1, p0, Luf;->a:Lua;

    invoke-static {v1}, Lua;->c(Lua;)Lud;

    move-result-object v1

    sget-object v2, LrL;->b:LrL;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lud;->a(LrL;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch LrG; {:try_start_0 .. :try_end_0} :catch_0
    .catch LrF; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lue;

    iget-object v2, p0, Luf;->a:Lua;

    invoke-direct {v1, v2, v0}, Lue;-><init>(Lua;Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :catch_1
    move-exception v0

    .line 146
    new-instance v1, Lue;

    iget-object v2, p0, Luf;->a:Lua;

    invoke-direct {v1, v2, v0}, Lue;-><init>(Lua;Ljava/lang/Throwable;)V

    throw v1
.end method
