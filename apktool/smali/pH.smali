.class public LpH;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:LpH;


# instance fields
.field private final a:LpL;

.field private final b:Landroid/content/Context;

.field private final c:Lpu;

.field private volatile d:LpM;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;LpL;Lpu;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LpH;->b:Landroid/content/Context;

    .line 143
    iput-object p2, p0, LpH;->a:LpL;

    .line 144
    sget-object v0, LpM;->a:LpM;

    iput-object v0, p0, LpH;->d:LpM;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LpH;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    iput-object p3, p0, LpH;->c:Lpu;

    .line 147
    iget-object v0, p0, LpH;->c:Lpu;

    new-instance v1, LpI;

    invoke-direct {v1, p0}, LpI;-><init>(LpH;)V

    invoke-virtual {v0, v1}, Lpu;->a(Lpv;)V

    .line 157
    iget-object v0, p0, LpH;->c:Lpu;

    new-instance v1, Lpq;

    iget-object v2, p0, LpH;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lpq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lpu;->a(Lpv;)V

    .line 158
    return-void
.end method

.method public static a(Landroid/content/Context;)LpH;
    .locals 4

    .prologue
    .line 166
    const-class v1, LpH;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, LpH;->f:LpH;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, LpJ;

    invoke-direct {v0}, LpJ;-><init>()V

    .line 175
    new-instance v2, LpH;

    new-instance v3, Lpu;

    invoke-direct {v3}, Lpu;-><init>()V

    invoke-direct {v2, p0, v0, v3}, LpH;-><init>(Landroid/content/Context;LpL;Lpu;)V

    sput-object v2, LpH;->f:LpH;

    .line 177
    :cond_0
    sget-object v0, LpH;->f:LpH;

    monitor-exit v1

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()LpM;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, LpH;->d:LpM;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-static {}, LpC;->a()LpC;

    move-result-object v2

    .line 259
    invoke-virtual {v2, p1}, LpC;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v2}, LpC;->d()Ljava/lang/String;

    move-result-object v3

    .line 261
    sget-object v0, LpK;->a:[I

    invoke-virtual {v2}, LpC;->b()LpD;

    move-result-object v1

    invoke-virtual {v1}, LpD;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 286
    :goto_1
    monitor-exit p0

    return v0

    .line 263
    :pswitch_0
    :try_start_1
    iget-object v0, p0, LpH;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 264
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lps;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lps;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :pswitch_1
    :try_start_2
    iget-object v0, p0, LpH;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v2}, LpC;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lps;->a(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Lps;->a()V

    goto :goto_2

    .line 276
    :cond_2
    invoke-virtual {v1}, Lps;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lps;->a(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Lps;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 286
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
