.class public final LpY;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LpW;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, LpY;->a:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 756
    if-gez p1, :cond_0

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    iput p1, p0, LpY;->b:I

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LpY;->c:Ljava/util/ArrayList;

    .line 761
    new-array v0, p1, [B

    iput-object v0, p0, LpY;->e:[B

    .line 762
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 863
    iget-object v0, p0, LpY;->c:Ljava/util/ArrayList;

    new-instance v1, Lqy;

    iget-object v2, p0, LpY;->e:[B

    invoke-direct {v1, v2}, Lqy;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget v0, p0, LpY;->d:I

    iget-object v1, p0, LpY;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, LpY;->d:I

    .line 868
    iget v0, p0, LpY;->b:I

    iget v1, p0, LpY;->d:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 870
    new-array v0, v0, [B

    iput-object v0, p0, LpY;->e:[B

    .line 871
    const/4 v0, 0x0

    iput v0, p0, LpY;->f:I

    .line 872
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 879
    iget v0, p0, LpY;->f:I

    iget-object v1, p0, LpY;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 880
    iget v0, p0, LpY;->f:I

    if-lez v0, :cond_0

    .line 881
    iget v0, p0, LpY;->f:I

    new-array v0, v0, [B

    .line 882
    iget-object v1, p0, LpY;->e:[B

    iget v2, p0, LpY;->f:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    iget-object v1, p0, LpY;->c:Ljava/util/ArrayList;

    new-instance v2, Lqy;

    invoke-direct {v2, v0}, Lqy;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_0
    :goto_0
    iget v0, p0, LpY;->d:I

    iget v1, p0, LpY;->f:I

    add-int/2addr v0, v1

    iput v0, p0, LpY;->d:I

    .line 897
    iput v3, p0, LpY;->f:I

    .line 898
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, LpY;->c:Ljava/util/ArrayList;

    new-instance v1, Lqy;

    iget-object v2, p0, LpY;->e:[B

    invoke-direct {v1, v2}, Lqy;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v0, LpY;->a:[B

    iput-object v0, p0, LpY;->e:[B

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()LpW;
    .locals 1

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LpY;->c()V

    .line 800
    iget-object v0, p0, LpY;->c:Ljava/util/ArrayList;

    invoke-static {v0}, LpW;->a(Ljava/lang/Iterable;)LpW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget v0, p0, LpY;->d:I

    iget v1, p0, LpY;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 853
    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, LpY;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget v0, p0, LpY;->f:I

    iget-object v1, p0, LpY;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LpY;->a(I)V

    .line 769
    :cond_0
    iget-object v0, p0, LpY;->e:[B

    iget v1, p0, LpY;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LpY;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 4

    .prologue
    .line 774
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LpY;->e:[B

    array-length v0, v0

    iget v1, p0, LpY;->f:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 776
    iget-object v0, p0, LpY;->e:[B

    iget v1, p0, LpY;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget v0, p0, LpY;->f:I

    add-int/2addr v0, p3

    iput v0, p0, LpY;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :goto_0
    monitor-exit p0

    return-void

    .line 780
    :cond_0
    :try_start_1
    iget-object v0, p0, LpY;->e:[B

    array-length v0, v0

    iget v1, p0, LpY;->f:I

    sub-int/2addr v0, v1

    .line 781
    iget-object v1, p0, LpY;->e:[B

    iget v2, p0, LpY;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    add-int v1, p2, v0

    .line 783
    sub-int v0, p3, v0

    .line 786
    invoke-direct {p0, v0}, LpY;->a(I)V

    .line 787
    iget-object v2, p0, LpY;->e:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iput v0, p0, LpY;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
