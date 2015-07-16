.class Lxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxw;


# instance fields
.field final synthetic a:LwY;

.field private final b:I

.field private final c:LxD;


# direct methods
.method constructor <init>(LwY;ILxD;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lxa;->a:LwY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p2, p0, Lxa;->b:I

    .line 201
    iput-object p3, p0, Lxa;->c:LxD;

    .line 202
    return-void
.end method


# virtual methods
.method public a()LxD;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lxa;->c:LxD;

    return-object v0
.end method

.method public a(LxD;)LxJ;
    .locals 3

    .prologue
    .line 213
    iget v0, p0, Lxa;->b:I

    iget-object v1, p0, Lxa;->a:LwY;

    invoke-static {v1}, LwY;->c(LwY;)Lxy;

    move-result-object v1

    invoke-virtual {v1}, Lxy;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 215
    new-instance v1, Lxa;

    iget-object v0, p0, Lxa;->a:LwY;

    iget v2, p0, Lxa;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lxa;-><init>(LwY;ILxD;)V

    .line 216
    iget-object v0, p0, Lxa;->a:LwY;

    invoke-static {v0}, LwY;->c(LwY;)Lxy;

    move-result-object v0

    invoke-virtual {v0}, Lxy;->u()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lxa;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    invoke-interface {v0, v1}, Lxv;->a(Lxw;)LxJ;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxa;->a:LwY;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LwY;->a(LxD;Z)LxJ;

    move-result-object v0

    goto :goto_0
.end method
