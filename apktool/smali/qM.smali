.class LqM;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LqM",
            "<TK;TV;>.qR;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private volatile e:LqT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqM",
            "<TK;TV;>.qT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 126
    iput p1, p0, LqM;->a:I

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LqM;->b:Ljava/util/List;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LqM;->c:Ljava/util/Map;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(ILqN;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, LqM;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 293
    if-ltz v1, :cond_1

    .line 294
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqR;

    invoke-virtual {v0}, LqR;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 295
    if-lez v0, :cond_0

    .line 296
    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    .line 313
    :goto_0
    return v0

    .line 297
    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    .line 298
    goto :goto_0

    .line 302
    :cond_1
    :goto_1
    if-gt v2, v1, :cond_4

    .line 303
    add-int v0, v2, v1

    div-int/lit8 v3, v0, 0x2

    .line 304
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqR;

    invoke-virtual {v0}, LqR;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 305
    if-gez v0, :cond_2

    .line 306
    add-int/lit8 v0, v3, -0x1

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 312
    goto :goto_1

    .line 307
    :cond_2
    if-lez v0, :cond_3

    .line 308
    add-int/lit8 v0, v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    .line 310
    goto :goto_0

    .line 313
    :cond_4
    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(LqM;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, LqM;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a(I)LqM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lqh",
            "<TFieldDescriptorType;>;>(I)",
            "LqM",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, LqN;

    invoke-direct {v0, p0}, LqN;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(LqM;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, LqM;->e()V

    return-void
.end method

.method static synthetic b(LqM;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    return-object v0
.end method

.method private c(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, LqM;->e()V

    .line 269
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqR;

    invoke-virtual {v0}, LqR;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 270
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0}, LqM;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 275
    iget-object v3, p0, LqM;->b:Ljava/util/List;

    new-instance v4, LqR;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v0}, LqR;-><init>(LqM;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 278
    :cond_0
    return-object v1
.end method

.method static synthetic c(LqM;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, LqM;->d:Z

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 339
    :cond_0
    return-void
.end method

.method private f()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, LqM;->e()V

    .line 350
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, LqM;->c:Ljava/util/Map;

    .line 353
    :cond_0
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, LqM;->e()V

    .line 362
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LqM;->b:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, LqM;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LqM;->b:Ljava/util/List;

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, LqM;->e()V

    .line 210
    invoke-direct {p0, p1}, LqM;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 211
    if-ltz v0, :cond_0

    .line 213
    iget-object v1, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqR;

    invoke-virtual {v0, p2}, LqR;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 215
    :cond_0
    invoke-direct {p0}, LqM;->g()V

    .line 216
    add-int/lit8 v0, v0, 0x1

    neg-int v1, v0

    .line 217
    iget v0, p0, LqM;->a:I

    if-lt v1, v0, :cond_1

    .line 219
    invoke-direct {p0}, LqM;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, LqM;->a:I

    if-ne v0, v2, :cond_2

    .line 224
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    iget v2, p0, LqM;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqR;

    .line 225
    invoke-direct {p0}, LqM;->f()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v0}, LqR;->a()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v0}, LqR;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_2
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    new-instance v2, LqR;

    invoke-direct {v2, p0, p1, p2}, LqR;-><init>(LqM;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, LqM;->d:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LqM;->c:Ljava/util/Map;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, LqM;->d:Z

    .line 143
    :cond_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, LqM;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, LqM;->e()V

    .line 235
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    :cond_0
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Comparable;

    .line 187
    invoke-direct {p0, p1}, LqM;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LqO;->a()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, LqM;->e:LqT;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, LqT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LqT;-><init>(LqM;LqN;)V

    iput-object v0, p0, LqM;->e:LqT;

    .line 328
    :cond_0
    iget-object v0, p0, LqM;->e:LqT;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Comparable;

    .line 200
    invoke-direct {p0, p1}, LqM;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 201
    if-ltz v0, :cond_0

    .line 202
    iget-object v1, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqR;

    invoke-virtual {v0}, LqR;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, LqM;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, LqM;->e()V

    .line 253
    check-cast p1, Ljava/lang/Comparable;

    .line 254
    invoke-direct {p0, p1}, LqM;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 255
    if-ltz v0, :cond_0

    .line 256
    invoke-direct {p0, v0}, LqM;->c(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, LqM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LqM;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
