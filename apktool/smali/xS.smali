.class public final LxS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:LxP;

.field private final b:LxU;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(LxP;LxU;)V
    .locals 1

    .prologue
    .line 817
    iput-object p1, p0, LxS;->a:LxP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p2, p0, LxS;->b:LxU;

    .line 819
    invoke-static {p2}, LxU;->f(LxU;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, LxS;->c:[Z

    .line 820
    return-void

    .line 819
    :cond_0
    invoke-static {p1}, LxP;->e(LxP;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(LxP;LxU;LxQ;)V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0, p1, p2}, LxS;-><init>(LxP;LxU;)V

    return-void
.end method

.method static synthetic a(LxS;)LxU;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, LxS;->b:LxU;

    return-object v0
.end method

.method static synthetic a(LxS;Z)Z
    .locals 0

    .prologue
    .line 811
    iput-boolean p1, p0, LxS;->d:Z

    return p1
.end method

.method static synthetic b(LxS;)[Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, LxS;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)LKS;
    .locals 3

    .prologue
    .line 859
    iget-object v2, p0, LxS;->a:LxP;

    monitor-enter v2

    .line 860
    :try_start_0
    iget-object v0, p0, LxS;->b:LxU;

    invoke-static {v0}, LxU;->a(LxU;)LxS;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 863
    :cond_0
    :try_start_1
    iget-object v0, p0, LxS;->b:LxU;

    invoke-static {v0}, LxU;->f(LxU;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iget-object v0, p0, LxS;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 866
    :cond_1
    iget-object v0, p0, LxS;->b:LxU;

    invoke-static {v0}, LxU;->d(LxU;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :try_start_2
    invoke-static {v0}, LKI;->b(Ljava/io/File;)LKS;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 880
    :goto_0
    :try_start_3
    new-instance v0, LxT;

    invoke-direct {v0, p0, v1}, LxT;-><init>(LxS;LKS;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 872
    :catch_0
    move-exception v1

    iget-object v1, p0, LxS;->a:LxP;

    invoke-static {v1}, LxP;->f(LxP;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    :try_start_4
    invoke-static {v0}, LKI;->b(Ljava/io/File;)LKS;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 878
    goto :goto_0

    .line 877
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, LxP;->c()LKS;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 896
    iget-object v1, p0, LxS;->a:LxP;

    monitor-enter v1

    .line 897
    :try_start_0
    iget-boolean v0, p0, LxS;->d:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, LxS;->a:LxP;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, LxP;->a(LxP;LxS;Z)V

    .line 899
    iget-object v0, p0, LxS;->a:LxP;

    iget-object v2, p0, LxS;->b:LxU;

    invoke-static {v0, v2}, LxP;->a(LxP;LxU;)Z

    .line 903
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LxS;->e:Z

    .line 904
    monitor-exit v1

    .line 905
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, LxS;->a:LxP;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, LxP;->a(LxP;LxS;Z)V

    goto :goto_0

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 912
    iget-object v1, p0, LxS;->a:LxP;

    monitor-enter v1

    .line 913
    :try_start_0
    iget-object v0, p0, LxS;->a:LxP;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, LxP;->a(LxP;LxS;Z)V

    .line 914
    monitor-exit v1

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
