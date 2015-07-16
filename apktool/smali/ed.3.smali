.class public final Led;
.super Lqi;
.source "SourceFile"

# interfaces
.implements Leg;


# static fields
.field public static a:LqF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqF",
            "<",
            "Led;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Led;

.field private static volatile j:LqE;


# instance fields
.field private final d:LpW;

.field private e:I

.field private f:I

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2324
    new-instance v0, Lee;

    invoke-direct {v0}, Lee;-><init>()V

    sput-object v0, Led;->a:LqF;

    .line 2478
    const/4 v0, 0x0

    sput-object v0, Led;->j:LqE;

    .line 2719
    new-instance v0, Led;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Led;-><init>(Z)V

    sput-object v0, Led;->c:Led;

    .line 2720
    sget-object v0, Led;->c:Led;

    invoke-direct {v0}, Led;->l()V

    .line 2721
    return-void
.end method

.method private constructor <init>(LpZ;Lqd;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 2273
    invoke-direct {p0}, Lqi;-><init>()V

    .line 2378
    iput-byte v0, p0, Led;->h:B

    .line 2407
    iput v0, p0, Led;->i:I

    .line 2274
    invoke-direct {p0}, Led;->l()V

    .line 2275
    invoke-static {}, LpW;->i()LpY;

    move-result-object v2

    .line 2278
    invoke-static {v2}, Lqb;->a(Ljava/io/OutputStream;)Lqb;

    move-result-object v3

    .line 2282
    const/4 v0, 0x0

    .line 2283
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2284
    :try_start_0
    invoke-virtual {p1}, LpZ;->a()I

    move-result v4

    .line 2285
    sparse-switch v4, :sswitch_data_0

    .line 2290
    invoke-virtual {p0, p1, v3, p2, v4}, Led;->a(LpZ;Lqb;Lqd;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 2292
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 2288
    goto :goto_0

    .line 2297
    :sswitch_1
    iget v4, p0, Led;->e:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Led;->e:I

    .line 2298
    invoke-virtual {p1}, LpZ;->f()I

    move-result v4

    iput v4, p0, Led;->f:I
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    :try_start_1
    invoke-virtual {v0, p0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2314
    :catchall_0
    move-exception v0

    .line 2315
    :try_start_2
    invoke-virtual {v3}, Lqb;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2319
    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpW;

    .line 2321
    :goto_1
    invoke-virtual {p0}, Led;->R()V

    throw v0

    .line 2302
    :sswitch_2
    :try_start_3
    iget v4, p0, Led;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Led;->e:I

    .line 2303
    invoke-virtual {p1}, LpZ;->f()I

    move-result v4

    iput v4, p0, Led;->g:I
    :try_end_3
    .catch Lqu; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2310
    :catch_1
    move-exception v0

    .line 2311
    :try_start_4
    new-instance v1, Lqu;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lqu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2315
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lqb;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2319
    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v0

    iput-object v0, p0, Led;->d:LpW;

    .line 2321
    :goto_2
    invoke-virtual {p0}, Led;->R()V

    .line 2323
    return-void

    .line 2319
    :catch_2
    move-exception v0

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v0

    iput-object v0, p0, Led;->d:LpW;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpW;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpW;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpW;

    throw v0

    .line 2285
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(LpZ;Lqd;LdS;)V
    .locals 0

    .prologue
    .line 2249
    invoke-direct {p0, p1, p2}, Led;-><init>(LpZ;Lqd;)V

    return-void
.end method

.method private constructor <init>(Lqk;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2255
    invoke-direct {p0, p1}, Lqi;-><init>(Lqk;)V

    .line 2378
    iput-byte v0, p0, Led;->h:B

    .line 2407
    iput v0, p0, Led;->i:I

    .line 2256
    invoke-virtual {p1}, Lqk;->r()LpW;

    move-result-object v0

    iput-object v0, p0, Led;->d:LpW;

    .line 2257
    return-void
.end method

.method synthetic constructor <init>(Lqk;LdS;)V
    .locals 0

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Led;-><init>(Lqk;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2258
    invoke-direct {p0}, Lqi;-><init>()V

    .line 2378
    iput-byte v0, p0, Led;->h:B

    .line 2407
    iput v0, p0, Led;->i:I

    .line 2258
    sget-object v0, LpW;->a:LpW;

    iput-object v0, p0, Led;->d:LpW;

    return-void
.end method

.method static synthetic a(Led;I)I
    .locals 0

    .prologue
    .line 2249
    iput p1, p0, Led;->f:I

    return p1
.end method

.method public static a()Led;
    .locals 1

    .prologue
    .line 2262
    sget-object v0, Led;->c:Led;

    return-object v0
.end method

.method public static a(Led;)Lef;
    .locals 1

    .prologue
    .line 2543
    invoke-static {}, Led;->h()Lef;

    move-result-object v0

    invoke-virtual {v0, p0}, Lef;->a(Led;)Lef;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Led;I)I
    .locals 0

    .prologue
    .line 2249
    iput p1, p0, Led;->g:I

    return p1
.end method

.method static synthetic b(Led;)LpW;
    .locals 1

    .prologue
    .line 2249
    iget-object v0, p0, Led;->d:LpW;

    return-object v0
.end method

.method static synthetic c(Led;I)I
    .locals 0

    .prologue
    .line 2249
    iput p1, p0, Led;->e:I

    return p1
.end method

.method public static h()Lef;
    .locals 1

    .prologue
    .line 2540
    invoke-static {}, Lef;->l()Lef;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2375
    iput v0, p0, Led;->f:I

    .line 2376
    iput v0, p0, Led;->g:I

    .line 2377
    return-void
.end method


# virtual methods
.method public b()Led;
    .locals 1

    .prologue
    .line 2266
    sget-object v0, Led;->c:Led;

    return-object v0
.end method

.method public c()LqF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LqF",
            "<",
            "Led;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2336
    sget-object v0, Led;->a:LqF;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2348
    iget v1, p0, Led;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 2354
    iget v0, p0, Led;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2435
    if-ne p1, p0, :cond_1

    .line 2454
    :cond_0
    :goto_0
    return v1

    .line 2438
    :cond_1
    instance-of v0, p1, Led;

    if-nez v0, :cond_2

    .line 2439
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2441
    :cond_2
    check-cast p1, Led;

    .line 2444
    invoke-virtual {p0}, Led;->d()Z

    move-result v0

    invoke-virtual {p1}, Led;->d()Z

    move-result v3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 2445
    :goto_1
    invoke-virtual {p0}, Led;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2446
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Led;->e()I

    move-result v0

    invoke-virtual {p1}, Led;->e()I

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 2449
    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Led;->f()Z

    move-result v0

    invoke-virtual {p1}, Led;->f()Z

    move-result v3

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 2450
    :goto_3
    invoke-virtual {p0}, Led;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2451
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Led;->g()I

    move-result v0

    invoke-virtual {p1}, Led;->g()I

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    .line 2444
    goto :goto_1

    :cond_6
    move v0, v2

    .line 2446
    goto :goto_2

    :cond_7
    move v0, v2

    .line 2449
    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2365
    iget v0, p0, Led;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 2371
    iget v0, p0, Led;->g:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2459
    iget v0, p0, Led;->b:I

    if-eqz v0, :cond_0

    .line 2460
    iget v0, p0, Led;->b:I

    .line 2474
    :goto_0
    return v0

    .line 2463
    :cond_0
    const-class v0, Led;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 2464
    invoke-virtual {p0}, Led;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2465
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2466
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->e()I

    move-result v1

    add-int/2addr v0, v1

    .line 2468
    :cond_1
    invoke-virtual {p0}, Led;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2469
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2470
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 2472
    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Led;->d:LpW;

    invoke-virtual {v1}, LpW;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2473
    iput v0, p0, Led;->b:I

    goto :goto_0
.end method

.method public i()Lef;
    .locals 1

    .prologue
    .line 2541
    invoke-static {}, Led;->h()Lef;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2380
    iget-byte v2, p0, Led;->h:B

    .line 2381
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 2392
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2381
    goto :goto_0

    .line 2383
    :cond_1
    invoke-virtual {p0}, Led;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2384
    iput-byte v1, p0, Led;->h:B

    move v0, v1

    .line 2385
    goto :goto_0

    .line 2387
    :cond_2
    invoke-virtual {p0}, Led;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2388
    iput-byte v1, p0, Led;->h:B

    move v0, v1

    .line 2389
    goto :goto_0

    .line 2391
    :cond_3
    iput-byte v0, p0, Led;->h:B

    goto :goto_0
.end method

.method public k()Lef;
    .locals 1

    .prologue
    .line 2545
    invoke-static {p0}, Led;->a(Led;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()LqC;
    .locals 1

    .prologue
    .line 2249
    invoke-virtual {p0}, Led;->k()Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()LqC;
    .locals 1

    .prologue
    .line 2249
    invoke-virtual {p0}, Led;->i()Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 2249
    invoke-virtual {p0}, Led;->b()Led;

    move-result-object v0

    return-object v0
.end method
