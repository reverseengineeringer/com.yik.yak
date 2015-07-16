.class LuO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LuO;->b:Landroid/graphics/Paint;

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    .line 398
    return-void
.end method


# virtual methods
.method public declared-synchronized a(IIILandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p2, :cond_1

    .line 403
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :goto_0
    :try_start_2
    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 413
    :cond_1
    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 414
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, LuO;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 415
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, LuO;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    :cond_2
    monitor-exit p0

    return-void

    .line 405
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LuO;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :goto_0
    monitor-exit p0

    return-void

    .line 425
    :cond_1
    const/16 v0, 0x22

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 426
    new-instance v0, Landroid/util/Base64OutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 427
    iget-object v1, p0, LuO;->a:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 428
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->flush()V

    .line 429
    const/16 v0, 0x22

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
