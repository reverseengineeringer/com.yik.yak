.class public final Lxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final a:Lxo;


# direct methods
.method public constructor <init>(Lxo;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lxq;->a:Lxo;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lxq;->a:Lxo;

    invoke-virtual {v0}, Lxo;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lxq;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lxq;->a:Lxo;

    invoke-virtual {v1}, Lxo;->w()Lxo;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p2}, Lxo;->a(Ljava/net/Proxy;)Lxo;

    .line 69
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, LyH;

    invoke-direct {v0, p1, v1}, LyH;-><init>(Ljava/net/URL;Lxo;)V

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, LyI;

    invoke-direct {v0, p1, v1}, LyI;-><init>(Ljava/net/URL;Lxo;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Lxo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lxq;->a:Lxo;

    return-object v0
.end method

.method public b()Lxq;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lxq;

    iget-object v1, p0, Lxq;->a:Lxo;

    invoke-virtual {v1}, Lxo;->x()Lxo;

    move-result-object v1

    invoke-direct {v0, v1}, Lxq;-><init>(Lxo;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lxq;->b()Lxq;

    move-result-object v0

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    .prologue
    .line 85
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lxr;

    invoke-direct {v0, p0, p1}, Lxr;-><init>(Lxq;Ljava/lang/String;)V

    goto :goto_0
.end method
