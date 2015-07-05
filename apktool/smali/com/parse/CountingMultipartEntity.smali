.class Lcom/parse/CountingMultipartEntity;
.super Lcom/parse/entity/mime/MultipartEntity;
.source "SourceFile"


# instance fields
.field private final progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method public constructor <init>(Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parse/entity/mime/MultipartEntity;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/parse/entity/mime/MultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;)V

    .line 29
    iput-object p2, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/entity/mime/MultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 35
    iput-object p4, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 36
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {p0}, Lcom/parse/CountingMultipartEntity;->getContentLength()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/parse/ProgressCallback;J)V

    invoke-super {p0, v0}, Lcom/parse/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 42
    return-void
.end method
