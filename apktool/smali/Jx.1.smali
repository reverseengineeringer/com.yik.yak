.class public LJx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJI;


# instance fields
.field private final a:LHM;

.field private b:LJK;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, LHz;

    invoke-direct {v0}, LHz;-><init>()V

    invoke-direct {p0, v0}, LJx;-><init>(LHM;)V

    .line 33
    return-void
.end method

.method public constructor <init>(LHM;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, LJx;->a:LHM;

    .line 37
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, LJx;->d:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, LJx;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 101
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJx;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, LJx;->d:Z

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, LJx;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, LJx;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    :cond_0
    iget-object v0, p0, LJx;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LJx;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, LJx;->b:LJK;

    invoke-static {v0}, LJJ;->a(LJK;)Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 120
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(LJz;Ljava/lang/String;Ljava/util/Map;)LJA;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJz;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "LJA;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 66
    sget-object v0, LJy;->a:[I

    invoke-virtual {p1}, LJz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    invoke-static {p2, p3, v2}, LJA;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)LJA;

    move-result-object v0

    move-object v1, v0

    .line 88
    :goto_0
    invoke-direct {p0, p2}, LJx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJx;->b:LJK;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, LJx;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    :cond_0
    return-object v1

    .line 72
    :pswitch_1
    invoke-static {p2, p3, v2}, LJA;->b(Ljava/lang/CharSequence;Ljava/util/Map;Z)LJA;

    move-result-object v0

    move-object v1, v0

    .line 73
    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {p2}, LJA;->d(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 80
    :pswitch_3
    invoke-static {p2}, LJA;->e(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    move-object v1, v0

    .line 81
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(LJK;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LJx;->b:LJK;

    if-eq v0, p1, :cond_0

    .line 47
    iput-object p1, p0, LJx;->b:LJK;

    .line 48
    invoke-direct {p0}, LJx;->a()V

    .line 50
    :cond_0
    return-void
.end method
