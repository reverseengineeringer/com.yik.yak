.class public LuW;
.super LuZ;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/TextView;",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;",
            "Ljava/lang/String;",
            "Lve;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LuZ;-><init>(Ljava/util/List;Ljava/lang/String;Lve;Z)V

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LuW;->a:Ljava/util/Map;

    .line 476
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, LuW;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 483
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, LuW;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 487
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 491
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 492
    check-cast p1, Landroid/widget/TextView;

    .line 493
    new-instance v1, LuX;

    invoke-direct {v1, p0, p1}, LuX;-><init>(LuW;Landroid/view/View;)V

    .line 494
    iget-object v0, p0, LuW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 495
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 498
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 499
    iget-object v0, p0, LuW;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_1
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 472
    invoke-super {p0, p1}, LuZ;->b(Landroid/view/View;)V

    return-void
.end method
