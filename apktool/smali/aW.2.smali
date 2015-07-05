.class LaW;
.super LHk;
.source "SourceFile"

# interfaces
.implements LaV;


# direct methods
.method public constructor <init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;)V
    .locals 6

    .prologue
    .line 37
    sget-object v5, LIR;->b:LIR;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LHk;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;LIR;)V

    .line 38
    return-void
.end method

.method private a(LIS;LaU;)LIS;
    .locals 3

    .prologue
    .line 74
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, LaU;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LIS;->a(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, LIS;->a(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lal;->f()Lal;

    move-result-object v2

    invoke-virtual {v2}, Lal;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LIS;->a(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    .line 79
    iget-object v1, p2, LaU;->b:Lbo;

    invoke-interface {v1}, Lbo;->e()Ljava/util/Map;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-virtual {v1, v0}, LIS;->a(Ljava/util/Map$Entry;)LIS;

    move-result-object v0

    move-object v1, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method

.method private b(LIS;LaU;)LIS;
    .locals 5

    .prologue
    .line 88
    iget-object v0, p2, LaU;->b:Lbo;

    .line 90
    const-string v1, "report[file]"

    invoke-interface {v0}, Lbo;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/octet-stream"

    invoke-interface {v0}, Lbo;->d()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, LIS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)LIS;

    move-result-object v1

    const-string v2, "report[identifier]"

    invoke-interface {v0}, Lbo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LIS;->e(Ljava/lang/String;Ljava/lang/String;)LIS;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(LaU;)Z
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, LaW;->b()LIS;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0, p1}, LaW;->a(LIS;LaU;)LIS;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0, p1}, LaW;->b(LIS;LaU;)LIS;

    move-result-object v0

    .line 62
    invoke-static {}, LGS;->g()LHe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending report to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LaW;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, LIS;->b()I

    move-result v1

    .line 66
    invoke-static {}, LGS;->g()LHe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create report request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v0, v3}, LIS;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    invoke-static {v1}, LHR;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
