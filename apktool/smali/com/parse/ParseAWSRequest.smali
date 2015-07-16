.class Lcom/parse/ParseAWSRequest;
.super Lcom/parse/ParseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRequest",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field private data:[B

.field private mimeType:Ljava/lang/String;

.field private postParams:Lorg/json/JSONObject;

.field private progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseRequest;-><init>(ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/parse/ParseRequest;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected newEntity()Lorg/apache/http/HttpEntity;
    .locals 6

    .prologue
    .line 60
    new-instance v1, Lcom/parse/CountingMultipartEntity;

    sget-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

    iget-object v2, p0, Lcom/parse/ParseAWSRequest;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {v1, v0, v2}, Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V

    .line 64
    :try_start_0
    const-string v0, "Content-Type"

    new-instance v2, Lcom/parse/entity/mime/content/StringBody;

    iget-object v3, p0, Lcom/parse/ParseAWSRequest;->mimeType:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    iget-object v0, p0, Lcom/parse/ParseAWSRequest;->postParams:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    :try_start_1
    new-instance v3, Lcom/parse/entity/mime/content/StringBody;

    iget-object v4, p0, Lcom/parse/ParseAWSRequest;->postParams:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    const-string v0, "file"

    new-instance v2, Lcom/parse/entity/mime/content/ByteArrayBody;

    iget-object v3, p0, Lcom/parse/ParseAWSRequest;->data:[B

    iget-object v4, p0, Lcom/parse/ParseAWSRequest;->mimeType:Ljava/lang/String;

    const-string v5, "file"

    invoke-direct {v2, v3, v4, v5}, Lcom/parse/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V

    .line 83
    return-object v1
.end method

.method protected bridge synthetic onResponse(Lorg/apache/http/HttpResponse;Lcom/parse/ProgressCallback;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseAWSRequest;->onResponse(Lorg/apache/http/HttpResponse;Lcom/parse/ProgressCallback;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onResponse(Lorg/apache/http/HttpResponse;Lcom/parse/ProgressCallback;)[B
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 88
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 89
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x130

    if-ne v0, v2, :cond_3

    .line 97
    :cond_1
    iget v0, p0, Lcom/parse/ParseAWSRequest;->method:I

    if-nez v0, :cond_6

    .line 99
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 102
    array-length v2, v0

    if-lez v2, :cond_7

    .line 103
    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v4

    .line 108
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    const v2, 0x8000

    new-array v6, v2, [B

    move v2, v3

    .line 113
    :cond_2
    :goto_1
    array-length v7, v6

    invoke-virtual {v4, v6, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v1, :cond_5

    .line 114
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 115
    add-int/2addr v2, v7

    .line 116
    if-eqz p2, :cond_2

    if-eq v0, v1, :cond_2

    .line 117
    int-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    goto :goto_1

    .line 92
    :cond_3
    iget v0, p0, Lcom/parse/ParseAWSRequest;->method:I

    if-nez v0, :cond_4

    const-string v0, "Download from"

    .line 93
    :goto_2
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x64

    const-string v4, "%s S3 failed. %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 92
    :cond_4
    const-string v0, "Upload to"

    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 126
    :goto_3
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->data:[B

    .line 56
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->mimeType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPostParams(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->postParams:Lorg/json/JSONObject;

    .line 48
    return-void
.end method

.method public setProgressCallback(Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->progressCallback:Lcom/parse/ProgressCallback;

    .line 52
    return-void
.end method
