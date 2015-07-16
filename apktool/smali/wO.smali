.class public final LwO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:LxX;

.field private final b:LxP;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, LwP;

    invoke-direct {v0, p0}, LwP;-><init>(LwO;)V

    iput-object v0, p0, LwO;->a:LxX;

    .line 143
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, LxP;->a(Ljava/io/File;IIJ)LxP;

    move-result-object v0

    iput-object v0, p0, LwO;->b:LxP;

    .line 144
    return-void
.end method

.method static synthetic a(LKB;)I
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, LwO;->b(LKB;)I

    move-result v0

    return v0
.end method

.method static synthetic a(LwO;LxJ;)Lym;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, LwO;->a(LxJ;)Lym;

    move-result-object v0

    return-object v0
.end method

.method private a(LxJ;)Lym;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1}, LxJ;->a()LxD;

    move-result-object v1

    invoke-virtual {v1}, LxD;->d()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, LxJ;->a()LxD;

    move-result-object v2

    invoke-virtual {v2}, LxD;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LyF;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :try_start_0
    invoke-virtual {p1}, LxJ;->a()LxD;

    move-result-object v1

    invoke-direct {p0, v1}, LwO;->c(LxD;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {p1}, LyH;->b(LxJ;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, LwU;

    invoke-direct {v1, p1}, LwU;-><init>(LxJ;)V

    .line 206
    :try_start_1
    iget-object v2, p0, LwO;->b:LxP;

    invoke-virtual {p1}, LxJ;->a()LxD;

    move-result-object v3

    invoke-static {v3}, LwO;->b(LxD;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LxP;->b(Ljava/lang/String;)LxS;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 207
    if-eqz v2, :cond_0

    .line 210
    :try_start_2
    invoke-virtual {v1, v2}, LwU;->a(LxS;)V

    .line 211
    new-instance v1, LwQ;

    invoke-direct {v1, p0, v2}, LwQ;-><init>(LwO;LxS;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1}, LwO;->a(LxS;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget v0, p0, LwO;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwO;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(LwO;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, LwO;->a()V

    return-void
.end method

.method static synthetic a(LwO;LxD;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, LwO;->c(LxD;)V

    return-void
.end method

.method static synthetic a(LwO;LxJ;LxJ;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, LwO;->a(LxJ;LxJ;)V

    return-void
.end method

.method static synthetic a(LwO;Lyn;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, LwO;->a(Lyn;)V

    return-void
.end method

.method private a(LxJ;LxJ;)V
    .locals 3

    .prologue
    .line 223
    new-instance v1, LwU;

    invoke-direct {v1, p2}, LwU;-><init>(LxJ;)V

    .line 224
    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v0

    check-cast v0, LwS;

    invoke-static {v0}, LwS;->a(LwS;)LxV;

    move-result-object v2

    .line 225
    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {v2}, LxV;->a()LxS;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1, v0}, LwU;->a(LxS;)V

    .line 230
    invoke-virtual {v0}, LxS;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, LwO;->a(LxS;)V

    goto :goto_0
.end method

.method private a(LxS;)V
    .locals 1

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {p1}, LxS;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized a(Lyn;)V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget v0, p0, LwO;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwO;->g:I

    .line 351
    iget-object v0, p1, Lyn;->a:LxD;

    if-eqz v0, :cond_1

    .line 353
    iget v0, p0, LwO;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwO;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_1
    :try_start_1
    iget-object v0, p1, Lyn;->b:LxJ;

    if-eqz v0, :cond_0

    .line 357
    iget v0, p0, LwO;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwO;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(LKB;)I
    .locals 4

    .prologue
    .line 633
    invoke-interface {p0}, LKB;->q()Ljava/lang/String;

    move-result-object v0

    .line 635
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 637
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an integer but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic b(LwO;)I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, LwO;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LwO;->c:I

    return v0
.end method

.method private static b(LxD;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, LxD;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LwO;)I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, LwO;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LwO;->d:I

    return v0
.end method

.method private c(LxD;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, LwO;->b:LxP;

    invoke-static {p1}, LwO;->b(LxD;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LxP;->c(Ljava/lang/String;)Z

    .line 220
    return-void
.end method


# virtual methods
.method a(LxD;)LxJ;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {p1}, LwO;->b(LxD;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :try_start_0
    iget-object v2, p0, LwO;->b:LxP;

    invoke-virtual {v2, v1}, LxP;->a(Ljava/lang/String;)LxV;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 156
    if-nez v1, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 165
    :cond_0
    :try_start_1
    new-instance v2, LwU;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LxV;->a(I)LKT;

    move-result-object v3

    invoke-direct {v2, v3}, LwU;-><init>(LKT;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    invoke-virtual {v2, p1, v1}, LwU;->a(LxD;LxV;)LxJ;

    move-result-object v1

    .line 173
    invoke-virtual {v2, p1, v1}, LwU;->a(LxD;LxJ;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {v1}, LxJ;->h()LxM;

    move-result-object v1

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 161
    :catch_1
    move-exception v1

    goto :goto_0
.end method
