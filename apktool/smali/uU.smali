.class public LuU;
.super LuZ;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "LuV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;Lve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;I",
            "Ljava/lang/String;",
            "Lve;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, LuZ;-><init>(Ljava/util/List;Ljava/lang/String;Lve;Z)V

    .line 360
    iput p2, p0, LuU;->a:I

    .line 361
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LuU;->b:Ljava/util/WeakHashMap;

    .line 362
    return-void
.end method

.method static synthetic a(LuU;)I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, LuU;->a:I

    return v0
.end method

.method private d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 407
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 408
    const-string v2, "getAccessibilityDelegate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 409
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 415
    :goto_0
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, LuU;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuV;

    .line 369
    invoke-direct {p0, v1}, LuU;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    .line 370
    if-ne v2, v0, :cond_1

    .line 371
    invoke-virtual {v0}, LuV;->a()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 372
    :cond_1
    instance-of v1, v2, LuV;

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 373
    check-cast v1, LuV;

    .line 374
    invoke-virtual {v1, v0}, LuV;->a(LuV;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, LuU;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 381
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 385
    invoke-direct {p0, p1}, LuU;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    .line 386
    instance-of v0, v1, LuV;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 387
    check-cast v0, LuV;

    .line 388
    invoke-virtual {p0}, LuU;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LuV;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v0, LuV;

    invoke-direct {v0, p0, v1}, LuV;-><init>(LuU;Landroid/view/View$AccessibilityDelegate;)V

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 396
    iget-object v1, p0, LuU;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 357
    invoke-super {p0, p1}, LuZ;->b(Landroid/view/View;)V

    return-void
.end method
