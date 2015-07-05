.class public Lcom/parse/codec/binary/Base64InputStream;
.super Lcom/parse/codec/binary/BaseNCodecInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/codec/binary/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/parse/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lcom/parse/codec/binary/BaseNCodec;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/parse/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lcom/parse/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lcom/parse/codec/binary/BaseNCodec;Z)V

    .line 88
    return-void
.end method
