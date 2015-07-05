.class public LpE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:LpE;


# instance fields
.field private final a:LpI;

.field private final b:Landroid/content/Context;

.field private final c:Lpr;

.field private volatile d:LpJ;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lpp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;LpI;Lpr;)V
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

    iput-object v0, p0, LpE;->b:Landroid/content/Context;

    .line 143
    iput-object p2, p0, LpE;->a:LpI;

    .line 144
    sget-object v0, LpJ;->a:LpJ;

    iput-object v0, p0, LpE;->d:LpJ;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LpE;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    iput-object p3, p0, LpE;->c:Lpr;

    .line 147
    iget-object v0, p0, LpE;->c:Lpr;

    new-instance v1, LpF;

    invoke-direct {v1, p0}, LpF;-><init>(LpE;)V

    invoke-virtual {v0, v1}, Lpr;->a(Lps;)V

    .line 157
    iget-object v0, p0, LpE;->c:Lpr;

    new-instance v1, Lpn;

    iget-object v2, p0, LpE;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lpn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lpr;->a(Lps;)V

    .line 158
    return-void
.end method

.method public static a(Landroid/content/Context;)LpE;
    .locals 4

    .prologue
    .line 166
    const-class v1, LpE;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, LpE;->f:LpE;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, LpG;

    invoke-direct {v0}, LpG;-><init>()V

    .line 175
    new-instance v2, LpE;

    new-instance v3, Lpr;

    invoke-direct {v3}, Lpr;-><init>()V

    invoke-direct {v2, p0, v0, v3}, LpE;-><init>(Landroid/content/Context;LpI;Lpr;)V

    sput-object v2, LpE;->f:LpE;

    .line 177
    :cond_0
    sget-object v0, LpE;->f:LpE;

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
.method public a()LpJ;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, LpE;->d:LpJ;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lpz;->a()Lpz;

    move-result-object v2

    .line 259
    invoke-virtual {v2, p1}, Lpz;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v2}, Lpz;->d()Ljava/lang/String;

    move-result-object v3

    .line 261
    sget-object v0, LpH;->a:[I

    invoke-virtual {v2}, Lpz;->b()LpA;

    move-result-object v1

    invoke-virtual {v1}, LpA;->ordinal()I

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
    iget-object v0, p0, LpE;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpp;

    .line 264
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lpp;->a()V
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
    iget-object v0, p0, LpE;->e:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast v1, Lpp;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v2}, Lpz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpp;->a(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Lpp;->a()V

    goto :goto_2

    .line 276
    :cond_2
    invoke-virtual {v1}, Lpp;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lpp;->a(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Lpp;->a()V
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
