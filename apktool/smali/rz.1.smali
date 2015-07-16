.class public Lrz;
.super Lrw;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Assert",
        "UseValueOf"
    }
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field private g:Ljava/nio/ByteBuffer;

.field private h:LrO;

.field private final i:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lrz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lrz;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lrw;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lrz;->h:LrO;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lrz;->i:Ljava/util/Random;

    return-void
.end method

.method private a(LrP;)B
    .locals 3

    .prologue
    .line 163
    sget-object v0, LrP;->a:LrP;

    if-ne p1, v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    .line 165
    :cond_0
    sget-object v0, LrP;->b:LrP;

    if-ne p1, v0, :cond_1

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, LrP;->c:LrP;

    if-ne p1, v0, :cond_2

    .line 168
    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :cond_2
    sget-object v0, LrP;->f:LrP;

    if-ne p1, v0, :cond_3

    .line 170
    const/16 v0, 0x8

    goto :goto_0

    .line 171
    :cond_3
    sget-object v0, LrP;->d:LrP;

    if-ne p1, v0, :cond_4

    .line 172
    const/16 v0, 0x9

    goto :goto_0

    .line 173
    :cond_4
    sget-object v0, LrP;->e:LrP;

    if-ne p1, v0, :cond_5

    .line 174
    const/16 v0, 0xa

    goto :goto_0

    .line 175
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LrP;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lsa;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(B)LrP;
    .locals 3

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 241
    :pswitch_0
    new-instance v0, LrG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LrG;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_1
    sget-object v0, LrP;->a:LrP;

    .line 238
    :goto_0
    return-object v0

    .line 229
    :pswitch_2
    sget-object v0, LrP;->b:LrP;

    goto :goto_0

    .line 231
    :pswitch_3
    sget-object v0, LrP;->c:LrP;

    goto :goto_0

    .line 234
    :pswitch_4
    sget-object v0, LrP;->f:LrP;

    goto :goto_0

    .line 236
    :pswitch_5
    sget-object v0, LrP;->d:LrP;

    goto :goto_0

    .line 238
    :pswitch_6
    sget-object v0, LrP;->e:LrP;

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(JI)[B
    .locals 7

    .prologue
    .line 216
    new-array v1, p3, [B

    .line 217
    mul-int/lit8 v0, p3, 0x8

    add-int/lit8 v2, v0, -0x8

    .line 218
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 219
    mul-int/lit8 v3, v0, 0x8

    sub-int v3, v2, v3

    ushr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-object v1
.end method

.method public static b(LrW;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 53
    const-string v1, "Sec-WebSocket-Version"

    invoke-interface {p0, v1}, LrW;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(LrO;)Ljava/nio/ByteBuffer;
    .locals 12

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/16 v5, -0x80

    const/4 v2, 0x0

    .line 96
    invoke-interface {p1}, LrO;->c()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 97
    iget-object v0, p0, Lrz;->d:Lrp;

    sget-object v3, Lrp;->a:Lrp;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 98
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v6, 0x7d

    if-gt v3, v6, :cond_1

    move v6, v1

    .line 99
    :goto_1
    if-le v6, v1, :cond_3

    add-int/lit8 v3, v6, 0x1

    :goto_2
    add-int/lit8 v9, v3, 0x1

    if-eqz v0, :cond_4

    move v3, v4

    :goto_3
    add-int/2addr v3, v9

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 100
    invoke-interface {p1}, LrO;->f()LrP;

    move-result-object v3

    invoke-direct {p0, v3}, Lrz;->a(LrP;)B

    move-result v10

    .line 101
    invoke-interface {p1}, LrO;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_4
    int-to-byte v3, v3

    .line 102
    or-int/2addr v3, v10

    int-to-byte v3, v3

    .line 103
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v10, v3

    invoke-direct {p0, v10, v11, v6}, Lrz;->a(JI)[B

    move-result-object v3

    .line 105
    sget-boolean v10, Lrz;->f:Z

    if-nez v10, :cond_6

    array-length v10, v3

    if-eq v10, v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const v6, 0xffff

    if-gt v3, v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    goto :goto_1

    :cond_3
    move v3, v6

    .line 99
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v2

    .line 101
    goto :goto_4

    .line 107
    :cond_6
    if-ne v6, v1, :cond_8

    .line 108
    aget-byte v1, v3, v2

    if-eqz v0, :cond_7

    :goto_5
    or-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    :goto_6
    if-eqz v0, :cond_d

    .line 119
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lrz;->i:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    :goto_7
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 123
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    move v5, v2

    .line 108
    goto :goto_5

    .line 109
    :cond_8
    if-ne v6, v7, :cond_a

    .line 110
    if-eqz v0, :cond_9

    :goto_8
    or-int/lit8 v1, v5, 0x7e

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_9
    move v5, v2

    .line 110
    goto :goto_8

    .line 112
    :cond_a
    const/16 v1, 0x8

    if-ne v6, v1, :cond_c

    .line 113
    if-eqz v0, :cond_b

    :goto_9
    or-int/lit8 v1, v5, 0x7f

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_b
    move v5, v2

    .line 113
    goto :goto_9

    .line 116
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size representation not supported/specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_d
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 128
    :cond_e
    sget-boolean v0, Lrz;->f:Z

    if-nez v0, :cond_f

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 129
    :cond_f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 131
    return-object v9
.end method

.method public a(LrS;)LrS;
    .locals 2

    .prologue
    .line 192
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "Connection"

    const-string v1, "Upgrade"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "8"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 197
    iget-object v1, p0, Lrz;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 198
    const-string v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lsa;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object p1
.end method

.method public a(LrR;LrZ;)LrT;
    .locals 2

    .prologue
    .line 205
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "Connection"

    const-string v1, "Connection"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "Switching Protocols"

    invoke-interface {p2, v0}, LrZ;->a(Ljava/lang/String;)V

    .line 208
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    new-instance v0, LrH;

    const-string v1, "missing Sec-WebSocket-Key"

    invoke-direct {v0, v1}, LrH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {p0, v0}, Lrz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object p2
.end method

.method public a(LrR;)Lry;
    .locals 2

    .prologue
    .line 88
    invoke-static {p1}, Lrz;->b(LrW;)I

    move-result v0

    .line 89
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lrz;->a(LrW;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lry;->a:Lry;

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_1
    sget-object v0, Lry;->b:Lry;

    goto :goto_0

    .line 91
    :cond_2
    sget-object v0, Lry;->b:Lry;

    goto :goto_0
.end method

.method public a(LrR;LrY;)Lry;
    .locals 2

    .prologue
    .line 73
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, LrR;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, LrY;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    sget-object v0, Lry;->b:Lry;

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_1
    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, LrY;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Lrz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lry;->a:Lry;

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lry;->b:Lry;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    .line 389
    return-void
.end method

.method public b()Lrx;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lrx;->c:Lrx;

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "LrO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 250
    iget-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 256
    iget-object v2, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 258
    if-le v2, v0, :cond_0

    .line 260
    iget-object v1, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    iget-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lrz;->e(Ljava/nio/ByteBuffer;)LrO;

    move-result-object v0

    .line 268
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch LrA; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 288
    :try_start_1
    invoke-virtual {p0, p1}, Lrz;->e(Ljava/nio/ByteBuffer;)LrO;

    move-result-object v0

    .line 289
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch LrA; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 290
    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v0}, LrA;->a()I

    move-result v0

    .line 294
    invoke-virtual {p0, v0}, Lrz;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    .line 295
    iget-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    move-object v0, v1

    .line 296
    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    .line 273
    iget-object v1, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    .line 274
    invoke-virtual {v0}, LrA;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrz;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 275
    sget-boolean v1, Lrz;->f:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 276
    :cond_3
    iget-object v1, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 277
    iget-object v1, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 278
    iput-object v0, p0, Lrz;->g:Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {p0, p1}, Lrz;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()Lrw;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    return-object v0
.end method

.method public e(Ljava/nio/ByteBuffer;)LrO;
    .locals 14

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 305
    if-ge v7, v5, :cond_0

    .line 306
    new-instance v0, LrA;

    invoke-direct {v0, p0, v5}, LrA;-><init>(Lrz;I)V

    throw v0

    .line 307
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 308
    shr-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    .line 309
    :goto_0
    and-int/lit8 v0, v8, 0x7f

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 310
    if-eqz v0, :cond_2

    .line 311
    new-instance v1, LrG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad rsv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LrG;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v6, v2

    .line 308
    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 313
    and-int/lit8 v0, v4, -0x80

    if-eqz v0, :cond_4

    move v0, v1

    .line 314
    :goto_1
    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 315
    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    invoke-direct {p0, v8}, Lrz;->a(B)LrP;

    move-result-object v8

    .line 317
    if-nez v6, :cond_5

    .line 318
    sget-object v9, LrP;->d:LrP;

    if-eq v8, v9, :cond_3

    sget-object v9, LrP;->e:LrP;

    if-eq v8, v9, :cond_3

    sget-object v9, LrP;->f:LrP;

    if-ne v8, v9, :cond_5

    .line 319
    :cond_3
    new-instance v0, LrG;

    const-string v1, "control frames may no be fragmented"

    invoke-direct {v0, v1}, LrG;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 313
    goto :goto_1

    .line 323
    :cond_5
    if-ltz v4, :cond_6

    const/16 v9, 0x7d

    if-gt v4, v9, :cond_6

    .line 354
    :goto_2
    if-eqz v0, :cond_e

    move v1, v3

    :goto_3
    add-int/2addr v1, v5

    .line 356
    add-int/2addr v1, v4

    .line 358
    if-ge v7, v1, :cond_f

    .line 359
    new-instance v0, LrA;

    invoke-direct {v0, p0, v1}, LrA;-><init>(Lrz;I)V

    throw v0

    .line 325
    :cond_6
    sget-object v9, LrP;->d:LrP;

    if-eq v8, v9, :cond_7

    sget-object v9, LrP;->e:LrP;

    if-eq v8, v9, :cond_7

    sget-object v9, LrP;->f:LrP;

    if-ne v8, v9, :cond_8

    .line 326
    :cond_7
    new-instance v0, LrG;

    const-string v1, "more than 125 octets"

    invoke-direct {v0, v1}, LrG;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_8
    const/16 v9, 0x7e

    if-ne v4, v9, :cond_a

    .line 330
    if-ge v7, v3, :cond_9

    .line 331
    new-instance v0, LrA;

    invoke-direct {v0, p0, v3}, LrA;-><init>(Lrz;I)V

    throw v0

    .line 332
    :cond_9
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 333
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v4, v1

    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, v4, v5

    .line 335
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    move v4, v1

    move v5, v3

    .line 336
    goto :goto_2

    .line 337
    :cond_a
    const/16 v4, 0xa

    .line 338
    if-ge v7, v4, :cond_b

    .line 339
    new-instance v0, LrA;

    invoke-direct {v0, p0, v4}, LrA;-><init>(Lrz;I)V

    throw v0

    .line 340
    :cond_b
    new-array v5, v10, [B

    move v1, v2

    .line 341
    :goto_4
    if-ge v1, v10, :cond_c

    .line 342
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v5, v1

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 344
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 345
    const-wide/32 v12, 0x7fffffff

    cmp-long v1, v10, v12

    if-lez v1, :cond_d

    .line 346
    new-instance v0, LrI;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, LrI;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_d
    long-to-int v1, v10

    move v5, v4

    move v4, v1

    goto :goto_2

    :cond_e
    move v1, v2

    .line 354
    goto :goto_3

    .line 361
    :cond_f
    invoke-virtual {p0, v4}, Lrz;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 362
    if-eqz v0, :cond_10

    .line 363
    new-array v0, v3, [B

    .line 364
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 365
    :goto_5
    if-ge v2, v4, :cond_11

    .line 366
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    rem-int/lit8 v5, v2, 0x4

    aget-byte v5, v0, v5

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 369
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    :cond_11
    sget-object v0, LrP;->f:LrP;

    if-ne v8, v0, :cond_12

    .line 375
    new-instance v0, LrM;

    invoke-direct {v0}, LrM;-><init>()V

    .line 381
    :goto_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 382
    invoke-interface {v0, v1}, LrN;->a(Ljava/nio/ByteBuffer;)V

    .line 383
    return-object v0

    .line 377
    :cond_12
    new-instance v0, LrQ;

    invoke-direct {v0}, LrQ;-><init>()V

    .line 378
    invoke-interface {v0, v6}, LrN;->a(Z)V

    .line 379
    invoke-interface {v0, v8}, LrN;->a(LrP;)V

    goto :goto_6
.end method
