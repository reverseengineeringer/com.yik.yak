.class public final LwF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:LxN;

.field private final b:LxF;

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
    new-instance v0, LwG;

    invoke-direct {v0, p0}, LwG;-><init>(LwF;)V

    iput-object v0, p0, LwF;->a:LxN;

    .line 143
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, LxF;->a(Ljava/io/File;IIJ)LxF;

    move-result-object v0

    iput-object v0, p0, LwF;->b:LxF;

    .line 144
    return-void
.end method

.method static synthetic a(LJT;)I
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, LwF;->b(LJT;)I

    move-result v0

    return v0
.end method

.method static synthetic a(LwF;Lxz;)Lyc;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, LwF;->a(Lxz;)Lyc;

    move-result-object v0

    return-object v0
.end method

.method private a(Lxz;)Lyc;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1}, Lxz;->a()Lxt;

    move-result-object v1

    invoke-virtual {v1}, Lxt;->d()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lxz;->a()Lxt;

    move-result-object v2

    invoke-virtual {v2}, Lxt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyv;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lxz;->a()Lxt;

    move-result-object v1

    invoke-direct {p0, v1}, LwF;->c(Lxt;)V
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
    invoke-static {p1}, Lyx;->b(Lxz;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, LwL;

    invoke-direct {v1, p1}, LwL;-><init>(Lxz;)V

    .line 206
    :try_start_1
    iget-object v2, p0, LwF;->b:LxF;

    invoke-virtual {p1}, Lxz;->a()Lxt;

    move-result-object v3

    invoke-static {v3}, LwF;->b(Lxt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LxF;->b(Ljava/lang/String;)LxI;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 207
    if-eqz v2, :cond_0

    .line 210
    :try_start_2
    invoke-virtual {v1, v2}, LwL;->a(LxI;)V

    .line 211
    new-instance v1, LwH;

    invoke-direct {v1, p0, v2}, LwH;-><init>(LwF;LxI;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1}, LwF;->a(LxI;)V

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
    iget v0, p0, LwF;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwF;->f:I
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

.method static synthetic a(LwF;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, LwF;->a()V

    return-void
.end method

.method static synthetic a(LwF;Lxt;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, LwF;->c(Lxt;)V

    return-void
.end method

.method static synthetic a(LwF;Lxz;Lxz;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, LwF;->a(Lxz;Lxz;)V

    return-void
.end method

.method static synthetic a(LwF;Lyd;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, LwF;->a(Lyd;)V

    return-void
.end method

.method private a(LxI;)V
    .locals 1

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {p1}, LxI;->b()V
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

.method private a(Lxz;Lxz;)V
    .locals 3

    .prologue
    .line 223
    new-instance v1, LwL;

    invoke-direct {v1, p2}, LwL;-><init>(Lxz;)V

    .line 224
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    check-cast v0, LwJ;

    invoke-static {v0}, LwJ;->a(LwJ;)LxL;

    move-result-object v2

    .line 225
    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {v2}, LxL;->a()LxI;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1, v0}, LwL;->a(LxI;)V

    .line 230
    invoke-virtual {v0}, LxI;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, LwF;->a(LxI;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lyd;)V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget v0, p0, LwF;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwF;->g:I

    .line 351
    iget-object v0, p1, Lyd;->a:Lxt;

    if-eqz v0, :cond_1

    .line 353
    iget v0, p0, LwF;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwF;->e:I
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
    iget-object v0, p1, Lyd;->b:Lxz;

    if-eqz v0, :cond_0

    .line 357
    iget v0, p0, LwF;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LwF;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(LJT;)I
    .locals 4

    .prologue
    .line 633
    invoke-interface {p0}, LJT;->q()Ljava/lang/String;

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

.method static synthetic b(LwF;)I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, LwF;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LwF;->c:I

    return v0
.end method

.method private static b(Lxt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lxt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LxY;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LwF;)I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, LwF;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LwF;->d:I

    return v0
.end method

.method private c(Lxt;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, LwF;->b:LxF;

    invoke-static {p1}, LwF;->b(Lxt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LxF;->c(Ljava/lang/String;)Z

    .line 220
    return-void
.end method


# virtual methods
.method a(Lxt;)Lxz;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {p1}, LwF;->b(Lxt;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :try_start_0
    iget-object v2, p0, LwF;->b:LxF;

    invoke-virtual {v2, v1}, LxF;->a(Ljava/lang/String;)LxL;
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
    new-instance v2, LwL;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LxL;->a(I)LKl;

    move-result-object v3

    invoke-direct {v2, v3}, LwL;-><init>(LKl;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    invoke-virtual {v2, p1, v1}, LwL;->a(Lxt;LxL;)Lxz;

    move-result-object v1

    .line 173
    invoke-virtual {v2, p1, v1}, LwL;->a(Lxt;Lxz;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {v1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

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
