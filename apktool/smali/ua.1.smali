.class final Lua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LtY;


# direct methods
.method private constructor <init>(LtY;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lua;->a:LtY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LtY;LtZ;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lua;-><init>(LtY;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    iget-object v0, p0, Lua;->a:LtY;

    invoke-static {v0}, LtY;->a(LtY;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lua;->a:LtY;

    invoke-static {v0}, LtY;->a(LtY;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 81
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc;

    .line 84
    iget-wide v6, v0, Luc;->a:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 85
    iget-object v5, p0, Lua;->a:LtY;

    invoke-static {v5}, LtY;->b(LtY;)LsK;

    move-result-object v5

    iget-object v6, v0, Luc;->b:Ljava/lang/String;

    iget-object v0, v0, Luc;->c:Lorg/json/JSONObject;

    invoke-virtual {v5, v6, v0}, LsK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lua;->a:LtY;

    invoke-static {v0}, LtY;->a(LtY;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lua;->a:LtY;

    invoke-static {v0}, LtY;->c(LtY;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method
