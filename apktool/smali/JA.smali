.class public LJA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:LJD;


# instance fields
.field public final a:Ljava/net/URL;

.field private d:Ljava/net/HttpURLConnection;

.field private final e:Ljava/lang/String;

.field private f:LJH;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, LJA;->b:[Ljava/lang/String;

    .line 361
    sget-object v0, LJD;->a:LJD;

    sput-object v0, LJA;->c:LJD;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, LJA;->d:Ljava/net/HttpURLConnection;

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, LJA;->h:Z

    .line 1289
    const/4 v0, 0x0

    iput-boolean v0, p0, LJA;->i:Z

    .line 1291
    const/16 v0, 0x2000

    iput v0, p0, LJA;->j:I

    .line 1306
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJA;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    iput-object p2, p0, LJA;->e:Ljava/lang/String;

    .line 1311
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic a(LJA;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, LJA;->j:I

    return v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)LJA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "LJA;"
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {p0, p1}, LJA;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 902
    if-eqz p2, :cond_0

    invoke-static {v0}, LJA;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, LJA;->b(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 757
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 764
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 769
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 770
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v3, "%2B"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 773
    :cond_1
    return-object v0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 774
    :catch_1
    move-exception v0

    .line 775
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Parsing URI failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 777
    new-instance v0, LJF;

    invoke-direct {v0, v1}, LJF;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 792
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-object v0

    .line 796
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-static {v0, v1}, LJA;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {v0, v1}, LJA;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 803
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 805
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_2

    .line 809
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 814
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_2

    .line 818
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 821
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 313
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 314
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    return-object p1
.end method

.method public static b(Ljava/lang/CharSequence;)LJA;
    .locals 2

    .prologue
    .line 874
    new-instance v0, LJA;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, LJA;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/util/Map;Z)LJA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "LJA;"
        }
    .end annotation

    .prologue
    .line 957
    invoke-static {p0, p1}, LJA;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 958
    if-eqz p2, :cond_0

    invoke-static {v0}, LJA;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, LJA;->c(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x26

    .line 320
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 322
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 323
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    :goto_0
    return-object p1

    .line 324
    :cond_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    .line 325
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static c(Ljava/lang/CharSequence;)LJA;
    .locals 2

    .prologue
    .line 930
    new-instance v0, LJA;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, LJA;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;)LJA;
    .locals 2

    .prologue
    .line 986
    new-instance v0, LJA;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, LJA;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/CharSequence;)LJA;
    .locals 2

    .prologue
    .line 1042
    new-instance v0, LJA;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, LJA;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, LJA;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    :goto_0
    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method

.method private q()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 1326
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, LJA;->k:Ljava/lang/String;

    iget v4, p0, LJA;->l:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private r()Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1332
    :try_start_0
    iget-object v0, p0, LJA;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1333
    sget-object v0, LJA;->c:LJD;

    iget-object v1, p0, LJA;->a:Ljava/net/URL;

    invoke-direct {p0}, LJA;->q()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LJD;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1336
    :goto_0
    iget-object v1, p0, LJA;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1337
    return-object v0

    .line 1335
    :cond_0
    sget-object v0, LJA;->c:LJD;

    iget-object v1, p0, LJA;->a:Ljava/net/URL;

    invoke-interface {v0, v1}, LJD;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1975
    invoke-virtual {p0}, LJA;->l()LJA;

    .line 1976
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(I)LJA;
    .locals 1

    .prologue
    .line 1853
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1854
    return-object p0
.end method

