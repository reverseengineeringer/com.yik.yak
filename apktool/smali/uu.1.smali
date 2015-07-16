.class Luu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:LtU;

.field private final c:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "MixpanelAPI.Images"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, LtS;

    invoke-direct {v1}, LtS;-><init>()V

    invoke-direct {p0, v0, v1}, Luu;-><init>(Ljava/io/File;LtU;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;LtU;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Luu;->a:Ljava/io/File;

    .line 47
    iput-object p2, p0, Luu;->b:LtU;

    .line 50
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    iput-object v0, p0, Luu;->c:Ljava/security/MessageDigest;

    .line 57
    return-void

    .line 52
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Luu;->c:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Luu;->c:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MP_IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Luu;->a:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1}, Luu;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Luu;->b:LtU;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, LtU;->a(Ljava/lang/String;Ljava/util/List;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LtV; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 73
    :goto_0
    if-eqz v0, :cond_3

    .line 74
    if-eqz v3, :cond_1

    array-length v1, v0

    const v4, 0x989680

    if-ge v1, v4, :cond_1

    .line 77
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    if-eqz v1, :cond_1

    .line 86
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 94
    :cond_1
    :goto_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    new-instance v0, Luv;

    const-string v1, "Downloaded data could not be interpreted as a bitmap"

    invoke-direct {v0, v1}, Luv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Luv;

    const-string v2, "Can\'t download bitmap"

    invoke-direct {v1, v2, v0}, Luv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    new-instance v1, Luv;

    const-string v2, "Couldn\'t download image due to service availability"

    invoke-direct {v1, v2, v0}, Luv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 80
    :goto_2
    :try_start_4
    new-instance v2, Luv;

    const-string v3, "It appears that ImageStore is misconfigured, or disk storage is unavailable- can\'t write to bitmap directory"

    invoke-direct {v2, v3, v0}, Luv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 86
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 88
    :cond_2
    :goto_4
    throw v0

    .line 81
    :catch_3
    move-exception v0

    .line 82
    :goto_5
    :try_start_6
    new-instance v1, Luv;

    const-string v3, "Can\'t store bitmap"

    invoke-direct {v1, v3, v0}, Luv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 84
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 102
    new-instance v0, Luv;

    const-string v1, "Bitmap on disk can\'t be opened or was corrupt"

    invoke-direct {v0, v1}, Luv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_4

    .line 106
    :cond_4
    return-object v0

    .line 81
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 79
    :catch_7
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Luu;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    :cond_0
    return-void
.end method
