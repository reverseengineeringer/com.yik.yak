.class public final LxV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:LxP;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[LKT;

.field private final e:[J


# direct methods
.method private constructor <init>(LxP;Ljava/lang/String;J[LKT;[J)V
    .locals 1

    .prologue
    .line 752
    iput-object p1, p0, LxV;->a:LxP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p2, p0, LxV;->b:Ljava/lang/String;

    .line 754
    iput-wide p3, p0, LxV;->c:J

    .line 755
    iput-object p5, p0, LxV;->d:[LKT;

    .line 756
    iput-object p6, p0, LxV;->e:[J

    .line 757
    return-void
.end method

.method synthetic constructor <init>(LxP;Ljava/lang/String;J[LKT;[JLxQ;)V
    .locals 1

    .prologue
    .line 746
    invoke-direct/range {p0 .. p6}, LxV;-><init>(LxP;Ljava/lang/String;J[LKT;[J)V

    return-void
.end method


# virtual methods
.method public a(I)LKT;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, LxV;->d:[LKT;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()LxS;
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, LxV;->a:LxP;

    iget-object v1, p0, LxV;->b:Ljava/lang/String;

    iget-wide v2, p0, LxV;->c:J

    invoke-static {v0, v1, v2, v3}, LxP;->a(LxP;Ljava/lang/String;J)LxS;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 788
    iget-object v1, p0, LxV;->d:[LKT;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 789
    invoke-static {v3}, Lyi;->a(Ljava/io/Closeable;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method
