.class LJq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJo;


# instance fields
.field private final a:LHc;


# direct methods
.method public constructor <init>(LHc;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, LJq;->a:LHc;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {}, LGS;->g()LHe;

    .line 35
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, LJf;

    iget-object v3, p0, LJq;->a:LHc;

    invoke-direct {v2, v3}, LJf;-><init>(LHc;)V

    invoke-virtual {v2}, LJf;->a()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.crashlytics.settings.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    invoke-static {v2}, LHw;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 49
    :goto_0
    const-string v2, "Error while closing settings cache file."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 52
    :goto_1
    return-object v0

    .line 44
    :cond_0
    :try_start_2
    invoke-static {}, LGS;->g()LHe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-static {}, LGS;->g()LHe;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    const-string v0, "Error while closing settings cache file."

    invoke-static {v2, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v0, v1

    .line 50
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    :goto_3
    const-string v2, "Error while closing settings cache file."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 47
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(JLorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 57
    invoke-static {}, LGS;->g()LHe;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 63
    :try_start_0
    const-string v0, "expires_at"

    invoke-virtual {p3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    new-instance v0, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    new-instance v3, LJf;

    iget-object v4, p0, LJq;->a:LHc;

    invoke-direct {v3, v4}, LJf;-><init>(LHc;)V

    invoke-virtual {v3}, LJf;->a()Ljava/io/File;

    move-result-object v3

    const-string v4, "com.crashlytics.settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    const-string v1, "Failed to close settings writer."

    invoke-static {v0, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    invoke-static {}, LGS;->g()LHe;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    const-string v1, "Failed to close settings writer."

    invoke-static {v0, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    const-string v2, "Failed to close settings writer."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 70
    :catch_1
    move-exception v1

    goto :goto_1
.end method
