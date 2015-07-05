.class public final Lyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LyF;


# instance fields
.field private final a:Lyr;

.field private final b:Lyh;


# direct methods
.method public constructor <init>(Lyr;Lyh;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lyw;->a:Lyr;

    .line 33
    iput-object p2, p0, Lyw;->b:Lyh;

    .line 34
    return-void
.end method

.method private b(Lxz;)LKl;
    .locals 4

    .prologue
    .line 115
    invoke-static {p1}, Lyr;->a(Lxz;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lyw;->b:Lyh;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lyh;->b(J)LKl;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lxz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lyw;->b:Lyh;

    iget-object v1, p0, Lyw;->a:Lyr;

    invoke-virtual {v0, v1}, Lyh;->a(Lyr;)LKl;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p1}, Lyx;->a(Lxz;)J

    move-result-wide v0

    .line 124
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lyw;->b:Lyh;

    invoke-virtual {v2, v0, v1}, Lyh;->b(J)LKl;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0}, Lyh;->i()LKl;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lxt;J)LKk;
    .locals 2

    .prologue
    .line 37
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0}, Lyh;->h()LKk;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0, p2, p3}, Lyh;->a(J)LKk;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lxz;)LxC;
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lyw;->b(Lxz;)LKl;

    move-result-object v0

    .line 111
    new-instance v1, Lyz;

    invoke-virtual {p1}, Lxz;->g()Lxi;

    move-result-object v2

    invoke-static {v0}, LKa;->a(LKl;)LJT;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lyz;-><init>(Lxi;LJT;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0}, Lyh;->d()V

    .line 53
    return-void
.end method

.method public a(Lxt;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lyw;->a:Lyr;

    invoke-virtual {v0}, Lyr;->b()V

    .line 73
    iget-object v0, p0, Lyw;->a:Lyr;

    .line 74
    invoke-virtual {v0}, Lyr;->i()LwZ;

    move-result-object v0

    invoke-virtual {v0}, LwZ;->c()LxD;

    move-result-object v0

    invoke-virtual {v0}, LxD;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, Lyw;->a:Lyr;

    .line 75
    invoke-virtual {v1}, Lyr;->i()LwZ;

    move-result-object v1

    invoke-virtual {v1}, LwZ;->l()Lxs;

    move-result-object v1

    .line 73
    invoke-static {p1, v0, v1}, LyA;->a(Lxt;Ljava/net/Proxy$Type;Lxs;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lyw;->b:Lyh;

    invoke-virtual {p1}, Lxt;->e()Lxi;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lyh;->a(Lxi;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public a(LyB;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0, p1}, Lyh;->a(LyB;)V

    .line 57
    return-void
.end method

.method public a(Lyr;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0, p1}, Lyh;->a(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public b()LxB;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0}, Lyh;->g()LxB;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lyw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0}, Lyh;->a()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lyw;->b:Lyh;

    invoke-virtual {v0}, Lyh;->b()V

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    const-string v1, "close"

    iget-object v2, p0, Lyw;->a:Lyr;

    invoke-virtual {v2}, Lyr;->g()Lxt;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lxt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const-string v1, "close"

    iget-object v2, p0, Lyw;->a:Lyr;

    invoke-virtual {v2}, Lyr;->h()Lxz;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lxz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lyw;->b:Lyh;

    invoke-virtual {v1}, Lyh;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
