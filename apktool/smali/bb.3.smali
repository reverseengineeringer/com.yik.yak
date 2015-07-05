.class Lbb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LbX;

.field private static final b:[Lbj;

.field private static final c:[Lbm;

.field private static final d:[Lbi;

.field private static final e:[Lbd;

.field private static final f:[Lbe;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v0, LbX;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, LbX;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lbb;->a:LbX;

    .line 24
    new-array v0, v3, [Lbj;

    sput-object v0, Lbb;->b:[Lbj;

    .line 25
    new-array v0, v3, [Lbm;

    sput-object v0, Lbb;->c:[Lbm;

    .line 26
    new-array v0, v3, [Lbi;

    sput-object v0, Lbb;->d:[Lbi;

    .line 27
    new-array v0, v3, [Lbd;

    sput-object v0, Lbb;->e:[Lbd;

    .line 29
    new-array v0, v3, [Lbe;

    sput-object v0, Lbb;->f:[Lbe;

    return-void
.end method

.method private static a(LbW;)Lbg;
    .locals 7

    .prologue
    .line 418
    iget-object v0, p0, LbW;->b:LbX;

    if-eqz v0, :cond_0

    iget-object v0, p0, LbW;->b:LbX;

    .line 420
    :goto_0
    new-instance v1, Lbl;

    invoke-direct {v1, v0}, Lbl;-><init>(LbX;)V

    .line 422
    iget-object v0, p0, LbW;->c:[LbY;

    invoke-static {v0}, Lbb;->a([LbY;)Lbk;

    move-result-object v0

    .line 423
    iget-object v2, p0, LbW;->d:[LbU;

    invoke-static {v2}, Lbb;->a([LbU;)Lbk;

    move-result-object v2

    .line 426
    new-instance v3, Lbh;

    invoke-direct {v3, v1, v0, v2}, Lbh;-><init>(Lbl;Lbk;Lbk;)V

    .line 428
    iget-object v0, p0, LbW;->e:[LbV;

    invoke-static {v0}, Lbb;->a([LbV;)Lbk;

    move-result-object v0

    .line 431
    new-instance v5, Lbc;

    invoke-direct {v5, v3, v0}, Lbc;-><init>(Lbh;Lbk;)V

    .line 433
    new-instance v6, Lbf;

    invoke-direct {v6}, Lbf;-><init>()V

    .line 435
    new-instance v1, Lbg;

    iget-wide v2, p0, LbW;->a:J

    const-string v4, "ndk-crash"

    invoke-direct/range {v1 .. v6}, Lbg;-><init>(JLjava/lang/String;Lbc;Lbf;)V

    return-object v1

    .line 418
    :cond_0
    sget-object v0, Lbb;->a:LbX;

    goto :goto_0
.end method

.method private static a([LbU;)Lbk;
    .locals 4

    .prologue
    .line 460
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbd;

    .line 462
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 463
    new-instance v2, Lbd;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lbd;-><init>(LbU;)V

    aput-object v2, v0, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_0
    sget-object v0, Lbb;->e:[Lbd;

    goto :goto_0

    .line 465
    :cond_1
    new-instance v1, Lbk;

    invoke-direct {v1, v0}, Lbk;-><init>([Lbj;)V

    return-object v1
.end method

.method private static a([LbV;)Lbk;
    .locals 4

    .prologue
    .line 470
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbe;

    .line 473
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 474
    new-instance v2, Lbe;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lbe;-><init>(LbV;)V

    aput-object v2, v0, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    :cond_0
    sget-object v0, Lbb;->f:[Lbe;

    goto :goto_0

    .line 476
    :cond_1
    new-instance v1, Lbk;

    invoke-direct {v1, v0}, Lbk;-><init>([Lbj;)V

    return-object v1
.end method

.method private static a([LbY;)Lbk;
    .locals 5

    .prologue
    .line 440
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbm;

    .line 442
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 443
    aget-object v2, p0, v1

    .line 444
    new-instance v3, Lbm;

    iget-object v4, v2, LbY;->b:[LbZ;

    invoke-static {v4}, Lbb;->a([LbZ;)Lbk;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lbm;-><init>(LbY;Lbk;)V

    aput-object v3, v0, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_0
    sget-object v0, Lbb;->c:[Lbm;

    goto :goto_0

    .line 447
    :cond_1
    new-instance v1, Lbk;

    invoke-direct {v1, v0}, Lbk;-><init>([Lbj;)V

    return-object v1
.end method

.method private static a([LbZ;)Lbk;
    .locals 4

    .prologue
    .line 451
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbi;

    .line 453
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 454
    new-instance v2, Lbi;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lbi;-><init>(LbZ;)V

    aput-object v2, v0, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_0
    sget-object v0, Lbb;->d:[Lbi;

    goto :goto_0

    .line 456
    :cond_1
    new-instance v1, Lbk;

    invoke-direct {v1, v0}, Lbk;-><init>([Lbj;)V

    return-object v1
.end method

.method public static a(LbW;Laj;)V
    .locals 1

    .prologue
    .line 488
    invoke-static {p0}, Lbb;->a(LbW;)Lbg;

    move-result-object v0

    .line 489
    invoke-virtual {v0, p1}, Lbg;->b(Laj;)V

    .line 490
    return-void
.end method

.method static synthetic a()[Lbj;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lbb;->b:[Lbj;

    return-object v0
.end method
