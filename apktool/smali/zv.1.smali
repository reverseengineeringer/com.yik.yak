.class public final Lzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:LxC;

.field final b:Z

.field c:J

.field d:J

.field final e:Lzr;

.field final f:Lzr;

.field final g:LzM;

.field final h:Ljava/net/Socket;

.field final i:LyW;

.field final j:LzE;

.field private final m:Lzj;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LzH;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lzo;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lzp;

.field private w:I

.field private x:Z

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lzv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lzv;->k:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    .line 68
    invoke-static {v0, v8}, Lyi;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lzv;->l:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private constructor <init>(LzD;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzv;->n:Ljava/util/Map;

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lzv;->s:J

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lzv;->c:J

    .line 113
    new-instance v0, Lzr;

    invoke-direct {v0}, Lzr;-><init>()V

    iput-object v0, p0, Lzv;->e:Lzr;

    .line 119
    new-instance v0, Lzr;

    invoke-direct {v0}, Lzr;-><init>()V

    iput-object v0, p0, Lzv;->f:Lzr;

    .line 121
    iput-boolean v2, p0, Lzv;->x:Z

    .line 791
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lzv;->y:Ljava/util/Set;

    .line 130
    invoke-static {p1}, LzD;->a(LzD;)LxC;

    move-result-object v0

    iput-object v0, p0, Lzv;->a:LxC;

    .line 131
    invoke-static {p1}, LzD;->b(LzD;)Lzp;

    move-result-object v0

    iput-object v0, p0, Lzv;->v:Lzp;

    .line 132
    invoke-static {p1}, LzD;->c(LzD;)Z

    move-result v0

    iput-boolean v0, p0, Lzv;->b:Z

    .line 133
    invoke-static {p1}, LzD;->d(LzD;)Lzj;

    move-result-object v0

    iput-object v0, p0, Lzv;->m:Lzj;

    .line 135
    invoke-static {p1}, LzD;->c(LzD;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lzv;->q:I

    .line 136
    invoke-static {p1}, LzD;->c(LzD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzv;->a:LxC;

    sget-object v4, LxC;->d:LxC;

    if-ne v0, v4, :cond_0

    .line 137
    iget v0, p0, Lzv;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lzv;->q:I

    .line 140
    :cond_0
    invoke-static {p1}, LzD;->c(LzD;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lzv;->w:I

    .line 146
    invoke-static {p1}, LzD;->c(LzD;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lzv;->e:Lzr;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lzr;->a(III)Lzr;

    .line 150
    :cond_2
    invoke-static {p1}, LzD;->e(LzD;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzv;->o:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lzv;->a:LxC;

    sget-object v1, LxC;->d:LxC;

    if-ne v0, v1, :cond_4

    .line 153
    new-instance v0, Lzc;

    invoke-direct {v0}, Lzc;-><init>()V

    iput-object v0, p0, Lzv;->g:LzM;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lzv;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lyi;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lzv;->t:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lzv;->f:Lzr;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lzr;->a(III)Lzr;

    .line 160
    iget-object v0, p0, Lzv;->f:Lzr;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lzr;->a(III)Lzr;

    .line 167
    :goto_1
    iget-object v0, p0, Lzv;->f:Lzr;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lzr;->e(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lzv;->d:J

    .line 168
    invoke-static {p1}, LzD;->f(LzD;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lzv;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lzv;->g:LzM;

    invoke-static {p1}, LzD;->f(LzD;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, LKI;->a(Ljava/net/Socket;)LKS;

    move-result-object v1

    invoke-static {v1}, LKI;->a(LKS;)LKA;

    move-result-object v1

    iget-boolean v2, p0, Lzv;->b:Z

    invoke-interface {v0, v1, v2}, LzM;->a(LKA;Z)LyW;

    move-result-object v0

    iput-object v0, p0, Lzv;->i:LyW;

    .line 171
    new-instance v0, LzE;

    invoke-direct {v0, p0, v11}, LzE;-><init>(Lzv;Lzw;)V

    iput-object v0, p0, Lzv;->j:LzE;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lzv;->j:LzE;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lzv;->a:LxC;

    sget-object v1, LxC;->c:LxC;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lzs;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lzv;->g:LzM;

    .line 163
    iput-object v11, p0, Lzv;->t:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lzv;->a:LxC;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(LzD;Lzw;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lzv;-><init>(LzD;)V

    return-void
.end method

.method static synthetic a(Lzv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lzv;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/util/List;ZZ)LzH;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;ZZ)",
            "LzH;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 247
    if-nez p3, :cond_0

    move v3, v4

    .line 248
    :goto_0
    if-nez p4, :cond_1

    .line 252
    :goto_1
    iget-object v8, p0, Lzv;->i:LyW;

    monitor-enter v8

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lzv;->r:Z

    if-eqz v0, :cond_2

    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 273
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    move v3, v0

    .line 247
    goto :goto_0

    :cond_1
    move v4, v0

    .line 248
    goto :goto_1

    .line 257
    :cond_2
    :try_start_3
    iget v1, p0, Lzv;->q:I

    .line 258
    iget v0, p0, Lzv;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lzv;->q:I

    .line 259
    new-instance v0, LzH;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LzH;-><init>(ILzv;ZZLjava/util/List;)V

    .line 260
    invoke-virtual {v0}, LzH;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    iget-object v2, p0, Lzv;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lzv;->a(Z)V

    .line 264
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    if-nez p1, :cond_5

    .line 266
    :try_start_4
    iget-object v2, p0, Lzv;->i:LyW;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, LyW;->a(ZZIILjava/util/List;)V

    .line 273
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    if-nez p3, :cond_4

    .line 276
    iget-object v1, p0, Lzv;->i:LyW;

    invoke-interface {v1}, LyW;->b()V

    .line 279
    :cond_4
    return-object v0

    .line 268
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lzv;->b:Z

    if-eqz v2, :cond_6

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_6
    iget-object v2, p0, Lzv;->i:LyW;

    invoke-interface {v2, p1, v1, p2}, LyW;->a(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private a(ILKB;IZ)V
    .locals 9

    .prologue
    .line 841
    new-instance v5, LKx;

    invoke-direct {v5}, LKx;-><init>()V

    .line 842
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, LKB;->a(J)V

    .line 843
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, LKB;->a(LKx;J)J

    .line 844
    invoke-virtual {v5}, LKx;->c()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LKx;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    iget-object v8, p0, Lzv;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, LzB;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lzv;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, LzB;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILKx;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 859
    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    monitor-enter p0

    .line 795
    :try_start_0
    iget-object v0, p0, Lzv;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, LyT;->b:LyT;

    invoke-virtual {p0, p1, v0}, Lzv;->a(ILyT;)V

    .line 797
    monitor-exit p0

    .line 815
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lzv;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    iget-object v6, p0, Lzv;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lzz;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lzv;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lzz;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v7, p0, Lzv;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, LzA;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lzv;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, LzA;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 833
    return-void
.end method

.method private a(LyT;LyT;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 445
    sget-boolean v0, Lzv;->k:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 448
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lzv;->a(LyT;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 455
    :goto_0
    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v0, p0, Lzv;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 457
    iget-object v0, p0, Lzv;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lzv;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [LzH;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LzH;

    .line 458
    iget-object v4, p0, Lzv;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 459
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lzv;->a(Z)V

    move-object v5, v0

    .line 461
    :goto_1
    iget-object v0, p0, Lzv;->u:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 462
    iget-object v0, p0, Lzv;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lzv;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lzo;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzo;

    .line 463
    const/4 v2, 0x0

    iput-object v2, p0, Lzv;->u:Ljava/util/Map;

    move-object v4, v0

    .line 465
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    if-eqz v5, :cond_3

    .line 468
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 470
    :try_start_2
    invoke-virtual {v1, p2}, LzH;->a(LyT;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 449
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 450
    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 471
    :catch_1
    move-exception v1

    .line 472
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    .line 477
    :cond_3
    if-eqz v4, :cond_4

    .line 478
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    .line 479
    invoke-virtual {v3}, Lzo;->c()V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 485
    :cond_4
    :try_start_4
    iget-object v0, p0, Lzv;->i:LyW;

    invoke-interface {v0}, LyW;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 492
    :cond_5
    :goto_6
    :try_start_5
    iget-object v1, p0, Lzv;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 497
    :goto_7
    if-eqz v0, :cond_6

    throw v0

    .line 486
    :catch_2
    move-exception v0

    .line 487
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_6

    .line 498
    :cond_6
    return-void

    .line 493
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method static synthetic a(Lzv;ILKB;IZ)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lzv;->a(ILKB;IZ)V

    return-void
.end method

.method static synthetic a(Lzv;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lzv;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lzv;ILjava/util/List;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lzv;->a(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lzv;ILyT;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lzv;->c(ILyT;)V

    return-void
.end method

.method static synthetic a(Lzv;LyT;LyT;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lzv;->a(LyT;LyT;)V

    return-void
.end method

.method static synthetic a(Lzv;ZIILzo;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lzv;->b(ZIILzo;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lzv;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ZIILzo;)V
    .locals 9

    .prologue
    .line 387
    sget-object v8, Lzv;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lzy;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lzv;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 388
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lzy;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ZIILzo;)V

    .line 387
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 396
    return-void
.end method

.method static synthetic a(Lzv;I)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lzv;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lzv;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lzv;->x:Z

    return p1
.end method

.method static synthetic b(Lzv;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lzv;->p:I

    return p1
.end method

.method static synthetic b(Lzv;ZIILzo;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lzv;->a(ZIILzo;)V

    return-void
.end method

.method private b(ZIILzo;)V
    .locals 2

    .prologue
    .line 399
    iget-object v1, p0, Lzv;->i:LyW;

    monitor-enter v1

    .line 401
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lzo;->a()V

    .line 402
    :cond_0
    iget-object v0, p0, Lzv;->i:LyW;

    invoke-interface {v0, p1, p2, p3}, LyW;->a(ZII)V

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lzv;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lzv;->r:Z

    return v0
.end method

.method static synthetic b(Lzv;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lzv;->r:Z

    return p1
.end method

.method static synthetic c(Lzv;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lzv;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lzo;
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzv;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzv;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lzv;I)Lzo;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lzv;->c(I)Lzo;

    move-result-object v0

    return-object v0
.end method

.method private c(ILyT;)V
    .locals 7

    .prologue
    .line 862
    iget-object v6, p0, Lzv;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, LzC;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lzv;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LzC;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILyT;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 870
    return-void
.end method

.method static synthetic d(Lzv;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lzv;->q:I

    return v0
.end method

.method private d(I)Z
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lzv;->a:LxC;

    sget-object v1, LxC;->d:LxC;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lzv;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lzv;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lzv;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic f(Lzv;)Lzj;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lzv;->m:Lzj;

    return-object v0
.end method

.method static synthetic g(Lzv;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lzv;->x:Z

    return v0
.end method

.method static synthetic h(Lzv;)Lzp;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lzv;->v:Lzp;

    return-object v0
.end method

.method static synthetic i(Lzv;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lzv;->y:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()LxC;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lzv;->a:LxC;

    return-object v0
.end method

.method declared-synchronized a(I)LzH;
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzv;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;ZZ)LzH;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;ZZ)",
            "LzH;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lzv;->a(ILjava/util/List;ZZ)LzH;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .locals 8

    .prologue
    .line 355
    sget-object v0, Lzv;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lzx;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lzv;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lzx;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 363
    return-void
.end method

.method a(ILyT;)V
    .locals 7

    .prologue
    .line 340
    sget-object v6, Lzv;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lzw;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lzv;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lzw;-><init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILyT;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 348
    return-void
.end method

.method public a(IZLKx;J)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 304
    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lzv;->i:LyW;

    invoke-interface {v0, p2, p1, p3, v1}, LyW;->a(ZILKx;I)V

    .line 328
    :cond_0
    return-void

    .line 320
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lzv;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 321
    iget-object v2, p0, Lzv;->i:LyW;

    invoke-interface {v2}, LyW;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 322
    iget-wide v4, p0, Lzv;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lzv;->d:J

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 326
    iget-object v3, p0, Lzv;->i:LyW;

    if-eqz p2, :cond_3

    cmp-long v0, p4, v8

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, LyW;->a(ZILKx;I)V

    .line 309
    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 311
    monitor-enter p0

    .line 313
    :goto_1
    :try_start_1
    iget-wide v2, p0, Lzv;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 317
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 335
    iget-wide v0, p0, Lzv;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lzv;->d:J

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 337
    :cond_0
    return-void
.end method

.method public a(LyT;)V
    .locals 4

    .prologue
    .line 421
    iget-object v1, p0, Lzv;->i:LyW;

    monitor-enter v1

    .line 423
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :try_start_1
    iget-boolean v0, p0, Lzv;->r:Z

    if-eqz v0, :cond_0

    .line 425
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lzv;->r:Z

    .line 428
    iget v0, p0, Lzv;->p:I

    .line 429
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 431
    :try_start_4
    iget-object v2, p0, Lzv;->i:LyW;

    sget-object v3, Lyi;->a:[B

    invoke-interface {v2, v0, p1, v3}, LyW;->a(ILyT;[B)V

    .line 432
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 429
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method declared-synchronized b(I)LzH;
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzv;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzH;

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzv;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lzv;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(ILyT;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lzv;->i:LyW;

    invoke-interface {v0, p1, p2}, LyW;->a(ILyT;)V

    .line 352
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lzv;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lzv;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 441
    sget-object v0, LyT;->a:LyT;

    sget-object v1, LyT;->l:LyT;

    invoke-direct {p0, v0, v1}, Lzv;->a(LyT;LyT;)V

    .line 442
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lzv;->i:LyW;

    invoke-interface {v0}, LyW;->b()V

    .line 412
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    const/high16 v3, 0x10000

    .line 505
    iget-object v0, p0, Lzv;->i:LyW;

    invoke-interface {v0}, LyW;->a()V

    .line 506
    iget-object v0, p0, Lzv;->i:LyW;

    iget-object v1, p0, Lzv;->e:Lzr;

    invoke-interface {v0, v1}, LyW;->b(Lzr;)V

    .line 507
    iget-object v0, p0, Lzv;->e:Lzr;

    invoke-virtual {v0, v3}, Lzr;->e(I)I

    move-result v0

    .line 508
    if-eq v0, v3, :cond_0

    .line 509
    iget-object v1, p0, Lzv;->i:LyW;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, LyW;->a(IJ)V

    .line 511
    :cond_0
    return-void
.end method
