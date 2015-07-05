.class LaZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/io/File;

.field private c:LHM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, LaZ;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, LaZ;->b:Ljava/io/File;

    .line 31
    return-void
.end method

.method static a(LHM;)Laf;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    .line 159
    invoke-virtual {p0}, LHM;->a()I

    move-result v1

    new-array v1, v1, [B

    .line 162
    :try_start_0
    new-instance v2, Lba;

    invoke-direct {v2, v1, v0}, Lba;-><init>([B[I)V

    invoke-virtual {p0, v2}, LHM;->a(LHQ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    aget v0, v0, v3

    invoke-static {v1, v3, v0}, Laf;->a([BII)Laf;

    move-result-object v0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    invoke-static {}, LGS;->g()LHe;

    goto :goto_1
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    iget-object v2, p0, LaZ;->a:Landroid/content/Context;

    const-string v3, "com.crashlytics.CollectCustomLogs"

    invoke-static {v2, v3, v1}, LHw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    invoke-static {}, LGS;->g()LHe;

    .line 90
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v2, p0, LaZ;->c:LHM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not close log file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LaZ;->c:LHM;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 70
    const/4 v3, 0x0

    .line 81
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crashlytics-userlog-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".temp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, LaZ;->b:Ljava/io/File;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    new-instance v3, LHM;

    invoke-direct {v3, v2}, LHM;-><init>(Ljava/io/File;)V

    iput-object v3, p0, LaZ;->c:LHM;

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 90
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    move-object v1, v3

    :goto_1
    invoke-static {}, LGS;->g()LHe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method a()LHM;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, LaZ;->c:LHM;

    return-object v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 37
    iget-object v0, p0, LaZ;->c:LHM;

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0}, LaZ;->b()Z

    .line 40
    :cond_0
    iget-object v2, p0, LaZ;->c:LHM;

    const/high16 v3, 0x10000

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, LaZ;->a(LHM;IJLjava/lang/String;)V

    .line 41
    return-void
.end method

.method a(LHM;IJLjava/lang/String;)V
    .locals 7

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-nez p5, :cond_3

    .line 101
    const-string v0, "null"

    .line 121
    :goto_1
    :try_start_0
    div-int/lit8 v1, p2, 0x4

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2
    const-string v1, "\r"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, LHM;->a([B)V

    .line 136
    :goto_2
    invoke-virtual {p1}, LHM;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LHM;->a()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 137
    invoke-virtual {p1}, LHM;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    goto :goto_0

    :cond_3
    move-object v0, p5

    goto :goto_1
.end method
