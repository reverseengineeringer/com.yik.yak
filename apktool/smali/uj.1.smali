.class Luj;
.super LuC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LuC",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "LuS;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lul;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, LuC;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Luj;->a:Landroid/os/Handler;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luj;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Luj;->c:Ljava/util/Set;

    .line 29
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "LuS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v2, p0, Luj;->c:Ljava/util/Set;

    monitor-enter v2

    .line 120
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 122
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuS;

    .line 123
    new-instance v4, Lul;

    iget-object v5, p0, Luj;->a:Landroid/os/Handler;

    invoke-direct {v4, p1, v0, v5}, Lul;-><init>(Landroid/view/View;LuS;Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Luj;->c:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_0
    monitor-exit v2

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Luj;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Luj;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Luj;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Luj;->d()V

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Luj;->a:Landroid/os/Handler;

    new-instance v1, Luk;

    invoke-direct {v1, p0}, Luk;-><init>(Luj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p0}, Luj;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 102
    iget-object v4, p0, Luj;->b:Ljava/util/Map;

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v0, p0, Luj;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    iget-object v1, p0, Luj;->b:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0, v3, v0}, Luj;->a(Landroid/view/View;Ljava/util/List;)V

    .line 111
    :cond_1
    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, v3, v1}, Luj;->a(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 115
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, LuC;->b(Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Luj;->c()V

    .line 38
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Luj;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "LuS;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Luj;->c:Ljava/util/Set;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Luj;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lul;

    .line 68
    invoke-virtual {v0}, Lul;->a()V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Luj;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 71
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v1, p0, Luj;->b:Ljava/util/Map;

    monitor-enter v1

    .line 74
    :try_start_2
    iget-object v0, p0, Luj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Luj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    invoke-direct {p0}, Luj;->c()V

    .line 79
    return-void

    .line 76
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, LuC;->a(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Luj;->a(Landroid/app/Activity;)V

    return-void
.end method
