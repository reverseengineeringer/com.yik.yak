.class public LrD;
.super LrC;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf"
    }
.end annotation


# static fields
.field private static final j:[B


# instance fields
.field private i:Z

.field private final k:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LrD;->j:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, LrC;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, LrD;->i:Z

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LrD;->k:Ljava/util/Random;

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x18

    .line 98
    :try_start_0
    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    .line 100
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 101
    new-instance v0, LrH;

    const-string v1, "invalid Sec-WebSocket-Key (/key2/)"

    invoke-direct {v0, v1}, LrH;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    new-instance v0, LrH;

    const-string v1, "invalid Sec-WebSocket-Key (/key1/ or /key2/)"

    invoke-direct {v0, v1}, LrH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/Long;

    div-long/2addr v0, v2

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 104
    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    shr-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x8

    shl-long v4, v0, v4

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    shl-long v4, v0, v4

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    shl-long/2addr v0, v6

    shr-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-static {p0}, LrD;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    invoke-static {p1}, LrD;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 41
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 42
    aget-byte v3, v0, v4

    aput-byte v3, v2, v4

    .line 43
    aget-byte v3, v0, v5

    aput-byte v3, v2, v5

    .line 44
    aget-byte v3, v0, v6

    aput-byte v3, v2, v6

    .line 45
    aget-byte v0, v0, v7

    aput-byte v0, v2, v7

    .line 46
    aget-byte v0, v1, v4

    aput-byte v0, v2, v8

    .line 47
    const/4 v0, 0x5

    aget-byte v3, v1, v5

    aput-byte v3, v2, v0

    .line 48
    const/4 v0, 0x6

    aget-byte v3, v1, v6

    aput-byte v3, v2, v0

    .line 49
    const/4 v0, 0x7

    aget-byte v1, v1, v7

    aput-byte v1, v2, v0

    .line 50
    const/16 v0, 0x8

    aget-byte v1, p2, v4

    aput-byte v1, v2, v0

    .line 51
    const/16 v0, 0x9

    aget-byte v1, p2, v5

    aput-byte v1, v2, v0

    .line 52
    const/16 v0, 0xa

    aget-byte v1, p2, v6

    aput-byte v1, v2, v0

    .line 53
    const/16 v0, 0xb

    aget-byte v1, p2, v7

    aput-byte v1, v2, v0

    .line 54
    const/16 v0, 0xc

    aget-byte v1, p2, v8

    aput-byte v1, v2, v0

    .line 55
    const/16 v0, 0xd

    const/4 v1, 0x5

    aget-byte v1, p2, v1

    aput-byte v1, v2, v0

    .line 56
    const/16 v0, 0xe

    const/4 v1, 0x6

    aget-byte v1, p2, v1

    aput-byte v1, v2, v0

    .line 57
    const/16 v0, 0xf

    const/4 v1, 0x7

    aget-byte v1, p2, v1

    aput-byte v1, v2, v0

    .line 60
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v5, 0xc

    const/4 v1, 0x0

    .line 68
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 69
    const-wide v2, 0xffffffffL

    .line 70
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    .line 71
    new-instance v0, Ljava/lang/Long;

    div-long/2addr v2, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 73
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 74
    int-to-long v2, v0

    mul-long/2addr v2, v6

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v3, v1

    .line 78
    :goto_0
    if-ge v3, v5, :cond_1

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 81
    const/16 v0, 0x5f

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    int-to-char v0, v0

    .line 83
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 84
    add-int/lit8 v0, v0, -0xf

    int-to-char v0, v0

    .line 86
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    move-object v1, v2

    .line 88
    :goto_1
    int-to-long v2, v0

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 90
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(LrO;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 231
    invoke-interface {p1}, LrO;->f()LrP;

    move-result-object v0

    sget-object v1, LrP;->f:LrP;

    if-ne v0, v1, :cond_0

    .line 232
    sget-object v0, LrD;->j:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, LrC;->a(LrO;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(LrS;)LrS;
    .locals 3

    .prologue
    .line 143
    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "Connection"

    const-string v1, "Upgrade"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "Sec-WebSocket-Key1"

    invoke-static {}, LrD;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "Sec-WebSocket-Key2"

    invoke-static {}, LrD;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "Origin"

    invoke-interface {p1, v0}, LrS;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "Origin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "random"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LrD;->k:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 153
    iget-object v1, p0, LrD;->k:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 154
    invoke-interface {p1, v0}, LrS;->a([B)V

    .line 155
    return-object p1
.end method

.method public a(LrR;LrZ;)LrT;
    .locals 5

    .prologue
    .line 161
    const-string v0, "WebSocket Protocol Handshake"

    invoke-interface {p2, v0}, LrZ;->a(Ljava/lang/String;)V

    .line 162
    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "Connection"

    const-string v1, "Connection"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "Sec-WebSocket-Origin"

    const-string v1, "Origin"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Host"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, LrR;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "Sec-WebSocket-Location"

    invoke-interface {p2, v1, v0}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "Sec-WebSocket-Key2"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-interface {p1}, LrR;->c()[B

    move-result-object v2

    .line 170
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 171
    :cond_0
    new-instance v0, LrH;

    const-string v1, "Bad keys"

    invoke-direct {v0, v1}, LrH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    invoke-static {v0, v1, v2}, LrD;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-interface {p2, v0}, LrZ;->a([B)V

    .line 174
    return-object p2
.end method

.method public a(LrR;)Lry;
    .locals 2

    .prologue
    .line 136
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Sec-WebSocket-Key2"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Origin"

    invoke-interface {p1, v0}, LrR;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lry;->a:Lry;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lry;->b:Lry;

    goto :goto_0
.end method

.method public a(LrR;LrY;)Lry;
    .locals 4

    .prologue
    .line 112
    iget-boolean v0, p0, LrD;->i:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lry;->b:Lry;

    .line 127
    :goto_0
    return-object v0

    .line 117
    :cond_0
    :try_start_0
    const-string v0, "Sec-WebSocket-Origin"

    invoke-interface {p2, v0}, LrY;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, LrD;->a(LrW;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_1
    sget-object v0, Lry;->b:Lry;

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {p2}, LrY;->c()[B

    move-result-object v0

    .line 121
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_4

    .line 122
    :cond_3
    new-instance v0, LrE;

    invoke-direct {v0}, LrE;-><init>()V

    throw v0
    :try_end_0
    .catch LrH; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad handshakerequest"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_4
    :try_start_1
    const-string v1, "Sec-WebSocket-Key1"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key2"

    invoke-interface {p1, v2}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, LrR;->c()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, LrD;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    sget-object v0, Lry;->a:Lry;

    goto :goto_0

    .line 127
    :cond_5
    sget-object v0, Lry;->b:Lry;
    :try_end_1
    .catch LrH; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()Lrx;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lrx;->b:Lrx;

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
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
    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 198
    invoke-super {p0, p1}, LrC;->e(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 199
    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 201
    iget-object v0, p0, LrD;->g:Ljava/util/List;

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, LrD;->f:Z

    .line 203
    iget-object v1, p0, LrD;->h:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, LrD;->h:Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, LrD;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 209
    new-instance v0, LrG;

    invoke-direct {v0}, LrG;-><init>()V

    throw v0

    .line 206
    :cond_0
    new-instance v0, LrG;

    invoke-direct {v0}, LrG;-><init>()V

    throw v0

    .line 211
    :cond_1
    iget-object v1, p0, LrD;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 213
    iget-object v1, p0, LrD;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_4

    .line 214
    iget-object v1, p0, LrD;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sget-object v2, LrD;->j:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    new-instance v1, LrM;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, LrM;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    :goto_0
    return-object v0

    .line 219
    :cond_3
    new-instance v0, LrG;

    invoke-direct {v0}, LrG;-><init>()V

    throw v0

    .line 222
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LrD;->g:Ljava/util/List;

    goto :goto_0
.end method

.method public c()Lrw;
    .locals 1

    .prologue
    .line 243
    new-instance v0, LrD;

    invoke-direct {v0}, LrD;-><init>()V

    return-object v0
.end method

.method public d(Ljava/nio/ByteBuffer;)LrW;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, LrD;->d:Lrp;

    invoke-static {p1, v0}, LrD;->a(Ljava/nio/ByteBuffer;Lrp;)LrT;

    move-result-object v1

    .line 182
    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {v1, v0}, LrT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LrD;->d:Lrp;

    sget-object v2, Lrp;->a:Lrp;

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v0, "Sec-WebSocket-Version"

    invoke-interface {v1, v0}, LrT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, LrD;->d:Lrp;

    sget-object v2, Lrp;->b:Lrp;

    if-ne v0, v2, :cond_2

    const/16 v0, 0x8

    :goto_0
    new-array v0, v0, [B

    .line 185
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    invoke-interface {v1, v0}, LrT;->a([B)V

    .line 192
    :cond_1
    return-object v1

    .line 183
    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    new-instance v0, LrE;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, LrE;-><init>(I)V

    throw v0
.end method
