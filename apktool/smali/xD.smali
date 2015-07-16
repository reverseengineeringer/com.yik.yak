.class public final LxD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lxs;

.field private final d:LxG;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:LwV;


# direct methods
.method private constructor <init>(LxF;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, LxF;->a(LxF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxD;->a:Ljava/lang/String;

    .line 45
    invoke-static {p1}, LxF;->b(LxF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxD;->b:Ljava/lang/String;

    .line 46
    invoke-static {p1}, LxF;->c(LxF;)Lxu;

    move-result-object v0

    invoke-virtual {v0}, Lxu;->a()Lxs;

    move-result-object v0

    iput-object v0, p0, LxD;->c:Lxs;

    .line 47
    invoke-static {p1}, LxF;->d(LxF;)LxG;

    move-result-object v0

    iput-object v0, p0, LxD;->d:LxG;

    .line 48
    invoke-static {p1}, LxF;->e(LxF;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LxF;->e(LxF;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LxD;->e:Ljava/lang/Object;

    .line 49
    invoke-static {p1}, LxF;->f(LxF;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, LxD;->f:Ljava/net/URL;

    .line 50
    return-void

    :cond_0
    move-object v0, p0

    .line 48
    goto :goto_0
.end method

.method synthetic constructor <init>(LxF;LxE;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, LxD;-><init>(LxF;)V

    return-void
.end method

.method static synthetic a(LxD;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LxD;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LxD;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LxD;->f:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic c(LxD;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LxD;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(LxD;)LxG;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LxD;->d:LxG;

    return-object v0
.end method

.method static synthetic e(LxD;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LxD;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(LxD;)Lxs;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LxD;->c:Lxs;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, LxD;->c:Lxs;

    invoke-virtual {v0, p1}, Lxs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/URL;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, LxD;->f:Ljava/net/URL;

    .line 55
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, LxD;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LxD;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LxD;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/net/URI;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, LxD;->g:Ljava/net/URI;

    .line 64
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lyc;->a()Lyc;

    move-result-object v0

    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyc;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, LxD;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, LxD;->c:Lxs;

    invoke-virtual {v0, p1}, Lxs;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, LxD;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, LxD;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lxs;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, LxD;->c:Lxs;

    return-object v0
.end method

.method public f()LxG;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, LxD;->d:LxG;

    return-object v0
.end method

.method public g()LxF;
    .locals 2

    .prologue
    .line 99
    new-instance v0, LxF;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LxF;-><init>(LxD;LxE;)V

    return-object v0
.end method

.method public h()LwV;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, LxD;->h:LwV;

    .line 108
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LxD;->c:Lxs;

    invoke-static {v0}, LwV;->a(Lxs;)LwV;

    move-result-object v0

    iput-object v0, p0, LxD;->h:LwV;

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LxD;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LxD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LxD;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, LxD;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
