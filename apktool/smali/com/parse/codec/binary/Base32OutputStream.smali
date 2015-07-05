.class public Lcom/parse/codec/binary/Base32OutputStream;
.super Lcom/parse/codec/binary/BaseNCodecOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/parse/codec/binary/Base32OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/parse/codec/binary/Base32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/codec/binary/Base32;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcom/parse/codec/binary/BaseNCodec;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/parse/codec/binary/Base32;

    invoke-direct {v0, p3, p4}, Lcom/parse/codec/binary/Base32;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcom/parse/codec/binary/BaseNCodec;Z)V

    .line 83
    return-void
.end method
