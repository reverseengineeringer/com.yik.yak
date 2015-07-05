.class public abstract Lcom/parse/signpost/signature/OAuthMessageSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3db29529c4356102L


# instance fields
.field private transient base64:Lcom/parse/codec/binary/Base64;

.field private consumerSecret:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/parse/codec/binary/Base64;

    invoke-direct {v0}, Lcom/parse/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->base64:Lcom/parse/codec/binary/Base64;

    .line 42
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 76
    new-instance v0, Lcom/parse/codec/binary/Base64;

    invoke-direct {v0}, Lcom/parse/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->base64:Lcom/parse/codec/binary/Base64;

    .line 77
    return-void
.end method


# virtual methods
.method protected base64Encode([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->base64:Lcom/parse/codec/binary/Base64;

    invoke-virtual {v1, p1}, Lcom/parse/codec/binary/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected decodeBase64(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->base64:Lcom/parse/codec/binary/Base64;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSignatureMethod()Ljava/lang/String;
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/parse/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public abstract sign(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)Ljava/lang/String;
.end method
