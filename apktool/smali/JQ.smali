.class abstract LJQ;
.super LHS;
.source "SourceFile"


# direct methods
.method public constructor <init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;LJz;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, LHS;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;LJz;)V

    .line 47
    return-void
.end method

.method private a(LJA;LJT;)LJA;
    .locals 3

    .prologue
    .line 75
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, LJT;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, LJQ;->a:LHK;

    invoke-virtual {v2}, LHK;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method private b(LJA;LJT;)LJA;
    .locals 7

    .prologue
    .line 85
    const-string v0, "app[identifier]"

    iget-object v1, p2, LJT;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p2, LJT;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p2, LJT;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p2, LJT;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p2, LJT;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJA;->a(Ljava/lang/String;Ljava/lang/Number;)LJA;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, LJT;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, LJT;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v2

    .line 93
    iget-object v0, p2, LJT;->e:Ljava/lang/String;

    invoke-static {v0}, LIe;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, LJT;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    .line 97
    :cond_0
    iget-object v0, p2, LJT;->j:LKd;

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, LJQ;->a:LHK;

    invoke-virtual {v1}, LHK;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p2, LJT;->j:LKd;

    iget v3, v3, LKd;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 104
    :try_start_1
    const-string v1, "app[icon][hash]"

    iget-object v3, p2, LJT;->j:LKd;

    iget-object v3, v3, LKd;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v1

    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v1, v3, v4, v5, v0}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)LJA;

    move-result-object v1

    const-string v3, "app[icon][width]"

    iget-object v4, p2, LJT;->j:LKd;

    iget v4, v4, LKd;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LJA;->a(Ljava/lang/String;Ljava/lang/Number;)LJA;

    move-result-object v1

    const-string v3, "app[icon][height]"

    iget-object v4, p2, LJT;->j:LKd;

    iget v4, v4, LKd;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LJA;->a(Ljava/lang/String;Ljava/lang/Number;)LJA;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    const-string v1, "Failed to close app icon InputStream."

    invoke-static {v0, v1}, LIe;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p2, LJT;->k:Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p2, LJT;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    .line 119
    invoke-virtual {v0}, LHK;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 120
    :goto_2
    invoke-virtual {p0, v0}, LJQ;->a(LHK;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, LJA;->e(Ljava/lang/String;Ljava/lang/String;)LJA;

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, LHA;->g()LHM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find app icon with resource ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, LJT;->j:LKd;

    iget v3, v3, LKd;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    const-string v1, "Failed to close app icon InputStream."

    invoke-static {v0, v1}, LIe;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, LIe;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    invoke-virtual {v0}, LHK;->d()Ljava/lang/String;

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
.method a(LHK;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p1}, LHK;->c()Ljava/lang/String;

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
    invoke-virtual {p1}, LHK;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(LJT;)Z
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, LJQ;->b()LJA;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0, p1}, LJQ;->a(LJA;LJT;)LJA;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0, p1}, LJQ;->b(LJA;LJT;)LJA;

    move-result-object v1

    .line 55
    invoke-static {}, LHA;->g()LHM;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending app info to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LJQ;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    iget-object v0, p1, LJT;->j:LKd;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, LHA;->g()LHM;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App icon hash is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LJT;->j:LKd;

    iget-object v2, v2, LKd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    invoke-static {}, LHA;->g()LHM;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App icon size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LJT;->j:LKd;

    iget v2, v2, LKd;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LJT;->j:LKd;

    iget v2, v2, LKd;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    :cond_0
    invoke-virtual {v1}, LJA;->b()I

    move-result v2

    .line 64
    const-string v0, "POST"

    invoke-virtual {v1}, LJA;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    .line 67
    :goto_0
    invoke-static {}, LHA;->g()LHM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " app request ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v1, v3}, LJA;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    invoke-static {}, LHA;->g()LHM;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    invoke-static {v2}, LIz;->a(I)I

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
