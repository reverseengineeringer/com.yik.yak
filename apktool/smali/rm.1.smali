.class public abstract Lrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lro;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrj;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    invoke-interface {p1}, Lrj;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, LrD;

    const-string v1, "socket not bound"

    invoke-direct {v0, v1}, LrD;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    const-string v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrj;Lrs;LrN;)LrV;
    .locals 1

    .prologue
    .line 28
    new-instance v0, LrR;

    invoke-direct {v0}, LrR;-><init>()V

    return-object v0
.end method

.method public a(Lrj;LrK;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, LrM;

    invoke-direct {v0, p2}, LrM;-><init>(LrK;)V

    .line 62
    sget-object v1, LrL;->e:LrL;

    invoke-virtual {v0, v1}, LrM;->a(LrL;)V

    .line 63
    invoke-interface {p1, v0}, Lrj;->a(LrK;)V

    .line 64
    return-void
.end method
