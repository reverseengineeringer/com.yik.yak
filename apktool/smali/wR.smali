.class LwR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxm;


# instance fields
.field final synthetic a:LwP;

.field private final b:I

.field private final c:Lxt;


# direct methods
.method constructor <init>(LwP;ILxt;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, LwR;->a:LwP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p2, p0, LwR;->b:I

    .line 201
    iput-object p3, p0, LwR;->c:Lxt;

    .line 202
    return-void
.end method


# virtual methods
.method public a()Lxt;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, LwR;->c:Lxt;

    return-object v0
.end method

.method public a(Lxt;)Lxz;
    .locals 3

    .prologue
    .line 213
    iget v0, p0, LwR;->b:I

    iget-object v1, p0, LwR;->a:LwP;

    invoke-static {v1}, LwP;->c(LwP;)Lxo;

    move-result-object v1

    invoke-virtual {v1}, Lxo;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 215
    new-instance v1, LwR;

    iget-object v0, p0, LwR;->a:LwP;

    iget v2, p0, LwR;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2, p1}, LwR;-><init>(LwP;ILxt;)V

    .line 216
    iget-object v0, p0, LwR;->a:LwP;

    invoke-static {v0}, LwP;->c(LwP;)Lxo;

    move-result-object v0

    invoke-virtual {v0}, Lxo;->u()Ljava/util/List;

    move-result-object v0

    iget v2, p0, LwR;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl;

    invoke-interface {v0, v1}, Lxl;->a(Lxm;)Lxz;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LwR;->a:LwP;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LwP;->a(Lxt;Z)Lxz;

    move-result-object v0

    goto :goto_0
.end method
