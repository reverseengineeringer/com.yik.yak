.class public final Lxj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lxj;


# instance fields
.field private final b:I

.field private final c:J

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lxi;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Lxj;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lxj;-><init>(IJ)V

    sput-object v2, Lxj;->a:Lxj;

    .line 72
    :goto_1
    return-void

    .line 63
    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 67
    :cond_1
    if-eqz v3, :cond_2

    .line 68
    new-instance v2, Lxj;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lxj;-><init>(IJ)V

    sput-object v2, Lxj;->a:Lxj;

    goto :goto_1

    .line 70
    :cond_2
    new-instance v2, Lxj;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v1}, Lxj;-><init>(IJ)V

    sput-object v2, Lxj;->a:Lxj;

    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v3, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lxj;->d:Ljava/util/LinkedList;

    .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 93
    invoke-static {v0, v3}, Lyi;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lxj;->e:Ljava/util/concurrent/Executor;

    .line 95
    new-instance v0, Lxk;

    invoke-direct {v0, p0}, Lxk;-><init>(Lxj;)V

    iput-object v0, p0, Lxj;->f:Ljava/lang/Runnable;

    .line 102
    iput p1, p0, Lxj;->b:I

    .line 103
    mul-long v0, p2, v10

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lxj;->c:J

    .line 104
    return-void
.end method

.method public static a()Lxj;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lxj;->a:Lxj;

    return-object v0
.end method

.method static synthetic a(Lxj;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lxj;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 241
    :cond_0
    invoke-virtual {p0}, Lxj;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private c(Lxi;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 206
    iget-object v1, p0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lxj;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lxj;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(LwM;)Lxi;
    .locals 8

    .prologue
    .line 137
    monitor-enter p0

    const/4 v2, 0x0

    .line 138
    :try_start_0
    iget-object v0, p0, Lxj;->d:Ljava/util/LinkedList;

    iget-object v1, p0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxi;

    .line 141
    invoke-virtual {v0}, Lxi;->c()LxN;

    move-result-object v1

    invoke-virtual {v1}, LxN;->a()LwM;

    move-result-object v1

    invoke-virtual {v1, p1}, LwM;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lxi;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lxi;->i()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lxj;->c:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 146
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 147
    invoke-virtual {v0}, Lxi;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :try_start_1
    invoke-static {}, Lyc;->a()Lyc;

    move-result-object v1

    invoke-virtual {v0}, Lxi;->d()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v1, v4}, Lyc;->a(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lxi;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_2
    monitor-exit p0

    return-object v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_3
    invoke-virtual {v0}, Lxi;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lyi;->a(Ljava/net/Socket;)V

    .line 153
    invoke-static {}, Lyc;->a()Lyc;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to tagSocket(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyc;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method a(Lxi;)V
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p1}, Lxi;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Lxi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lxi;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-virtual {p1}, Lxi;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lyi;->a(Ljava/net/Socket;)V

    goto :goto_0

    .line 189
    :cond_2
    :try_start_0
    invoke-static {}, Lyc;->a()Lyc;

    move-result-object v0

    invoke-virtual {p1}, Lxi;->d()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyc;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    monitor-enter p0

    .line 198
    :try_start_1
    invoke-direct {p0, p1}, Lxj;->c(Lxi;)V

    .line 199
    invoke-virtual {p1}, Lxi;->m()V

    .line 200
    invoke-virtual {p1}, Lxi;->g()V

    .line 201
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    invoke-static {}, Lyc;->a()Lyc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to untagSocket(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lyc;->a(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lxi;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lyi;->a(Ljava/net/Socket;)V

    goto :goto_0
.end method

.method b(Lxi;)V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p1}, Lxi;->k()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lxi;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_1
    monitor-enter p0

    .line 222
    :try_start_0
    invoke-direct {p0, p1}, Lxj;->c(Lxi;)V

    .line 223
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b()Z
    .locals 18

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    .line 317
    :goto_0
    return v2

    .line 269
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 270
    const/4 v3, 0x0

    .line 271
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 272
    move-object/from16 v0, p0

    iget-wide v4, v0, Lxj;->c:J

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lxj;->d:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    .line 276
    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxi;

    .line 278
    invoke-virtual {v2}, Lxi;->i()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lxj;->c:J

    add-long/2addr v12, v14

    sub-long/2addr v12, v8

    .line 279
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_1

    invoke-virtual {v2}, Lxi;->e()Z

    move-result v6

    if-nez v6, :cond_2

    .line 280
    :cond_1
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 281
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    :goto_2
    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    .line 286
    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {v2}, Lxi;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 283
    add-int/lit8 v6, v3, 0x1

    .line 284
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move v4, v6

    goto :goto_2

    .line 289
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lxj;->d:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lxj;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 290
    :goto_3
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lxj;->b:I

    if-le v3, v2, :cond_4

    .line 291
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxi;

    .line 292
    invoke-virtual {v2}, Lxi;->h()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 293
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 295
    add-int/lit8 v2, v3, -0x1

    :goto_4
    move v3, v2

    .line 297
    goto :goto_3

    .line 300
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 302
    const-wide/32 v2, 0xf4240

    :try_start_1
    div-long v2, v4, v2

    .line 303
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v2

    sub-long/2addr v4, v8

    .line 304
    long-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    const/4 v2, 0x1

    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    .line 309
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    const/4 v2, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_6

    .line 313
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxi;

    .line 314
    invoke-virtual {v2}, Lxi;->d()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lyi;->a(Ljava/net/Socket;)V

    .line 312
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 317
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    goto/16 :goto_2
.end method
