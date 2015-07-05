.class public final Lxt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lxi;

.field private final d:Lxw;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:LwM;


# direct methods
.method private constructor <init>(Lxv;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lxv;->a(Lxv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxt;->a:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lxv;->b(Lxv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxt;->b:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lxv;->c(Lxv;)Lxk;

    move-result-object v0

    invoke-virtual {v0}, Lxk;->a()Lxi;

    move-result-object v0

    iput-object v0, p0, Lxt;->c:Lxi;

    .line 47
    invoke-static {p1}, Lxv;->d(Lxv;)Lxw;

    move-result-object v0

    iput-object v0, p0, Lxt;->d:Lxw;

    .line 48
    invoke-static {p1}, Lxv;->e(Lxv;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lxv;->e(Lxv;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lxt;->e:Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Lxv;->f(Lxv;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lxt;->f:Ljava/net/URL;

    .line 50
    return-void

    :cond_0
    move-object v0, p0

    .line 48
    goto :goto_0
.end method

.method synthetic constructor <init>(Lxv;Lxu;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lxt;-><init>(Lxv;)V

    return-void
.end method

.method static synthetic a(Lxt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lxt;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lxt;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lxt;->f:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic c(Lxt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lxt;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lxt;)Lxw;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lxt;->d:Lxw;

    return-object v0
.end method

.method static synthetic e(Lxt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lxt;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lxt;)Lxi;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lxt;->c:Lxi;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lxt;->c:Lxi;

    invoke-virtual {v0, p1}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/URL;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lxt;->f:Ljava/net/URL;

    .line 55
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lxt;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxt;->f:Ljava/net/URL;
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

    iget-object v3, p0, Lxt;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lxt;->g:Ljava/net/URI;

    .line 64
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, LxS;->a()LxS;

    move-result-object v0

    invoke-virtual {p0}, Lxt;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, LxS;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lxt;->g:Ljava/net/URI;
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
    iget-object v0, p0, Lxt;->c:Lxi;

    invoke-virtual {v0, p1}, Lxi;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lxt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lxt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lxi;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lxt;->c:Lxi;

    return-object v0
.end method

.method public f()Lxw;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lxt;->d:Lxw;

    return-object v0
.end method

.method public g()Lxv;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lxv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxv;-><init>(Lxt;Lxu;)V

    return-object v0
.end method

.method public h()LwM;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lxt;->h:LwM;

    .line 108
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxt;->c:Lxi;

    invoke-static {v0}, LwM;->a(Lxi;)LwM;

    move-result-object v0

    iput-object v0, p0, Lxt;->h:LwM;

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lxt;->a()Ljava/net/URL;

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

    iget-object v1, p0, Lxt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lxt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lxt;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lxt;->e:Ljava/lang/Object;

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
