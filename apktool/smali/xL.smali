.class public final LxL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:LxF;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[LKl;

.field private final e:[J


# direct methods
.method private constructor <init>(LxF;Ljava/lang/String;J[LKl;[J)V
    .locals 1

    .prologue
    .line 752
    iput-object p1, p0, LxL;->a:LxF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p2, p0, LxL;->b:Ljava/lang/String;

    .line 754
    iput-wide p3, p0, LxL;->c:J

    .line 755
    iput-object p5, p0, LxL;->d:[LKl;

    .line 756
    iput-object p6, p0, LxL;->e:[J

    .line 757
    return-void
.end method

.method synthetic constructor <init>(LxF;Ljava/lang/String;J[LKl;[JLxG;)V
    .locals 1

    .prologue
    .line 746
    invoke-direct/range {p0 .. p6}, LxL;-><init>(LxF;Ljava/lang/String;J[LKl;[J)V

    return-void
.end method


# virtual methods
.method public a(I)LKl;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, LxL;->d:[LKl;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()LxI;
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, LxL;->a:LxF;

    iget-object v1, p0, LxL;->b:Ljava/lang/String;

    iget-wide v2, p0, LxL;->c:J

    invoke-static {v0, v1, v2, v3}, LxF;->a(LxF;Ljava/lang/String;J)LxI;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 788
    iget-object v1, p0, LxL;->d:[LKl;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 789
    invoke-static {v3}, LxY;->a(Ljava/io/Closeable;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method
