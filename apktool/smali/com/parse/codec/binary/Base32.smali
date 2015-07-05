.class public Lcom/parse/codec/binary/Base32;
.super Lcom/parse/codec/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private bitWorkArea:J

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parse/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    .line 69
    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parse/codec/binary/Base32;->DECODE_TABLE:[B

    .line 83
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parse/codec/binary/Base32;->ENCODE_TABLE:[B

    .line 95
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/parse/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 109
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/parse/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    return-void

    .line 61
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 69
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data

    .line 83
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 95
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
    .end array-data

    .line 109
    :array_4
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/codec/binary/Base32;-><init>(Z)V

    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/parse/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/parse/codec/binary/Base32;-><init>(I[B)V

    .line 189
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/codec/binary/Base32;-><init>(I[BZ)V

    .line 210
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 232
    const/4 v2, 0x5

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lcom/parse/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 235
    if-eqz p3, :cond_1

    .line 236
    sget-object v0, Lcom/parse/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v0, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    .line 237
    sget-object v0, Lcom/parse/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v0, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    .line 242
    :goto_1
    if-lez p1, :cond_4

    .line 243
    if-nez p2, :cond_2

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0, but lineSeparator is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    array-length v0, p2

    goto :goto_0

    .line 239
    :cond_1
    sget-object v0, Lcom/parse/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object v0, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    .line 240
    sget-object v0, Lcom/parse/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object v0, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p0, p2}, Lcom/parse/codec/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-static {p2}, Lcom/parse/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain Base32 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_3
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    .line 252
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    .line 253
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :goto_2
    iget v0, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/parse/codec/binary/Base32;->decodeSize:I

    .line 259
    return-void

    .line 255
    :cond_4
    iput v3, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/parse/codec/binary/Base32;-><init>(I[BZ)V

    .line 175
    return-void
.end method


# virtual methods
.method decode([BII)V
    .locals 8

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-gez p3, :cond_2

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    .line 289
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 290
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 291
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    .line 317
    :cond_3
    iget-boolean v0, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 318
    iget v0, p0, Lcom/parse/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v0}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 321
    iget v0, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v4, 0x2

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 296
    :cond_4
    iget v3, p0, Lcom/parse/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v3}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 297
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 298
    iget-object v3, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    aget-byte v2, v3, v2

    .line 299
    if-ltz v2, :cond_5

    .line 300
    iget v3, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    .line 301
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v3, 0x5

    shl-long/2addr v4, v3

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 302
    iget v2, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    if-nez v2, :cond_5

    .line 303
    iget-object v2, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 304
    iget-object v2, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 305
    iget-object v2, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 306
    iget-object v2, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 307
    iget-object v2, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 289
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v4, 0x7

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 329
    :pswitch_2
    iget-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 330
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 331
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 334
    :pswitch_3
    iget-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 335
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 337
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 340
    :pswitch_4
    iget-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x6

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 341
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 342
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 343
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 346
    :pswitch_5
    iget-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v2, 0x3

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 347
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 348
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 349
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 350
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v1, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v2, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method encode([BII)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x3d

    .line 371
    iget-boolean v0, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    if-gez p3, :cond_3

    .line 377
    iput-boolean v9, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    .line 378
    iget v0, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    if-eqz v0, :cond_0

    .line 381
    :cond_2
    iget v0, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v0}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 382
    iget v0, p0, Lcom/parse/codec/binary/Base32;->pos:I

    .line 383
    iget v1, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    packed-switch v1, :pswitch_data_0

    .line 426
    :goto_1
    iget v1, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 428
    iget v0, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    if-lez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget v0, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/parse/codec/binary/Base32;->pos:I

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    shr-long/2addr v6, v11

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 386
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    shl-long/2addr v6, v10

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 387
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 388
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 389
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 390
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 391
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 392
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_1

    .line 396
    :pswitch_1
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0xb

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 397
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v5, 0x6

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 398
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    shr-long/2addr v6, v9

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 399
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v5, 0x4

    shl-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 400
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 401
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 402
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 403
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_1

    .line 406
    :pswitch_2
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0x13

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 407
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0xe

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 408
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0x9

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 409
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v5, 0x4

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 410
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    shl-long/2addr v6, v9

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 411
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 412
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    .line 413
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_1

    .line 416
    :pswitch_3
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0x1b

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 417
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0x16

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 418
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0x11

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 419
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v5, 0xc

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 420
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v5, 0x7

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 421
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    shr-long/2addr v6, v10

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 422
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    shl-long/2addr v6, v11

    long-to-int v5, v6

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 423
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    aput-byte v8, v1, v3

    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 433
    :goto_2
    if-ge v1, p3, :cond_0

    .line 434
    iget v0, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v0}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 435
    iget v0, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    .line 436
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 437
    if-gez v0, :cond_4

    .line 438
    add-int/lit16 v0, v0, 0x100

    .line 440
    :cond_4
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 441
    iget v0, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    if-nez v0, :cond_5

    .line 442
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x23

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 443
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 444
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x19

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 445
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 446
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0xf

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 447
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0xa

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 448
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 449
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    long-to-int v6, v6

    and-int/lit8 v6, v6, 0x1f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 450
    iget v0, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 451
    iget v0, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    iget v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    if-gt v0, v4, :cond_5

    .line 452
    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v0, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/parse/codec/binary/Base32;->pos:I

    .line 454
    iput v2, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 433
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .locals 2

    .prologue
    .line 469
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
