.class public final LxJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LxD;

.field private final b:LxC;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lxr;

.field private final f:Lxs;

.field private final g:LxM;

.field private h:LxJ;

.field private i:LxJ;

.field private final j:LxJ;

.field private volatile k:LwV;


# direct methods
.method private constructor <init>(LxL;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, LxL;->a(LxL;)LxD;

    move-result-object v0

    iput-object v0, p0, LxJ;->a:LxD;

    .line 52
    invoke-static {p1}, LxL;->b(LxL;)LxC;

    move-result-object v0

    iput-object v0, p0, LxJ;->b:LxC;

    .line 53
    invoke-static {p1}, LxL;->c(LxL;)I

    move-result v0

    iput v0, p0, LxJ;->c:I

    .line 54
    invoke-static {p1}, LxL;->d(LxL;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxJ;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, LxL;->e(LxL;)Lxr;

    move-result-object v0

    iput-object v0, p0, LxJ;->e:Lxr;

    .line 56
    invoke-static {p1}, LxL;->f(LxL;)Lxu;

    move-result-object v0

    invoke-virtual {v0}, Lxu;->a()Lxs;

    move-result-object v0

    iput-object v0, p0, LxJ;->f:Lxs;

    .line 57
    invoke-static {p1}, LxL;->g(LxL;)LxM;

    move-result-object v0

    iput-object v0, p0, LxJ;->g:LxM;

    .line 58
    invoke-static {p1}, LxL;->h(LxL;)LxJ;

    move-result-object v0

    iput-object v0, p0, LxJ;->h:LxJ;

    .line 59
    invoke-static {p1}, LxL;->i(LxL;)LxJ;

    move-result-object v0

    iput-object v0, p0, LxJ;->i:LxJ;

    .line 60
    invoke-static {p1}, LxL;->j(LxL;)LxJ;

    move-result-object v0

    iput-object v0, p0, LxJ;->j:LxJ;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(LxL;LxK;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, LxJ;-><init>(LxL;)V

    return-void
.end method

.method static synthetic a(LxJ;)LxD;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->a:LxD;

    return-object v0
.end method

.method static synthetic b(LxJ;)LxC;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->b:LxC;

    return-object v0
.end method

.method static synthetic c(LxJ;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LxJ;->c:I

    return v0
.end method

.method static synthetic d(LxJ;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(LxJ;)Lxr;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->e:Lxr;

    return-object v0
.end method

.method static synthetic f(LxJ;)Lxs;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->f:Lxs;

    return-object v0
.end method

.method static synthetic g(LxJ;)LxM;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->g:LxM;

    return-object v0
.end method

.method static synthetic h(LxJ;)LxJ;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->h:LxJ;

    return-object v0
.end method

.method static synthetic i(LxJ;)LxJ;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->i:LxJ;

    return-object v0
.end method

.method static synthetic j(LxJ;)LxJ;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LxJ;->j:LxJ;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LxJ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, LxJ;->f:Lxs;

    invoke-virtual {v0, p1}, Lxs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public a()LxD;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, LxJ;->a:LxD;

    return-object v0
.end method

.method public b()LxC;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, LxJ;->b:LxC;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, LxJ;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, LxJ;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, LxJ;->c:I

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
    iget-object v0, p0, LxJ;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lxr;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, LxJ;->e:Lxr;

    return-object v0
.end method

.method public g()Lxs;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, LxJ;->f:Lxs;

    return-object v0
.end method

.method public h()LxM;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, LxJ;->g:LxM;

    return-object v0
.end method

.method public i()LxL;
    .locals 2

    .prologue
    .line 134
    new-instance v0, LxL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LxL;-><init>(LxJ;LxK;)V

    return-object v0
.end method

.method public j()LxJ;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, LxJ;->h:LxJ;

    return-object v0
.end method

.method public k()LxJ;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, LxJ;->i:LxJ;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lxg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, LxJ;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 197
    :goto_0
    invoke-virtual {p0}, LxJ;->g()Lxs;

    move-result-object v1

    invoke-static {v1, v0}, LyH;->b(Lxs;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 192
    :cond_0
    iget v0, p0, LxJ;->c:I

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

.method public m()LwV;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, LxJ;->k:LwV;

    .line 206
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LxJ;->f:Lxs;

    invoke-static {v0}, LwV;->a(Lxs;)LwV;

    move-result-object v0

    iput-object v0, p0, LxJ;->k:LwV;

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

    iget-object v1, p0, LxJ;->b:LxC;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LxJ;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LxJ;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LxJ;->a:LxD;

    .line 217
    invoke-virtual {v1}, LxD;->c()Ljava/lang/String;

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
