.class public final Lvz;
.super LvT;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lwc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/String;

.field private k:Lwc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvz;->h:Ljava/util/Map;

    .line 44
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "alpha"

    sget-object v2, LvA;->a:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "pivotX"

    sget-object v2, LvA;->b:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "pivotY"

    sget-object v2, LvA;->c:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "translationX"

    sget-object v2, LvA;->d:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "translationY"

    sget-object v2, LvA;->e:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "rotation"

    sget-object v2, LvA;->f:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "rotationX"

    sget-object v2, LvA;->g:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "rotationY"

    sget-object v2, LvA;->h:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "scaleX"

    sget-object v2, LvA;->i:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "scaleY"

    sget-object v2, LvA;->j:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "scrollX"

    sget-object v2, LvA;->k:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "scrollY"

    sget-object v2, LvA;->l:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "x"

    sget-object v2, LvA;->m:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lvz;->h:Ljava/util/Map;

    const-string v1, "y"

    sget-object v2, LvA;->n:Lwc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, LvT;-><init>()V

    .line 151
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, LvT;-><init>()V

    .line 163
    iput-object p1, p0, Lvz;->i:Ljava/lang/Object;

    .line 164
    invoke-virtual {p0, p2}, Lvz;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lvz;

    invoke-direct {v0, p0, p1}, Lvz;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Lvz;->a([F)V

    .line 233
    return-object v0
.end method


# virtual methods
.method public synthetic a(J)Lvj;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lvz;->b(J)Lvz;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 385
    invoke-super {p0}, LvT;->a()V

    .line 386
    return-void
.end method

.method a(F)V
    .locals 4

    .prologue
    .line 491
    invoke-super {p0, p1}, LvT;->a(F)V

    .line 492
    iget-object v0, p0, Lvz;->f:[LvP;

    array-length v1, v0

    .line 493
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 494
    iget-object v2, p0, Lvz;->f:[LvP;

    aget-object v2, v2, v0

    iget-object v3, p0, Lvz;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, LvP;->b(Ljava/lang/Object;)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lvz;->f:[LvP;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lvz;->f:[LvP;

    aget-object v0, v0, v3

    .line 98
    invoke-virtual {v0}, LvP;->c()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p1}, LvP;->a(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lvz;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lvz;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    iput-object p1, p0, Lvz;->j:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Lvz;->e:Z

    .line 106
    return-void
.end method

.method public a(Lwc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lvz;->f:[LvP;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lvz;->f:[LvP;

    aget-object v0, v0, v3

    .line 120
    invoke-virtual {v0}, LvP;->c()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, p1}, LvP;->a(Lwc;)V

    .line 122
    iget-object v2, p0, Lvz;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lvz;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lvz;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v0, p0, Lvz;->k:Lwc;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lwc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvz;->j:Ljava/lang/String;

    .line 128
    :cond_1
    iput-object p1, p0, Lvz;->k:Lwc;

    .line 130
    iput-boolean v3, p0, Lvz;->e:Z

    .line 131
    return-void
.end method

.method public varargs a([F)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lvz;->f:[LvP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvz;->f:[LvP;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 348
    :cond_0
    iget-object v0, p0, Lvz;->k:Lwc;

    if-eqz v0, :cond_1

    .line 349
    new-array v0, v1, [LvP;

    iget-object v1, p0, Lvz;->k:Lwc;

    invoke-static {v1, p1}, LvP;->a(Lwc;[F)LvP;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lvz;->a([LvP;)V

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_1
    new-array v0, v1, [LvP;

    iget-object v1, p0, Lvz;->j:Ljava/lang/String;

    invoke-static {v1, p1}, LvP;->a(Ljava/lang/String;[F)LvP;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lvz;->a([LvP;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-super {p0, p1}, LvT;->a([F)V

    goto :goto_0
.end method

.method public b(J)Lvz;
    .locals 1

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, LvT;->c(J)LvT;

    .line 428
    return-object p0
.end method

.method public synthetic c(J)LvT;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lvz;->b(J)Lvz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lvj;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lvz;->e()Lvz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lvz;->e()Lvz;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 402
    iget-boolean v0, p0, Lvz;->e:Z

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lvz;->k:Lwc;

    if-nez v0, :cond_0

    sget-boolean v0, Lwf;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvz;->i:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lvz;->h:Ljava/util/Map;

    iget-object v1, p0, Lvz;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lvz;->h:Ljava/util/Map;

    iget-object v1, p0, Lvz;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc;

    invoke-virtual {p0, v0}, Lvz;->a(Lwc;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lvz;->f:[LvP;

    array-length v1, v0

    .line 409
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 410
    iget-object v2, p0, Lvz;->f:[LvP;

    aget-object v2, v2, v0

    iget-object v3, p0, Lvz;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, LvP;->a(Ljava/lang/Object;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-super {p0}, LvT;->d()V

    .line 414
    :cond_2
    return-void
.end method

.method public e()Lvz;
    .locals 1

    .prologue
    .line 500
    invoke-super {p0}, LvT;->f()LvT;

    move-result-object v0

    check-cast v0, Lvz;

    .line 501
    return-object v0
.end method

.method public synthetic f()LvT;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lvz;->e()Lvz;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvz;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v0, p0, Lvz;->f:[LvP;

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lvz;->f:[LvP;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvz;->f:[LvP;

    aget-object v2, v2, v0

    invoke-virtual {v2}, LvP;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-object v1
.end method
