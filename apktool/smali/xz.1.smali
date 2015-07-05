.class public final Lxz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lxt;

.field private final b:Lxs;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lxh;

.field private final f:Lxi;

.field private final g:LxC;

.field private h:Lxz;

.field private i:Lxz;

.field private final j:Lxz;

.field private volatile k:LwM;


# direct methods
.method private constructor <init>(LxB;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, LxB;->a(LxB;)Lxt;

    move-result-object v0

    iput-object v0, p0, Lxz;->a:Lxt;

    .line 52
    invoke-static {p1}, LxB;->b(LxB;)Lxs;

    move-result-object v0

    iput-object v0, p0, Lxz;->b:Lxs;

    .line 53
    invoke-static {p1}, LxB;->c(LxB;)I

    move-result v0

    iput v0, p0, Lxz;->c:I

    .line 54
    invoke-static {p1}, LxB;->d(LxB;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxz;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, LxB;->e(LxB;)Lxh;

    move-result-object v0

    iput-object v0, p0, Lxz;->e:Lxh;

    .line 56
    invoke-static {p1}, LxB;->f(LxB;)Lxk;

    move-result-object v0

    invoke-virtual {v0}, Lxk;->a()Lxi;

    move-result-object v0

    iput-object v0, p0, Lxz;->f:Lxi;

    .line 57
    invoke-static {p1}, LxB;->g(LxB;)LxC;

    move-result-object v0

    iput-object v0, p0, Lxz;->g:LxC;

    .line 58
    invoke-static {p1}, LxB;->h(LxB;)Lxz;

    move-result-object v0

    iput-object v0, p0, Lxz;->h:Lxz;

    .line 59
    invoke-static {p1}, LxB;->i(LxB;)Lxz;

    move-result-object v0

    iput-object v0, p0, Lxz;->i:Lxz;

    .line 60
    invoke-static {p1}, LxB;->j(LxB;)Lxz;

    move-result-object v0

    iput-object v0, p0, Lxz;->j:Lxz;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(LxB;LxA;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lxz;-><init>(LxB;)V

    return-void
.end method

.method static synthetic a(Lxz;)Lxt;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->a:Lxt;

    return-object v0
.end method

.method static synthetic b(Lxz;)Lxs;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->b:Lxs;

    return-object v0
.end method

.method static synthetic c(Lxz;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lxz;->c:I

    return v0
.end method

.method static synthetic d(Lxz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lxz;)Lxh;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->e:Lxh;

    return-object v0
.end method

.method static synthetic f(Lxz;)Lxi;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->f:Lxi;

    return-object v0
.end method

.method static synthetic g(Lxz;)LxC;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->g:LxC;

    return-object v0
.end method

.method static synthetic h(Lxz;)Lxz;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->h:Lxz;

    return-object v0
.end method

.method static synthetic i(Lxz;)Lxz;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->i:Lxz;

    return-object v0
.end method

.method static synthetic j(Lxz;)Lxz;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxz;->j:Lxz;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lxz;->f:Lxi;

    invoke-virtual {v0, p1}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public a()Lxt;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lxz;->a:Lxt;

    return-object v0
.end method

.method public b()Lxs;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lxz;->b:Lxs;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lxz;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lxz;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lxz;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lxz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lxh;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lxz;->e:Lxh;

    return-object v0
.end method

.method public g()Lxi;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lxz;->f:Lxi;

    return-object v0
.end method

.method public h()LxC;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lxz;->g:LxC;

    return-object v0
.end method

.method public i()LxB;
    .locals 2

    .prologue
    .line 134
    new-instance v0, LxB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LxB;-><init>(Lxz;LxA;)V

    return-object v0
.end method

.method public j()Lxz;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lxz;->h:Lxz;

    return-object v0
.end method

.method public k()Lxz;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lxz;->i:Lxz;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LwX;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lxz;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 197
    :goto_0
    invoke-virtual {p0}, Lxz;->g()Lxi;

    move-result-object v1

    invoke-static {v1, v0}, Lyx;->b(Lxi;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 192
    :cond_0
    iget v0, p0, Lxz;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public m()LwM;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lxz;->k:LwM;

    .line 206
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxz;->f:Lxi;

    invoke-static {v0}, LwM;->a(Lxi;)LwM;

    move-result-object v0

    iput-object v0, p0, Lxz;->k:LwM;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lxz;->b:Lxs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lxz;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lxz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lxz;->a:Lxt;

    .line 217
    invoke-virtual {v1}, Lxt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
