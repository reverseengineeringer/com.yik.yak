.class Lcom/squareup/picasso/NetworkBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "SourceFile"


# static fields
.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field private static final MARKER:I = 0x10000


# instance fields
.field private final downloader:Lcom/squareup/picasso/Downloader;

.field retryCount:I


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 39
    iput-object p6, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->downloader:Lcom/squareup/picasso/Downloader;

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    .line 41
    return-void
.end method

.method private decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 92
    new-instance v0, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v2

    .line 97
    invoke-static {p2}, Lcom/squareup/picasso/NetworkBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/squareup/picasso/NetworkBitmapHunter;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 100
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result v5

    .line 101
    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 104
    if-eqz v5, :cond_2

    .line 105
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 106
    if-eqz v4, :cond_0

    .line 107
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 108
    iget v2, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v3, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v2, v3, v1}, Lcom/squareup/picasso/NetworkBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 110
    :cond_0
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    :cond_1
    return-object v0

    .line 112
    :cond_2
    if-eqz v4, :cond_3

    .line 113
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget v4, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v5, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v4, v5, v1}, Lcom/squareup/picasso/NetworkBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 116
    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 118
    :cond_3
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 44
    iget v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Lcom/squareup/picasso/Downloader;->load(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$Response;

    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    move-object v0, v1

    .line 74
    :cond_0
    :goto_1
    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_2
    iget-boolean v0, v2, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    :goto_2
    iput-object v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 53
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 59
    if-nez v3, :cond_4

    move-object v0, v1

    .line 60
    goto :goto_1

    .line 51
    :cond_3
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 65
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 69
    iget-object v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/squareup/picasso/Stats;->dispatchDownloadFinished(J)V

    .line 72
    :cond_6
    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/squareup/picasso/NetworkBitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    iget v2, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    if-lez v2, :cond_1

    move v2, v1

    .line 80
    :goto_0
    if-nez v2, :cond_2

    .line 84
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 79
    goto :goto_0

    .line 83
    :cond_2
    iget v2, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    .line 84
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method supportsReplay()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method
