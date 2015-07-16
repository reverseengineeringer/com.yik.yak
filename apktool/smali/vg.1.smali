.class public Lvg;
.super LuS;
.source "SourceFile"


# instance fields
.field private final a:LtX;

.field private final b:LtX;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;LtX;LtX;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;",
            "LtX;",
            "LtX;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, LuS;-><init>(Ljava/util/List;)V

    .line 72
    iput-object p2, p0, Lvg;->a:LtX;

    .line 73
    iput-object p3, p0, Lvg;->b:LtX;

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lvg;->d:[Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lvg;->c:Ljava/util/WeakHashMap;

    .line 76
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lvg;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    iget-object v3, p0, Lvg;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 85
    iget-object v0, p0, Lvg;->a:LtX;

    iget-object v3, p0, Lvg;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, LtX;->a(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lvg;->b:LtX;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lvg;->a:LtX;

    invoke-virtual {v0}, LtX;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 94
    const/4 v1, 0x1

    array-length v2, v0

    if-ne v1, v2, :cond_3

    .line 95
    aget-object v0, v0, v3

    .line 96
    iget-object v1, p0, Lvg;->b:LtX;

    invoke-virtual {v1, p1}, LtX;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    if-ne v0, v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz v0, :cond_2

    .line 103
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 104
    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 105
    check-cast v1, Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :cond_2
    instance-of v0, v2, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    instance-of v0, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lvg;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    :cond_3
    :goto_1
    iget-object v0, p0, Lvg;->a:LtX;

    invoke-virtual {v0, p1}, LtX;->a(Landroid/view/View;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_4
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    instance-of v1, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 110
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v2

    .line 111
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 125
    :cond_6
    iget-object v0, p0, Lvg;->d:[Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 126
    iget-object v0, p0, Lvg;->a:LtX;

    iget-object v1, p0, Lvg;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, LtX;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lvg;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_7
    iget-object v0, p0, Lvg;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, LuS;->b(Landroid/view/View;)V

    return-void
.end method
