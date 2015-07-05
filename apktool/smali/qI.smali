.class LqI;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:LqD;

.field private b:LqG;

.field private c:Lqv;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(LqD;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, LqI;->a:LqD;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 807
    invoke-direct {p0}, LqI;->a()V

    .line 808
    return-void
.end method

.method private a([BII)I
    .locals 5

    .prologue
    .line 841
    move v1, p3

    move v0, p2

    .line 842
    :goto_0
    if-lez v1, :cond_2

    .line 843
    invoke-direct {p0}, LqI;->b()V

    .line 844
    iget-object v2, p0, LqI;->c:Lqv;

    if-nez v2, :cond_0

    .line 845
    if-ne v1, p3, :cond_2

    .line 847
    const/4 v0, -0x1

    .line 863
    :goto_1
    return v0

    .line 852
    :cond_0
    iget v2, p0, LqI;->d:I

    iget v3, p0, LqI;->e:I

    sub-int/2addr v2, v3

    .line 853
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 854
    if-eqz p1, :cond_1

    .line 855
    iget-object v3, p0, LqI;->c:Lqv;

    iget v4, p0, LqI;->e:I

    invoke-virtual {v3, p1, v4, v0, v2}, Lqv;->b([BIII)V

    .line 856
    add-int/2addr v0, v2

    .line 858
    :cond_1
    iget v3, p0, LqI;->e:I

    add-int/2addr v3, v2

    iput v3, p0, LqI;->e:I

    .line 859
    sub-int/2addr v1, v2

    .line 860
    goto :goto_0

    .line 863
    :cond_2
    sub-int v0, p3, v1

    goto :goto_1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 902
    new-instance v0, LqG;

    iget-object v1, p0, LqI;->a:LqD;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LqG;-><init>(LpT;LqE;)V

    iput-object v0, p0, LqI;->b:LqG;

    .line 903
    iget-object v0, p0, LqI;->b:LqG;

    invoke-virtual {v0}, LqG;->a()Lqv;

    move-result-object v0

    iput-object v0, p0, LqI;->c:Lqv;

    .line 904
    iget-object v0, p0, LqI;->c:Lqv;

    invoke-virtual {v0}, Lqv;->a()I

    move-result v0

    iput v0, p0, LqI;->d:I

    .line 905
    iput v3, p0, LqI;->e:I

    .line 906
    iput v3, p0, LqI;->f:I

    .line 907
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 915
    iget-object v0, p0, LqI;->c:Lqv;

    if-eqz v0, :cond_0

    iget v0, p0, LqI;->e:I

    iget v1, p0, LqI;->d:I

    if-ne v0, v1, :cond_0

    .line 918
    iget v0, p0, LqI;->f:I

    iget v1, p0, LqI;->d:I

    add-int/2addr v0, v1

    iput v0, p0, LqI;->f:I

    .line 919
    iput v2, p0, LqI;->e:I

    .line 920
    iget-object v0, p0, LqI;->b:LqG;

    invoke-virtual {v0}, LqG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, LqI;->b:LqG;

    invoke-virtual {v0}, LqG;->a()Lqv;

    move-result-object v0

    iput-object v0, p0, LqI;->c:Lqv;

    .line 922
    iget-object v0, p0, LqI;->c:Lqv;

    invoke-virtual {v0}, Lqv;->a()I

    move-result v0

    iput v0, p0, LqI;->d:I

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, LqI;->c:Lqv;

    .line 925
    iput v2, p0, LqI;->d:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 878
    iget v0, p0, LqI;->f:I

    iget v1, p0, LqI;->e:I

    add-int/2addr v0, v1

    .line 879
    iget-object v1, p0, LqI;->a:LqD;

    invoke-virtual {v1}, LqD;->a()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public mark(I)V
    .locals 2

    .prologue
    .line 890
    iget v0, p0, LqI;->f:I

    iget v1, p0, LqI;->e:I

    add-int/2addr v0, v1

    iput v0, p0, LqI;->g:I

    .line 891
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 868
    invoke-direct {p0}, LqI;->b()V

    .line 869
    iget-object v0, p0, LqI;->c:Lqv;

    if-nez v0, :cond_0

    .line 870
    const/4 v0, -0x1

    .line 872
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LqI;->c:Lqv;

    iget v1, p0, LqI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LqI;->e:I

    invoke-virtual {v0, v1}, Lqv;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 812
    if-nez p1, :cond_0

    .line 813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 814
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    .line 815
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 817
    :cond_2
    invoke-direct {p0, p1, p2, p3}, LqI;->a([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LqI;->a()V

    .line 897
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, LqI;->g:I

    invoke-direct {p0, v0, v1, v2}, LqI;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    monitor-exit p0

    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5

    .prologue
    const-wide/32 v0, 0x7fffffff

    .line 822
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 823
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 824
    :cond_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 827
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2}, LqI;->a([BII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
