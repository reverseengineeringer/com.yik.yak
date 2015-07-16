.class public LxF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:Lxu;

.field private e:LxG;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, LxF;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lxu;

    invoke-direct {v0}, Lxu;-><init>()V

    iput-object v0, p0, LxF;->d:Lxu;

    .line 136
    return-void
.end method

.method private constructor <init>(LxD;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, LxD;->a(LxD;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxF;->a:Ljava/lang/String;

    .line 140
    invoke-static {p1}, LxD;->b(LxD;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, LxF;->b:Ljava/net/URL;

    .line 141
    invoke-static {p1}, LxD;->c(LxD;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxF;->c:Ljava/lang/String;

    .line 142
    invoke-static {p1}, LxD;->d(LxD;)LxG;

    move-result-object v0

    iput-object v0, p0, LxF;->e:LxG;

    .line 143
    invoke-static {p1}, LxD;->e(LxD;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LxF;->f:Ljava/lang/Object;

    .line 144
    invoke-static {p1}, LxD;->f(LxD;)Lxs;

    move-result-object v0

    invoke-virtual {v0}, Lxs;->b()Lxu;

    move-result-object v0

    iput-object v0, p0, LxF;->d:Lxu;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(LxD;LxE;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, LxF;-><init>(LxD;)V

    return-void
.end method

.method static synthetic a(LxF;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LxF;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LxF;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LxF;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(LxF;)Lxu;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LxF;->d:Lxu;

    return-object v0
.end method

.method static synthetic d(LxF;)LxG;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LxF;->e:LxG;

    return-object v0
.end method

.method static synthetic e(LxF;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LxF;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(LxF;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LxF;->b:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public a()LxF;
    .locals 2

    .prologue
    .line 201
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LxF;->a(Ljava/lang/String;LxG;)LxF;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)LxF;
    .locals 2

    .prologue
    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, LxF;->a:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LxF;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, LxF;->d:Lxu;

    invoke-virtual {v0, p1, p2}, Lxu;->b(Ljava/lang/String;Ljava/lang/String;)Lxu;

    .line 166
    return-object p0
.end method

.method public a(Ljava/lang/String;LxG;)LxF;
    .locals 3

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, LyF;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, LyF;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const/4 v0, 0x0

    sget-object v1, Lyi;->a:[B

    invoke-static {v0, v1}, LxG;->a(Lxx;[B)LxG;

    move-result-object p2

    .line 234
    :cond_3
    iput-object p1, p0, LxF;->c:Ljava/lang/String;

    .line 235
    iput-object p2, p0, LxF;->e:LxG;

    .line 236
    return-object p0
.end method

.method public a(Ljava/net/URL;)LxF;
    .locals 2

    .prologue
    .line 154
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iput-object p1, p0, LxF;->b:Ljava/net/URL;

    .line 156
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LxF;->a:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public a(LxG;)LxF;
    .locals 1

    .prologue
    .line 209
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, LxF;->a(Ljava/lang/String;LxG;)LxF;

    move-result-object v0

    return-object v0
.end method

.method public a(Lxs;)LxF;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Lxs;->b()Lxu;

    move-result-object v0

    iput-object v0, p0, LxF;->d:Lxu;

    .line 186
    return-object p0
.end method

.method public b()LxD;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, LxF;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, LxD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LxD;-><init>(LxF;LxE;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)LxF;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, LxF;->d:Lxu;

    invoke-virtual {v0, p1}, Lxu;->b(Ljava/lang/String;)Lxu;

    .line 180
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)LxF;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, LxF;->d:Lxu;

    invoke-virtual {v0, p1, p2}, Lxu;->a(Ljava/lang/String;Ljava/lang/String;)Lxu;

    .line 175
    return-object p0
.end method

.method public b(LxG;)LxF;
    .locals 1

    .prologue
    .line 217
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, LxF;->a(Ljava/lang/String;LxG;)LxF;

    move-result-object v0

    return-object v0
.end method
