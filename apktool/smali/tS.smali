.class public LtS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LtU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 128
    :goto_0
    array-length v2, v1

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 129
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 32
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 36
    :goto_0
    sget-boolean v2, LsG;->a:Z

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectivityManager says we "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v2, "are"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " online"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    :cond_0
    :goto_2
    return v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "are not"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-boolean v0, LsG;->a:Z

    move v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 50
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting request to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    move v3, v2

    move-object v7, v6

    .line 61
    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_c

    if-nez v2, :cond_c

    .line 68
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    const/16 v4, 0x7d0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 71
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 72
    if-eqz p2, :cond_d

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 74
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v8, p2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 75
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v5

    .line 78
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 79
    :try_start_3
    invoke-virtual {v8, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 82
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v8, v6

    move-object v9, v6

    .line 85
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v5

    .line 86
    :try_start_6
    invoke-static {v5}, LtS;->a(Ljava/io/InputStream;)[B
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result-object v4

    .line 87
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 88
    const/4 v2, 0x0

    .line 103
    if-eqz v6, :cond_1

    .line 104
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 105
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 106
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 107
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 108
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 109
    :cond_3
    :goto_4
    if-eqz v0, :cond_f

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    move v2, v3

    move-object v3, v4

    :goto_5
    move-object v7, v3

    move v3, v2

    move v2, v0

    .line 112
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v5, v6

    move-object v8, v6

    move-object v9, v6

    move-object v4, v7

    move-object v7, v6

    :goto_6
    :try_start_b
    sget-boolean v0, LsG;->a:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 92
    add-int/lit8 v0, v3, 0x1

    .line 103
    if-eqz v7, :cond_4

    .line 104
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 105
    :cond_4
    :goto_7
    if-eqz v8, :cond_5

    .line 106
    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 107
    :cond_5
    :goto_8
    if-eqz v9, :cond_6

    .line 108
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 109
    :cond_6
    :goto_9
    if-eqz v5, :cond_e

    .line 110
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_5

    .line 95
    :catch_1
    move-exception v0

    move-object v4, v6

    move-object v5, v6

    move-object v1, v6

    .line 96
    :goto_a
    const/16 v2, 0x1f7

    :try_start_f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 97
    new-instance v0, LtV;

    const-string v2, "Service Unavailable"

    const-string v3, "Retry-After"

    invoke-virtual {v6, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, LtV;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    :goto_b
    if-eqz v4, :cond_7

    .line 104
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 105
    :cond_7
    :goto_c
    if-eqz v5, :cond_8

    .line 106
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 107
    :cond_8
    :goto_d
    if-eqz v1, :cond_9

    .line 108
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 109
    :cond_9
    :goto_e
    if-eqz v6, :cond_a

    .line 110
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v0

    .line 99
    :cond_b
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 113
    :cond_c
    sget-boolean v0, LsG;->a:Z

    .line 114
    return-object v7

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_7

    :catch_6
    move-exception v3

    goto :goto_8

    :catch_7
    move-exception v3

    goto :goto_9

    :catch_8
    move-exception v2

    goto :goto_c

    :catch_9
    move-exception v2

    goto :goto_d

    :catch_a
    move-exception v1

    goto :goto_e

    .line 103
    :catchall_1
    move-exception v0

    move-object v6, v5

    move-object v4, v7

    move-object v1, v9

    move-object v5, v8

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v6

    move-object v5, v6

    move-object v1, v6

    goto :goto_b

    :catchall_3
    move-exception v1

    move-object v4, v6

    move-object v5, v6

    move-object v10, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_b

    :catchall_4
    move-exception v1

    move-object v4, v6

    move-object v10, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v10

    goto :goto_b

    :catchall_5
    move-exception v1

    move-object v10, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_b

    :catchall_6
    move-exception v1

    move-object v4, v6

    move-object v10, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v10

    goto :goto_b

    .line 95
    :catch_b
    move-exception v1

    move-object v4, v6

    move-object v5, v6

    move-object v10, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_a

    :catch_c
    move-exception v1

    move-object v4, v6

    move-object v10, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v10

    goto :goto_a

    :catch_d
    move-exception v1

    move-object v10, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_a

    :catch_e
    move-exception v1

    move-object v4, v6

    move-object v10, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_a

    .line 91
    :catch_f
    move-exception v4

    move-object v5, v0

    move-object v8, v6

    move-object v9, v6

    move-object v4, v7

    move-object v7, v6

    goto/16 :goto_6

    :catch_10
    move-exception v4

    move-object v8, v5

    move-object v9, v6

    move-object v4, v7

    move-object v7, v6

    move-object v5, v0

    goto/16 :goto_6

    :catch_11
    move-exception v8

    move-object v8, v5

    move-object v9, v6

    move-object v5, v0

    move-object v10, v4

    move-object v4, v7

    move-object v7, v10

    goto/16 :goto_6

    :catch_12
    move-exception v4

    move-object v8, v6

    move-object v9, v5

    move-object v4, v7

    move-object v7, v6

    move-object v5, v0

    goto/16 :goto_6

    :catch_13
    move-exception v7

    move-object v7, v6

    move-object v8, v6

    move-object v9, v5

    move-object v5, v0

    goto/16 :goto_6

    :cond_d
    move-object v8, v6

    move-object v9, v6

    goto/16 :goto_1

    :cond_e
    move-object v3, v4

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_5

    :cond_f
    move v0, v1

    move v2, v3

    move-object v3, v4

    goto/16 :goto_5
.end method
