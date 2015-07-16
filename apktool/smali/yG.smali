.class public final LyG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LyP;


# instance fields
.field private final a:LyB;

.field private final b:Lyr;


# direct methods
.method public constructor <init>(LyB;Lyr;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LyG;->a:LyB;

    .line 33
    iput-object p2, p0, LyG;->b:Lyr;

    .line 34
    return-void
.end method

.method private b(LxJ;)LKT;
    .locals 4

    .prologue
    .line 115
    invoke-static {p1}, LyB;->a(LxJ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, LyG;->b:Lyr;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lyr;->b(J)LKT;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, LxJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, LyG;->b:Lyr;

    iget-object v1, p0, LyG;->a:LyB;

    invoke-virtual {v0, v1}, Lyr;->a(LyB;)LKT;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p1}, LyH;->a(LxJ;)J

    move-result-wide v0

    .line 124
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, LyG;->b:Lyr;

    invoke-virtual {v2, v0, v1}, Lyr;->b(J)LKT;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0}, Lyr;->i()LKT;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(LxD;J)LKS;
    .locals 2

    .prologue
    .line 37
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, LxD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0}, Lyr;->h()LKS;

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
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0, p2, p3}, Lyr;->a(J)LKS;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LxJ;)LxM;
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0, p1}, LyG;->b(LxJ;)LKT;

    move-result-object v0

    .line 111
    new-instance v1, LyJ;

    invoke-virtual {p1}, LxJ;->g()Lxs;

    move-result-object v2

    invoke-static {v0}, LKI;->a(LKT;)LKB;

    move-result-object v0

    invoke-direct {v1, v2, v0}, LyJ;-><init>(Lxs;LKB;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0}, Lyr;->d()V

    .line 53
    return-void
.end method

.method public a(LxD;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, LyG;->a:LyB;

    invoke-virtual {v0}, LyB;->b()V

    .line 73
    iget-object v0, p0, LyG;->a:LyB;

    .line 74
    invoke-virtual {v0}, LyB;->i()Lxi;

    move-result-object v0

    invoke-virtual {v0}, Lxi;->c()LxN;

    move-result-object v0

    invoke-virtual {v0}, LxN;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, LyG;->a:LyB;

    .line 75
    invoke-virtual {v1}, LyB;->i()Lxi;

    move-result-object v1

    invoke-virtual {v1}, Lxi;->l()LxC;

    move-result-object v1

    .line 73
    invoke-static {p1, v0, v1}, LyK;->a(LxD;Ljava/net/Proxy$Type;LxC;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, LyG;->b:Lyr;

    invoke-virtual {p1}, LxD;->e()Lxs;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lyr;->a(Lxs;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public a(LyB;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0, p1}, Lyr;->a(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public a(LyL;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0, p1}, Lyr;->a(LyL;)V

    .line 57
    return-void
.end method

.method public b()LxL;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0}, Lyr;->g()LxL;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, LyG;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, LyG;->b:Lyr;

    invoke-virtual {v0}, Lyr;->b()V

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    const-string v1, "close"

    iget-object v2, p0, LyG;->a:LyB;

    invoke-virtual {v2}, LyB;->g()LxD;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, LxD;->a(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v2, p0, LyG;->a:LyB;

    invoke-virtual {v2}, LyB;->h()LxJ;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, LxJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, LyG;->b:Lyr;

    invoke-virtual {v1}, Lyr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