.method protected a(Ljava/io/InputStream;Ljava/io/OutputStream;)LJA;
    .locals 6

    .prologue
    .line 2402
    new-instance v0, LJB;

    iget-boolean v3, p0, LJA;->h:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LJB;-><init>(LJA;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, LJB;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJA;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)LJA;
    .locals 1

    .prologue
    .line 2597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 1

    .prologue
    .line 1865
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)LJA;
    .locals 1

    .prologue
    .line 2611
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, LJA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 2

    .prologue
    .line 2530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    if-eqz p2, :cond_0

    .line 2533
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2535
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, LJA;->f(Ljava/lang/String;Ljava/lang/String;)LJA;

    .line 2536
    if-eqz p3, :cond_1

    .line 2537
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p3}, LJA;->f(Ljava/lang/String;Ljava/lang/String;)LJA;

    .line 2538
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, LJA;->f(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)LJA;
    .locals 3

    .prologue
    .line 2651
    const/4 v2, 0x0

    .line 2653
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2654
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)LJA;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2658
    if-eqz v1, :cond_0

    .line 2660
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2662
    :cond_0
    :goto_0
    return-object v0

    .line 2655
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2656
    :goto_1
    :try_start_3
    new-instance v2, LJF;

    invoke-direct {v2, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2658
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 2660
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2662
    :cond_1
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 2658
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 2655
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)LJA;
    .locals 2

    .prologue
    .line 2692
    :try_start_0
    invoke-virtual {p0}, LJA;->n()LJA;

    .line 2693
    invoke-virtual {p0, p1, p2, p3}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;

    .line 2694
    iget-object v0, p0, LJA;->f:LJH;

    invoke-virtual {p0, p4, v0}, LJA;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)LJA;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2698
    return-object p0

    .line 2695
    :catch_0
    move-exception v0

    .line 2696
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 2

    .prologue
    .line 2579
    :try_start_0
    invoke-virtual {p0}, LJA;->n()LJA;

    .line 2580
    invoke-virtual {p0, p1, p2, p3}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;

    .line 2581
    iget-object v0, p0, LJA;->f:LJH;

    invoke-virtual {v0, p4}, LJH;->a(Ljava/lang/String;)LJH;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2585
    return-object p0

    .line 2582
    :catch_0
    move-exception v0

    .line 2583
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/util/Map$Entry;)LJA;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "LJA;"
        }
    .end annotation

    .prologue
    .line 1901
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)LJA;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2142
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1575
    invoke-virtual {p0}, LJA;->d()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1577
    :try_start_0
    invoke-virtual {p0}, LJA;->f()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LJA;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)LJA;

    .line 1578
    invoke-static {p1}, LJA;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, LJA;->d:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1355
    invoke-direct {p0}, LJA;->r()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, LJA;->d:Ljava/net/HttpURLConnection;

    .line 1356
    :cond_0
    iget-object v0, p0, LJA;->d:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 1389
    :try_start_0
    invoke-virtual {p0}, LJA;->k()LJA;

    .line 1390
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 1

    .prologue
    .line 2563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1912
    invoke-virtual {p0}, LJA;->l()LJA;

    .line 1913
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2005
    invoke-virtual {p0, p1}, LJA;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, LJA;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1962
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, LJA;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x22

    const/4 v2, 0x0

    const/16 v6, 0x3b

    const/4 v5, -0x1

    .line 2072
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 2102
    :cond_1
    :goto_0
    return-object v0

    .line 2075
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2076
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2077
    if-eqz v3, :cond_3

    if-ne v3, v1, :cond_4

    :cond_3
    move-object v0, v2

    .line 2078
    goto :goto_0

    .line 2080
    :cond_4
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2081
    if-ne v0, v5, :cond_8

    move v0, v3

    move v3, v1

    .line 2084
    :goto_1
    if-ge v0, v3, :cond_7

    .line 2085
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2086
    if-eq v4, v5, :cond_5

    if-ge v4, v3, :cond_5

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2087
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2088
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2089
    if-eqz v4, :cond_5

    .line 2090
    const/4 v1, 0x2

    if-le v4, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    .line 2091
    const/4 v1, 0x1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2096
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 2097
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2098
    if-ne v0, v5, :cond_6

    move v0, v1

    :cond_6
    move v8, v0

    move v0, v3

    move v3, v8

    .line 2100
    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 2102
    goto :goto_0

    :cond_8
    move v8, v0

    move v0, v3

    move v3, v8

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1415
    const/16 v0, 0xc8

    invoke-virtual {p0}, LJA;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)LJA;
    .locals 1

    .prologue
    .line 2317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LJA;->d(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 3

    .prologue
    .line 2328
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2329
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    .line 2332
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    goto :goto_0
.end method

.method protected d()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1558
    invoke-virtual {p0}, LJA;->j()I

    move-result v1

    .line 1559
    if-lez v1, :cond_0

    .line 1560
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1562
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 1

    .prologue
    .line 2549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LJA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, LJA;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJA;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/CharSequence;)LJA;
    .locals 2

    .prologue
    .line 2797
    :try_start_0
    invoke-virtual {p0}, LJA;->m()LJA;

    .line 2798
    iget-object v0, p0, LJA;->f:LJH;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LJH;->a(Ljava/lang/String;)LJH;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2802
    return-object p0

    .line 2799
    :catch_0
    move-exception v0

    .line 2800
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)LJA;
    .locals 2

    .prologue
    .line 2710
    invoke-virtual {p0, p1}, LJA;->f(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, LJA;->f(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    invoke-virtual {v0, p2}, LJA;->f(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, LJA;->f(Ljava/lang/CharSequence;)LJA;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/BufferedInputStream;
    .locals 3

    .prologue
    .line 1654
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, LJA;->g()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, LJA;->j:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 1665
    invoke-virtual {p0}, LJA;->b()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2

    .line 1667
    :try_start_0
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1681
    :cond_0
    :goto_0
    iget-boolean v1, p0, LJA;->i:Z

    if-eqz v1, :cond_1

    const-string v1, "gzip"

    invoke-virtual {p0}, LJA;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1685
    :cond_1
    :goto_1
    return-object v0

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1672
    :cond_2
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1673
    if-nez v0, :cond_0

    .line 1675
    :try_start_1
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1676
    :catch_1
    move-exception v0

    .line 1677
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1685
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_1

    .line 1686
    :catch_2
    move-exception v0

    .line 1687
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2111
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, LJA;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2181
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, LJA;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 2350
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, LJA;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected k()LJA;
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, LJA;->f:LJH;

    if-nez v0, :cond_0

    .line 2458
    :goto_0
    return-object p0

    .line 2447
    :cond_0
    iget-boolean v0, p0, LJA;->g:Z

    if-eqz v0, :cond_1

    .line 2448
    iget-object v0, p0, LJA;->f:LJH;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, LJH;->a(Ljava/lang/String;)LJH;

    .line 2449
    :cond_1
    iget-boolean v0, p0, LJA;->h:Z

    if-eqz v0, :cond_2

    .line 2451
    :try_start_0
    iget-object v0, p0, LJA;->f:LJH;

    invoke-virtual {v0}, LJH;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2457
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, LJA;->f:LJH;

    goto :goto_0

    .line 2456
    :cond_2
    iget-object v0, p0, LJA;->f:LJH;

    invoke-virtual {v0}, LJH;->close()V

    goto :goto_1

    .line 2454
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected l()LJA;
    .locals 2

    .prologue
    .line 2470
    :try_start_0
    invoke-virtual {p0}, LJA;->k()LJA;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2471
    :catch_0
    move-exception v0

    .line 2472
    new-instance v1, LJF;

    invoke-direct {v1, v0}, LJF;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method protected m()LJA;
    .locals 4

    .prologue
    .line 2483
    iget-object v0, p0, LJA;->f:LJH;

    if-eqz v0, :cond_0

    .line 2488
    :goto_0
    return-object p0

    .line 2485
    :cond_0
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2486
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, LJA;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2487
    new-instance v1, LJH;

    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, LJA;->j:I

    invoke-direct {v1, v2, v0, v3}, LJH;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, LJA;->f:LJH;

    goto :goto_0
.end method

.method protected n()LJA;
    .locals 2

    .prologue
    .line 2498
    iget-boolean v0, p0, LJA;->g:Z

    if-nez v0, :cond_0

    .line 2499
    const/4 v0, 0x1

    iput-boolean v0, p0, LJA;->g:Z

    .line 2500
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, LJA;->d(Ljava/lang/String;)LJA;

    move-result-object v0

    invoke-virtual {v0}, LJA;->m()LJA;

    .line 2501
    iget-object v0, p0, LJA;->f:LJH;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, LJH;->a(Ljava/lang/String;)LJH;

    .line 2504
    :goto_0
    return-object p0

    .line 2503
    :cond_0
    iget-object v0, p0, LJA;->f:LJH;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, LJH;->a(Ljava/lang/String;)LJH;

    goto :goto_0
.end method

.method public o()Ljava/net/URL;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2971
    invoke-virtual {p0}, LJA;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LJA;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LJA;->o()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
