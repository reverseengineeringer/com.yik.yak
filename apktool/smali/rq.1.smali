.class public abstract Lrq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrn;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    invoke-interface {p1}, Lrn;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, LrH;

    const-string v1, "socket not bound"

    invoke-direct {v0, v1}, LrH;-><init>(Ljava/lang/String;)V

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

.method public a(Lrn;Lrw;LrR;)LrZ;
    .locals 1

    .prologue
    .line 28
    new-instance v0, LrV;

    invoke-direct {v0}, LrV;-><init>()V

    return-object v0
.end method

.method public a(Lrn;LrO;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, LrQ;

    invoke-direct {v0, p2}, LrQ;-><init>(LrO;)V

    .line 62
    sget-object v1, LrP;->e:LrP;

    invoke-virtual {v0, v1}, LrQ;->a(LrP;)V

    .line 63
    invoke-interface {p1, v0}, Lrn;->a(LrO;)V

    .line 64
    return-void
.end method
