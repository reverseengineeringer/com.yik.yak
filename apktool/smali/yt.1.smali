.class Lyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKl;


# instance fields
.field a:Z

.field final synthetic b:LJT;

.field final synthetic c:Lyc;

.field final synthetic d:LJS;

.field final synthetic e:Lyr;


# direct methods
.method constructor <init>(Lyr;LJT;Lyc;LJS;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lyt;->e:Lyr;

    iput-object p2, p0, Lyt;->b:LJT;

    iput-object p3, p0, Lyt;->c:Lyc;

    iput-object p4, p0, Lyt;->d:LJS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJP;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 829
    :try_start_0
    iget-object v2, p0, Lyt;->b:LJT;

    invoke-interface {v2, p1, p2, p3}, LJT;->a(LJP;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 838
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 839
    iget-boolean v2, p0, Lyt;->a:Z

    if-nez v2, :cond_0

    .line 840
    iput-boolean v3, p0, Lyt;->a:Z

    .line 841
    iget-object v2, p0, Lyt;->d:LJS;

    invoke-interface {v2}, LJS;->close()V

    :cond_0
    move-wide v4, v0

    .line 848
    :goto_0
    return-wide v4

    .line 830
    :catch_0
    move-exception v0

    .line 831
    iget-boolean v1, p0, Lyt;->a:Z

    if-nez v1, :cond_1

    .line 832
    iput-boolean v3, p0, Lyt;->a:Z

    .line 833
    iget-object v1, p0, Lyt;->c:Lyc;

    invoke-interface {v1}, Lyc;->a()V

    .line 835
    :cond_1
    throw v0

    .line 846
    :cond_2
    iget-object v0, p0, Lyt;->d:LJS;

    invoke-interface {v0}, LJS;->d()LJP;

    move-result-object v1

    invoke-virtual {p1}, LJP;->c()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LJP;->a(LJP;JJ)LJP;

    .line 847
    iget-object v0, p0, Lyt;->d:LJS;

    invoke-interface {v0}, LJS;->u()LJS;

    goto :goto_0
.end method

.method public b()LKm;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lyt;->b:LJT;

    invoke-interface {v0}, LJT;->b()LKm;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 856
    iget-boolean v0, p0, Lyt;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 857
    invoke-static {p0, v0, v1}, LxY;->a(LKl;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyt;->a:Z

    .line 859
    iget-object v0, p0, Lyt;->c:Lyc;

    invoke-interface {v0}, Lyc;->a()V

    .line 861
    :cond_0
    iget-object v0, p0, Lyt;->b:LJT;

    invoke-interface {v0}, LJT;->close()V

    .line 862
    return-void
.end method
