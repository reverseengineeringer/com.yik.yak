.class abstract LJi;
.super LHk;
.source "SourceFile"


# direct methods
.method public constructor <init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;LIR;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, LHk;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;LIR;)V

    .line 47
    return-void
.end method

.method private a(LIS;LJl;)LIS;
    .locals 3

    .prologue
    .line 75
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, LJl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LIS;->a(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, LIS;->a(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, LJi;->a:LHc;

    invoke-virtual {v2}, LHc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LIS;->a(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    return-object v0
.end method

.method private b(LIS;LJl;)LIS;
    .locals 7

    .prologue
    .line 85
    const-string v0, "app[identifier]"

    iget-object v1, p2, LJl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p2, LJl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p2, LJl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p2, LJl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p2, LJl;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LIS;->a(Ljava/lang/String;Ljava/lang/Number;)LIS;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, LJl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, LJl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v2

    .line 93
    iget-object v0, p2, LJl;->e:Ljava/lang/String;

    invoke-static {v0}, LHw;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, LJl;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    .line 97
    :cond_0
    iget-object v0, p2, LJl;->j:LJv;

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, LJi;->a:LHc;

    invoke-virtual {v1}, LHc;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p2, LJl;->j:LJv;

    iget v3, v3, LJv;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 104
    :try_start_1
    const-string v1, "app[icon][hash]"

    iget-object v3, p2, LJl;->j:LJv;

    iget-object v3, v3, LJv;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v1

    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v1, v3, v4, v5, v0}, LIS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)LIS;

    move-result-object v1

    const-string v3, "app[icon][width]"

    iget-object v4, p2, LJl;->j:LJv;

    iget v4, v4, LJv;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LIS;->a(Ljava/lang/String;Ljava/lang/Number;)LIS;

    move-result-object v1

    const-string v3, "app[icon][height]"

    iget-object v4, p2, LJl;->j:LJv;

    iget v4, v4, LJv;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LIS;->a(Ljava/lang/String;Ljava/lang/Number;)LIS;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    const-string v1, "Failed to close app icon InputStream."

    invoke-static {v0, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p2, LJl;->k:Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p2, LJl;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHc;

    .line 119
    invoke-virtual {v0}, LHc;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 120
    :goto_2
    invoke-virtual {p0, v0}, LJi;->a(LHc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, LGS;->g()LHe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find app icon with resource ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, LJl;->j:LJv;

    iget v3, v3, LJv;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    const-string v1, "Failed to close app icon InputStream."

    invoke-static {v0, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    invoke-virtual {v0}, LHc;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 124
    :cond_3
    return-object v2

    .line 113
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method


# virtual methods
.method a(LHc;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p1}, LHc;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 129
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app[build][libraries]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p1}, LHc;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(LJl;)Z
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, LJi;->b()LIS;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0, p1}, LJi;->a(LIS;LJl;)LIS;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0, p1}, LJi;->b(LIS;LJl;)LIS;

    move-result-object v1

    .line 55
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending app info to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LJi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    iget-object v0, p1, LJl;->j:LJv;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App icon hash is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LJl;->j:LJv;

    iget-object v2, v2, LJv;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App icon size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LJl;->j:LJv;

    iget v2, v2, LJv;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LJl;->j:LJv;

    iget v2, v2, LJv;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    :cond_0
    invoke-virtual {v1}, LIS;->b()I

    move-result v2

    .line 64
    const-string v0, "POST"

    invoke-virtual {v1}, LIS;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    .line 67
    :goto_0
    invoke-static {}, LGS;->g()LHe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " app request ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v1, v3}, LIS;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    invoke-static {v2}, LHR;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 64
    :cond_1
    const-string v0, "Update"

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
