.class public Lxv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:Lxk;

.field private e:Lxw;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, Lxv;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lxk;

    invoke-direct {v0}, Lxk;-><init>()V

    iput-object v0, p0, Lxv;->d:Lxk;

    .line 136
    return-void
.end method

.method private constructor <init>(Lxt;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lxt;->a(Lxt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxv;->a:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lxt;->b(Lxt;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lxv;->b:Ljava/net/URL;

    .line 141
    invoke-static {p1}, Lxt;->c(Lxt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxv;->c:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lxt;->d(Lxt;)Lxw;

    move-result-object v0

    iput-object v0, p0, Lxv;->e:Lxw;

    .line 143
    invoke-static {p1}, Lxt;->e(Lxt;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lxv;->f:Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Lxt;->f(Lxt;)Lxi;

    move-result-object v0

    invoke-virtual {v0}, Lxi;->b()Lxk;

    move-result-object v0

    iput-object v0, p0, Lxv;->d:Lxk;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lxt;Lxu;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lxv;-><init>(Lxt;)V

    return-void
.end method

.method static synthetic a(Lxv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lxv;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lxv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lxv;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lxv;)Lxk;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lxv;->d:Lxk;

    return-object v0
.end method

.method static synthetic d(Lxv;)Lxw;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lxv;->e:Lxw;

    return-object v0
.end method

.method static synthetic e(Lxv;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lxv;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lxv;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lxv;->b:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public a()Lxv;
    .locals 2

    .prologue
    .line 201
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxv;->a(Ljava/lang/String;Lxw;)Lxv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lxv;
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
    iput-object p1, p0, Lxv;->a:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lxv;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lxv;->d:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->b(Ljava/lang/String;Ljava/lang/String;)Lxk;

    .line 166
    return-object p0
.end method

.method public a(Ljava/lang/String;Lxw;)Lxv;
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

    invoke-static {p1}, Lyv;->c(Ljava/lang/String;)Z

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

    invoke-static {p1}, Lyv;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const/4 v0, 0x0

    sget-object v1, LxY;->a:[B

    invoke-static {v0, v1}, Lxw;->a(Lxn;[B)Lxw;

    move-result-object p2

    .line 234
    :cond_3
    iput-object p1, p0, Lxv;->c:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lxv;->e:Lxw;

    .line 236
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lxv;
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
    iput-object p1, p0, Lxv;->b:Ljava/net/URL;

    .line 156
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxv;->a:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public a(Lxi;)Lxv;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Lxi;->b()Lxk;

    move-result-object v0

    iput-object v0, p0, Lxv;->d:Lxk;

    .line 186
    return-object p0
.end method

.method public a(Lxw;)Lxv;
    .locals 1

    .prologue
    .line 209
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lxv;->a(Ljava/lang/String;Lxw;)Lxv;

    move-result-object v0

    return-object v0
.end method

.method public b()Lxt;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lxv;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Lxt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxt;-><init>(Lxv;Lxu;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lxv;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lxv;->d:Lxk;

    invoke-virtual {v0, p1}, Lxk;->b(Ljava/lang/String;)Lxk;

    .line 180
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lxv;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lxv;->d:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

    .line 175
    return-object p0
.end method

.method public b(Lxw;)Lxv;
    .locals 1

    .prologue
    .line 217
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lxv;->a(Ljava/lang/String;Lxw;)Lxv;

    move-result-object v0

    return-object v0
.end method
