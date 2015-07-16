.class final LxU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:LxP;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private final d:[Ljava/io/File;

.field private final e:[Ljava/io/File;

.field private f:Z

.field private g:LxS;

.field private h:J


# direct methods
.method private constructor <init>(LxP;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 982
    iput-object p1, p0, LxU;->a:LxP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    iput-object p2, p0, LxU;->b:Ljava/lang/String;

    .line 985
    invoke-static {p1}, LxP;->e(LxP;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, LxU;->c:[J

    .line 986
    invoke-static {p1}, LxP;->e(LxP;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, LxU;->d:[Ljava/io/File;

    .line 987
    invoke-static {p1}, LxP;->e(LxP;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, LxU;->e:[Ljava/io/File;

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 992
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, LxP;->e(LxP;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 993
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    iget-object v3, p0, LxU;->d:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, LxP;->f(LxP;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 995
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget-object v3, p0, LxU;->e:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, LxP;->f(LxP;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(LxP;Ljava/lang/String;LxQ;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0, p1, p2}, LxU;-><init>(LxP;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(LxU;J)J
    .locals 1

    .prologue
    .line 965
    iput-wide p1, p0, LxU;->h:J

    return-wide p1
.end method

.method static synthetic a(LxU;)LxS;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, LxU;->g:LxS;

    return-object v0
.end method

.method static synthetic a(LxU;LxS;)LxS;
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, LxU;->g:LxS;

    return-object p1
.end method

.method static synthetic a(LxU;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0, p1}, LxU;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1003
    array-length v0, p1

    iget-object v1, p0, LxU;->a:LxP;

    invoke-static {v1}, LxP;->e(LxP;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1004
    invoke-direct {p0, p1}, LxU;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1008
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1009
    iget-object v1, p0, LxU;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, LxU;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1014
    :cond_1
    return-void
.end method

.method static synthetic a(LxU;Z)Z
    .locals 0

    .prologue
    .line 965
    iput-boolean p1, p0, LxU;->f:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 1024
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(LxU;)[J
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, LxU;->c:[J

    return-object v0
.end method

.method static synthetic c(LxU;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, LxU;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(LxU;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, LxU;->e:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(LxU;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, LxU;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(LxU;)Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, LxU;->f:Z

    return v0
.end method

.method static synthetic g(LxU;)J
    .locals 2

    .prologue
    .line 965
    iget-wide v0, p0, LxU;->h:J

    return-wide v0
.end method


# virtual methods
.method a()LxV;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 1033
    iget-object v1, p0, LxU;->a:LxP;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1035
    :cond_0
    iget-object v1, p0, LxU;->a:LxP;

    invoke-static {v1}, LxP;->e(LxP;)I

    move-result v1

    new-array v6, v1, [LKT;

    move v1, v0

    .line 1037
    :goto_0
    :try_start_0
    iget-object v2, p0, LxU;->a:LxP;

    invoke-static {v2}, LxP;->e(LxP;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1038
    iget-object v2, p0, LxU;->d:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-static {v2}, LKI;->a(Ljava/io/File;)LKT;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    new-instance v1, LxV;

    iget-object v2, p0, LxU;->a:LxP;

    iget-object v3, p0, LxU;->b:Ljava/lang/String;

    iget-wide v4, p0, LxU;->h:J

    iget-object v7, p0, LxU;->c:[J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, LxV;-><init>(LxP;Ljava/lang/String;J[LKT;[JLxQ;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :goto_1
    return-object v1

    .line 1043
    :goto_2
    iget-object v1, p0, LxU;->a:LxP;

    invoke-static {v1}, LxP;->e(LxP;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1044
    aget-object v1, v6, v0

    if-eqz v1, :cond_2

    .line 1045
    aget-object v1, v6, v0

    invoke-static {v1}, Lyi;->a(Ljava/io/Closeable;)V

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v9

    .line 1050
    goto :goto_1

    .line 1043
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method a(LKA;)V
    .locals 6

    .prologue
    .line 1018
    iget-object v1, p0, LxU;->c:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1019
    const/16 v3, 0x20

    invoke-interface {p1, v3}, LKA;->g(I)LKA;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LKA;->b(Ljava/lang/String;)LKA;

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    return-void
.end method
