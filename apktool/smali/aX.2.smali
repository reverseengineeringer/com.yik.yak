.class LaX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LbT;

.field private static final b:[Lbf;

.field private static final c:[Lbi;

.field private static final d:[Lbe;

.field private static final e:[LaZ;

.field private static final f:[Lba;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v0, LbT;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, LbT;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, LaX;->a:LbT;

    .line 24
    new-array v0, v3, [Lbf;

    sput-object v0, LaX;->b:[Lbf;

    .line 25
    new-array v0, v3, [Lbi;

    sput-object v0, LaX;->c:[Lbi;

    .line 26
    new-array v0, v3, [Lbe;

    sput-object v0, LaX;->d:[Lbe;

    .line 27
    new-array v0, v3, [LaZ;

    sput-object v0, LaX;->e:[LaZ;

    .line 29
    new-array v0, v3, [Lba;

    sput-object v0, LaX;->f:[Lba;

    return-void
.end method

.method private static a(LbS;)Lbc;
    .locals 7

    .prologue
    .line 418
    iget-object v0, p0, LbS;->b:LbT;

    if-eqz v0, :cond_0

    iget-object v0, p0, LbS;->b:LbT;

    .line 420
    :goto_0
    new-instance v1, Lbh;

    invoke-direct {v1, v0}, Lbh;-><init>(LbT;)V

    .line 422
    iget-object v0, p0, LbS;->c:[LbU;

    invoke-static {v0}, LaX;->a([LbU;)Lbg;

    move-result-object v0

    .line 423
    iget-object v2, p0, LbS;->d:[LbQ;

    invoke-static {v2}, LaX;->a([LbQ;)Lbg;

    move-result-object v2

    .line 426
    new-instance v3, Lbd;

    invoke-direct {v3, v1, v0, v2}, Lbd;-><init>(Lbh;Lbg;Lbg;)V

    .line 428
    iget-object v0, p0, LbS;->e:[LbR;

    invoke-static {v0}, LaX;->a([LbR;)Lbg;

    move-result-object v0

    .line 431
    new-instance v5, LaY;

    invoke-direct {v5, v3, v0}, LaY;-><init>(Lbd;Lbg;)V

    .line 433
    new-instance v6, Lbb;

    invoke-direct {v6}, Lbb;-><init>()V

    .line 435
    new-instance v1, Lbc;

    iget-wide v2, p0, LbS;->a:J

    const-string v4, "ndk-crash"

    invoke-direct/range {v1 .. v6}, Lbc;-><init>(JLjava/lang/String;LaY;Lbb;)V

    return-object v1

    .line 418
    :cond_0
    sget-object v0, LaX;->a:LbT;

    goto :goto_0
.end method

.method private static a([LbQ;)Lbg;
    .locals 4

    .prologue
    .line 460
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [LaZ;

    .line 462
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 463
    new-instance v2, LaZ;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, LaZ;-><init>(LbQ;)V

    aput-object v2, v0, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_0
    sget-object v0, LaX;->e:[LaZ;

    goto :goto_0

    .line 465
    :cond_1
    new-instance v1, Lbg;

    invoke-direct {v1, v0}, Lbg;-><init>([Lbf;)V

    return-object v1
.end method

.method private static a([LbR;)Lbg;
    .locals 4

    .prologue
    .line 470
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lba;

    .line 473
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 474
    new-instance v2, Lba;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lba;-><init>(LbR;)V

    aput-object v2, v0, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    :cond_0
    sget-object v0, LaX;->f:[Lba;

    goto :goto_0

    .line 476
    :cond_1
    new-instance v1, Lbg;

    invoke-direct {v1, v0}, Lbg;-><init>([Lbf;)V

    return-object v1
.end method

.method private static a([LbU;)Lbg;
    .locals 5

    .prologue
    .line 440
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbi;

    .line 442
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 443
    aget-object v2, p0, v1

    .line 444
    new-instance v3, Lbi;

    iget-object v4, v2, LbU;->b:[LbV;

    invoke-static {v4}, LaX;->a([LbV;)Lbg;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lbi;-><init>(LbU;Lbg;)V

    aput-object v3, v0, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_0
    sget-object v0, LaX;->c:[Lbi;

    goto :goto_0

    .line 447
    :cond_1
    new-instance v1, Lbg;

    invoke-direct {v1, v0}, Lbg;-><init>([Lbf;)V

    return-object v1
.end method

.method private static a([LbV;)Lbg;
    .locals 4

    .prologue
    .line 451
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbe;

    .line 453
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 454
    new-instance v2, Lbe;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lbe;-><init>(LbV;)V

    aput-object v2, v0, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_0
    sget-object v0, LaX;->d:[Lbe;

    goto :goto_0

    .line 456
    :cond_1
    new-instance v1, Lbg;

    invoke-direct {v1, v0}, Lbg;-><init>([Lbf;)V

    return-object v1
.end method

.method public static a(LbS;Laf;)V
    .locals 1

    .prologue
    .line 488
    invoke-static {p0}, LaX;->a(LbS;)Lbc;

    move-result-object v0

    .line 489
    invoke-virtual {v0, p1}, Lbc;->b(Laf;)V

    .line 490
    return-void
.end method

.method static synthetic a()[Lbf;
    .locals 1

    .prologue
    .line 14
    sget-object v0, LaX;->b:[Lbf;

    return-object v0
.end method
