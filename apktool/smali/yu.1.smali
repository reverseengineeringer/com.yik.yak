.class Lyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxm;


# instance fields
.field final synthetic a:Lyr;

.field private final b:I

.field private final c:Lxt;

.field private d:I


# direct methods
.method constructor <init>(Lyr;ILxt;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lyu;->a:Lyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput p2, p0, Lyu;->b:I

    .line 728
    iput-object p3, p0, Lyu;->c:Lxt;

    .line 729
    return-void
.end method


# virtual methods
.method public a()Lxt;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lyu;->c:Lxt;

    return-object v0
.end method

.method public a(Lxt;)Lxz;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 740
    iget v0, p0, Lyu;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyu;->d:I

    .line 742
    iget v0, p0, Lyu;->b:I

    if-lez v0, :cond_2

    .line 743
    iget-object v0, p0, Lyu;->a:Lyr;

    iget-object v0, v0, Lyr;->a:Lxo;

    invoke-virtual {v0}, Lxo;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lyu;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl;

    .line 744
    invoke-virtual {p0}, Lyu;->b()LwZ;

    move-result-object v1

    invoke-virtual {v1}, LwZ;->c()LxD;

    move-result-object v1

    invoke-virtual {v1}, LxD;->a()LwD;

    move-result-object v1

    .line 747
    invoke-virtual {p1}, Lxt;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LwD;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {p1}, Lxt;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, LxY;->a(Ljava/net/URL;)I

    move-result v2

    invoke-virtual {v1}, LwD;->b()I

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
    iget v1, p0, Lyu;->d:I

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
    iget v0, p0, Lyu;->b:I

    iget-object v1, p0, Lyu;->a:Lyr;

    iget-object v1, v1, Lyr;->a:Lxo;

    invoke-virtual {v1}, Lxo;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 762
    new-instance v2, Lyu;

    iget-object v0, p0, Lyu;->a:Lyr;

    iget v1, p0, Lyu;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v0, v1, p1}, Lyu;-><init>(Lyr;ILxt;)V

    .line 763
    iget-object v0, p0, Lyu;->a:Lyr;

    iget-object v0, v0, Lyr;->a:Lxo;

    invoke-virtual {v0}, Lxo;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lyu;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl;

    .line 764
    invoke-interface {v0, v2}, Lxl;->a(Lxm;)Lxz;

    move-result-object v1

    .line 767
    iget v2, v2, Lyu;->d:I

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
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->b(Lyr;)LyF;

    move-result-object v0

    invoke-interface {v0, p1}, LyF;->a(Lxt;)V

    .line 777
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-virtual {v0}, Lyr;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lxt;->f()Lxw;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->b(Lyr;)LyF;

    move-result-object v0

    invoke-virtual {p1}, Lxt;->f()Lxw;

    move-result-object v1

    invoke-virtual {v1}, Lxw;->b()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, LyF;->a(Lxt;J)LKk;

    move-result-object v0

    .line 779
    invoke-static {v0}, LKa;->a(LKk;)LJS;

    move-result-object v0

    .line 780
    invoke-virtual {p1}, Lxt;->f()Lxw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxw;->a(LJS;)V

    .line 781
    invoke-interface {v0}, LJS;->close()V

    .line 784
    :cond_5
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->c(Lyr;)Lxz;

    move-result-object v0

    goto :goto_0
.end method

.method public b()LwZ;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lyu;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)LwZ;

    move-result-object v0

    return-object v0
.end method
