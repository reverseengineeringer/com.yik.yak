.class LyE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxw;


# instance fields
.field final synthetic a:LyB;

.field private final b:I

.field private final c:LxD;

.field private d:I


# direct methods
.method constructor <init>(LyB;ILxD;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, LyE;->a:LyB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput p2, p0, LyE;->b:I

    .line 728
    iput-object p3, p0, LyE;->c:LxD;

    .line 729
    return-void
.end method


# virtual methods
.method public a()LxD;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, LyE;->c:LxD;

    return-object v0
.end method

.method public a(LxD;)LxJ;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 740
    iget v0, p0, LyE;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LyE;->d:I

    .line 742
    iget v0, p0, LyE;->b:I

    if-lez v0, :cond_2

    .line 743
    iget-object v0, p0, LyE;->a:LyB;

    iget-object v0, v0, LyB;->a:Lxy;

    invoke-virtual {v0}, Lxy;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, LyE;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 744
    invoke-virtual {p0}, LyE;->b()Lxi;

    move-result-object v1

    invoke-virtual {v1}, Lxi;->c()LxN;

    move-result-object v1

    invoke-virtual {v1}, LxN;->a()LwM;

    move-result-object v1

    .line 747
    invoke-virtual {p1}, LxD;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LwM;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {p1}, LxD;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lyi;->a(Ljava/net/URL;)I

    move-result v2

    invoke-virtual {v1}, LwM;->b()I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 749
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_1
    iget v1, p0, LyE;->d:I

    if-le v1, v4, :cond_2

    .line 755
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_2
    iget v0, p0, LyE;->b:I

    iget-object v1, p0, LyE;->a:LyB;

    iget-object v1, v1, LyB;->a:Lxy;

    invoke-virtual {v1}, Lxy;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 762
    new-instance v2, LyE;

    iget-object v0, p0, LyE;->a:LyB;

    iget v1, p0, LyE;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v0, v1, p1}, LyE;-><init>(LyB;ILxD;)V

    .line 763
    iget-object v0, p0, LyE;->a:LyB;

    iget-object v0, v0, LyB;->a:Lxy;

    invoke-virtual {v0}, Lxy;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, LyE;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 764
    invoke-interface {v0, v2}, Lxv;->a(Lxw;)LxJ;

    move-result-object v1

    .line 767
    iget v2, v2, LyE;->d:I

    if-eq v2, v4, :cond_3

    .line 768
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    .line 784
    :goto_0
    return-object v0

    .line 775
    :cond_4
    iget-object v0, p0, LyE;->a:LyB;

    invoke-static {v0}, LyB;->b(LyB;)LyP;

    move-result-object v0

    invoke-interface {v0, p1}, LyP;->a(LxD;)V

    .line 777
    iget-object v0, p0, LyE;->a:LyB;

    invoke-virtual {v0}, LyB;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, LxD;->f()LxG;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, LyE;->a:LyB;

    invoke-static {v0}, LyB;->b(LyB;)LyP;

    move-result-object v0

    invoke-virtual {p1}, LxD;->f()LxG;

    move-result-object v1

    invoke-virtual {v1}, LxG;->b()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, LyP;->a(LxD;J)LKS;

    move-result-object v0

    .line 779
    invoke-static {v0}, LKI;->a(LKS;)LKA;

    move-result-object v0

    .line 780
    invoke-virtual {p1}, LxD;->f()LxG;

    move-result-object v1

    invoke-virtual {v1, v0}, LxG;->a(LKA;)V

    .line 781
    invoke-interface {v0}, LKA;->close()V

    .line 784
    :cond_5
    iget-object v0, p0, LyE;->a:LyB;

    invoke-static {v0}, LyB;->c(LyB;)LxJ;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lxi;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, LyE;->a:LyB;

    invoke-static {v0}, LyB;->a(LyB;)Lxi;

    move-result-object v0

    return-object v0
.end method
