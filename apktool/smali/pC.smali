.class LpC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LpC;


# instance fields
.field private volatile b:LpD;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, LpC;->e()V

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static a()LpC;
    .locals 2

    .prologue
    .line 58
    const-class v1, LpC;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, LpC;->a:LpC;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, LpC;

    invoke-direct {v0}, LpC;-><init>()V

    sput-object v0, LpC;->a:LpC;

    .line 63
    :cond_0
    sget-object v0, LpC;->a:LpC;

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/net/Uri;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 75
    :try_start_1
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container preview url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpy;->d(Ljava/lang/String;)V

    .line 77
    const-string v1, ".*?&gtm_debug=x$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sget-object v1, LpD;->c:LpD;

    iput-object v1, p0, LpC;->b:LpD;

    .line 97
    :goto_0
    invoke-direct {p0, p1}, LpC;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LpC;->e:Ljava/lang/String;

    .line 99
    iget-object v1, p0, LpC;->b:LpD;

    sget-object v2, LpD;->b:LpD;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, LpC;->b:LpD;

    sget-object v2, LpD;->c:LpD;

    if-ne v1, v2, :cond_1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/r?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LpC;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LpC;->d:Ljava/lang/String;

    .line 103
    :cond_1
    iget-object v1, p0, LpC;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, LpC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LpC;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_1
    monitor-exit p0

    return v0

    .line 73
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 80
    :cond_2
    :try_start_2
    sget-object v1, LpD;->b:LpD;

    iput-object v1, p0, LpC;->b:LpD;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_3
    :try_start_3
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, LpC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LpC;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit preview mode for container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LpC;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpy;->d(Ljava/lang/String;)V

    .line 85
    sget-object v1, LpD;->a:LpD;

    iput-object v1, p0, LpC;->b:LpD;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, LpC;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 90
    goto :goto_1

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preview uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpy;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 94
    goto :goto_1
.end method

.method b()LpD;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, LpC;->b:LpD;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LpC;->d:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, LpC;->c:Ljava/lang/String;

    return-object v0
.end method

.method e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    sget-object v0, LpD;->a:LpD;

    iput-object v0, p0, LpC;->b:LpD;

    .line 132
    iput-object v1, p0, LpC;->d:Ljava/lang/String;

    .line 133
    iput-object v1, p0, LpC;->c:Ljava/lang/String;

    .line 134
    iput-object v1, p0, LpC;->e:Ljava/lang/String;

    .line 135
    return-void
.end method
