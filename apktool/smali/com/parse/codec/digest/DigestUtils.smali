.class public Lcom/parse/codec/digest/DigestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 51
    new-array v1, v4, [B

    .line 52
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 54
    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 55
    invoke-virtual {p0, v1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 56
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method private static getBytesUtf8(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/parse/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMd5Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 102
    const-string v0, "MD5"

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha256Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 116
    const-string v0, "SHA-256"

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha384Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 130
    const-string v0, "SHA-384"

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha512Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 144
    const-string v0, "SHA-512"

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getShaDigest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 155
    const-string v0, "SHA"

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)[B
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 263
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->sha([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha([B)[B
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 310
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256([B)[B
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha256(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha256(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 404
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->sha384([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384([B)[B
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha384(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha384(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha384([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 498
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->sha512([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512([B)[B
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/parse/codec/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha512(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha512(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha512([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    invoke-static {p0}, Lcom/parse/codec/digest/DigestUtils;->sha([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
