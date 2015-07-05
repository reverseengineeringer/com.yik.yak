.class public final LxF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:LKk;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:LJS;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "LxK;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LxF;->a:Ljava/util/regex/Pattern;

    .line 794
    new-instance v0, LxH;

    invoke-direct {v0}, LxH;-><init>()V

    sput-object v0, LxF;->p:LKk;

    return-void
.end method

.method constructor <init>(Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide v4, p0, LxF;->i:J

    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    .line 158
    iput-wide v4, p0, LxF;->m:J

    .line 162
    new-instance v0, LxG;

    invoke-direct {v0, p0}, LxG;-><init>(LxF;)V

    iput-object v0, p0, LxF;->o:Ljava/lang/Runnable;

    .line 182
    iput-object p1, p0, LxF;->b:Ljava/io/File;

    .line 183
    iput p2, p0, LxF;->f:I

    .line 184
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, LxF;->c:Ljava/io/File;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, LxF;->d:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, LxF;->e:Ljava/io/File;

    .line 187
    iput p3, p0, LxF;->h:I

    .line 188
    iput-wide p4, p0, LxF;->g:J

    .line 189
    iput-object p6, p0, LxF;->n:Ljava/util/concurrent/Executor;

    .line 190
    return-void
.end method

.method static synthetic a(LxF;I)I
    .locals 0

    .prologue
    .line 88
    iput p1, p0, LxF;->l:I

    return p1
.end method

.method static synthetic a(LxF;)LJS;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LxF;->j:LJS;

    return-object v0
.end method

.method public static a(Ljava/io/File;IIJ)LxF;
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 232
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    if-gtz p2, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    .line 241
    invoke-static {v0, v3}, LxY;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 243
    new-instance v2, LxF;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, LxF;-><init>(Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    .line 244
    invoke-virtual {v2}, LxF;->a()V

    .line 245
    return-object v2
.end method

.method private declared-synchronized a(Ljava/lang/String;J)LxI;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 439
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LxF;->h()V

    .line 440
    invoke-direct {p0, p1}, LxF;->e(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;

    .line 442
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 443
    invoke-static {v0}, LxK;->g(LxK;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 459
    :goto_0
    monitor-exit p0

    return-object v0

    .line 446
    :cond_1
    if-nez v0, :cond_2

    .line 447
    :try_start_1
    new-instance v0, LxK;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LxK;-><init>(LxF;Ljava/lang/String;LxG;)V

    .line 448
    iget-object v1, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 453
    :goto_1
    new-instance v0, LxI;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LxI;-><init>(LxF;LxK;LxG;)V

    .line 454
    invoke-static {v1, v0}, LxK;->a(LxK;LxI;)LxI;

    .line 457
    iget-object v1, p0, LxF;->j:LJS;

    const-string v2, "DIRTY"

    invoke-interface {v1, v2}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, LJS;->g(I)LJS;

    move-result-object v1

    invoke-interface {v1, p1}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, LJS;->g(I)LJS;

    .line 458
    iget-object v1, p0, LxF;->j:LJS;

    invoke-interface {v1}, LJS;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_2
    :try_start_2
    invoke-static {v0}, LxK;->a(LxK;)LxI;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 450
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(LxF;Ljava/lang/String;J)LxI;
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, LxF;->a(Ljava/lang/String;J)LxI;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 399
    if-eqz p2, :cond_0

    .line 400
    invoke-static {p1}, LxF;->a(Ljava/io/File;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 405
    :cond_1
    return-void
.end method

.method static synthetic a(LxF;LxI;Z)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, LxF;->a(LxI;Z)V

    return-void
.end method

.method private declared-synchronized a(LxI;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 494
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, LxI;->a(LxI;)LxK;

    move-result-object v2

    .line 495
    invoke-static {v2}, LxK;->a(LxK;)LxI;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, LxK;->f(LxK;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 501
    :goto_0
    iget v3, p0, LxF;->h:I

    if-ge v1, v3, :cond_4

    .line 502
    invoke-static {p1}, LxI;->b(LxI;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 503
    invoke-virtual {p1}, LxI;->b()V

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-static {v2}, LxK;->d(LxK;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 507
    invoke-virtual {p1}, LxI;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 501
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, LxF;->h:I

    if-ge v0, v1, :cond_7

    .line 514
    invoke-static {v2}, LxK;->d(LxK;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 515
    if-eqz p2, :cond_6

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 517
    invoke-static {v2}, LxK;->c(LxK;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    .line 518
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 519
    invoke-static {v2}, LxK;->b(LxK;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 521
    invoke-static {v2}, LxK;->b(LxK;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 522
    iget-wide v8, p0, LxF;->i:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, LxF;->i:J

    .line 513
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 525
    :cond_6
    invoke-static {v1}, LxF;->a(Ljava/io/File;)V

    goto :goto_3

    .line 529
    :cond_7
    iget v0, p0, LxF;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LxF;->l:I

    .line 530
    const/4 v0, 0x0

    invoke-static {v2, v0}, LxK;->a(LxK;LxI;)LxI;

    .line 531
    invoke-static {v2}, LxK;->f(LxK;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 532
    const/4 v0, 0x1

    invoke-static {v2, v0}, LxK;->a(LxK;Z)Z

    .line 533
    iget-object v0, p0, LxF;->j:LJS;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, LJS;->g(I)LJS;

    .line 534
    iget-object v0, p0, LxF;->j:LJS;

    invoke-static {v2}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 535
    iget-object v0, p0, LxF;->j:LJS;

    invoke-virtual {v2, v0}, LxK;->a(LJS;)V

    .line 536
    iget-object v0, p0, LxF;->j:LJS;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LJS;->g(I)LJS;

    .line 537
    if-eqz p2, :cond_8

    .line 538
    iget-wide v0, p0, LxF;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, LxF;->m:J

    invoke-static {v2, v0, v1}, LxK;->a(LxK;J)J

    .line 546
    :cond_8
    :goto_4
    iget-object v0, p0, LxF;->j:LJS;

    invoke-interface {v0}, LJS;->a()V

    .line 548
    iget-wide v0, p0, LxF;->i:J

    iget-wide v2, p0, LxF;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, LxF;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    :cond_9
    iget-object v0, p0, LxF;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, LxF;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 541
    :cond_a
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, LxF;->j:LJS;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, LJS;->g(I)LJS;

    .line 543
    iget-object v0, p0, LxF;->j:LJS;

    invoke-static {v2}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJS;->b(Ljava/lang/String;)LJS;

    .line 544
    iget-object v0, p0, LxF;->j:LJS;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LJS;->g(I)LJS;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(LxF;LxK;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, LxF;->a(LxK;)Z

    move-result v0

    return v0
.end method

.method private a(LxK;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 579
    invoke-static {p1}, LxK;->a(LxK;)LxI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {p1}, LxK;->a(LxK;)LxI;

    move-result-object v0

    invoke-static {v0, v6}, LxI;->a(LxI;Z)Z

    .line 583
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LxF;->h:I

    if-ge v0, v1, :cond_1

    .line 584
    invoke-static {p1}, LxK;->c(LxK;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 585
    invoke-static {v1}, LxF;->a(Ljava/io/File;)V

    .line 586
    iget-wide v2, p0, LxF;->i:J

    invoke-static {p1}, LxK;->b(LxK;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LxF;->i:J

    .line 587
    invoke-static {p1}, LxK;->b(LxK;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_1
    iget v0, p0, LxF;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LxF;->l:I

    .line 591
    iget-object v0, p0, LxF;->j:LJS;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, LJS;->g(I)LJS;

    move-result-object v0

    invoke-static {p1}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LJS;->g(I)LJS;

    .line 592
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-static {p1}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-direct {p0}, LxF;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, LxF;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, LxF;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 598
    :cond_2
    return v6
.end method

.method static synthetic b(LxF;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, LxF;->i()V

    return-void
.end method

.method static synthetic c()LKk;
    .locals 1

    .prologue
    .line 88
    sget-object v0, LxF;->p:LKk;

    return-object v0
.end method

.method static synthetic c(LxF;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, LxF;->g()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    .line 249
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    invoke-static {v0}, LKa;->a(Ljava/io/File;)LKl;

    move-result-object v0

    invoke-static {v0}, LKa;->a(LKl;)LJT;

    move-result-object v1

    .line 251
    :try_start_0
    invoke-interface {v1}, LJT;->q()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-interface {v1}, LJT;->q()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-interface {v1}, LJT;->q()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-interface {v1}, LJT;->q()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-interface {v1}, LJT;->q()Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    .line 257
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, LxF;->f:I

    .line 258
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, LxF;->h:I

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 260
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :catchall_0
    move-exception v0

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    throw v0

    .line 265
    :cond_1
    const/4 v0, 0x0

    .line 268
    :goto_0
    :try_start_1
    invoke-interface {v1}, LJT;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, LxF;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, LxF;->l:I

    .line 277
    invoke-interface {v1}, LJT;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-direct {p0}, LxF;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :goto_1
    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    .line 285
    return-void

    .line 280
    :cond_2
    :try_start_3
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    invoke-static {v0}, LKa;->c(Ljava/io/File;)LKk;

    move-result-object v0

    invoke-static {v0}, LKa;->a(LKk;)LJS;

    move-result-object v0

    iput-object v0, p0, LxF;->j:LJS;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 289
    if-ne v2, v5, :cond_0

    .line 290
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 294
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 296
    if-ne v3, v5, :cond_2

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 299
    iget-object v1, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 306
    :goto_1
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;

    .line 307
    if-nez v0, :cond_3

    .line 308
    new-instance v0, LxK;

    invoke-direct {v0, p0, v1, v6}, LxK;-><init>(LxF;Ljava/lang/String;LxG;)V

    .line 309
    iget-object v4, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_3
    if-eq v3, v5, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    const/4 v2, 0x1

    invoke-static {v0, v2}, LxK;->a(LxK;Z)Z

    .line 315
    invoke-static {v0, v6}, LxK;->a(LxK;LxI;)LxI;

    .line 316
    invoke-static {v0, v1}, LxK;->a(LxK;[Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    if-ne v3, v5, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    new-instance v1, LxI;

    invoke-direct {v1, p0, v0, v6}, LxI;-><init>(LxF;LxK;LxG;)V

    invoke-static {v0, v1}, LxK;->a(LxK;LxI;)LxI;

    goto :goto_0

    .line 319
    :cond_5
    if-ne v3, v5, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic d(LxF;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, LxF;->f()V

    return-void
.end method

.method static synthetic e(LxF;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, LxF;->h:I

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, LxF;->d:Ljava/io/File;

    invoke-static {v0}, LxF;->a(Ljava/io/File;)V

    .line 332
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;

    .line 334
    invoke-static {v0}, LxK;->a(LxK;)LxI;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 335
    :goto_1
    iget v4, p0, LxF;->h:I

    if-ge v1, v4, :cond_0

    .line 336
    iget-wide v4, p0, LxF;->i:J

    invoke-static {v0}, LxK;->b(LxK;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, LxF;->i:J

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, LxK;->a(LxK;LxI;)LxI;

    move v1, v2

    .line 340
    :goto_2
    iget v4, p0, LxF;->h:I

    if-ge v1, v4, :cond_2

    .line 341
    invoke-static {v0}, LxK;->c(LxK;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, LxF;->a(Ljava/io/File;)V

    .line 342
    invoke-static {v0}, LxK;->d(LxK;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, LxF;->a(Ljava/io/File;)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 344
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 347
    :cond_3
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 664
    sget-object v0, LxF;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    return-void
.end method

.method static synthetic f(LxF;)Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LxF;->b:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 5

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LxF;->j:LJS;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, LxF;->j:LJS;

    invoke-interface {v0}, LJS;->close()V

    .line 358
    :cond_0
    iget-object v0, p0, LxF;->d:Ljava/io/File;

    invoke-static {v0}, LKa;->b(Ljava/io/File;)LKk;

    move-result-object v0

    invoke-static {v0}, LKa;->a(LKk;)LJS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 360
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, LJS;->g(I)LJS;

    .line 361
    const-string v0, "1"

    invoke-interface {v1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, LJS;->g(I)LJS;

    .line 362
    iget v0, p0, LxF;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, LJS;->g(I)LJS;

    .line 363
    iget v0, p0, LxF;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, LJS;->g(I)LJS;

    .line 364
    const/16 v0, 0xa

    invoke-interface {v1, v0}, LJS;->g(I)LJS;

    .line 366
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;

    .line 367
    invoke-static {v0}, LxK;->a(LxK;)LxI;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 368
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, LJS;->g(I)LJS;

    .line 369
    invoke-static {v0}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LJS;->b(Ljava/lang/String;)LJS;

    .line 370
    const/16 v0, 0xa

    invoke-interface {v1, v0}, LJS;->g(I)LJS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, LJS;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, LJS;->g(I)LJS;

    .line 373
    invoke-static {v0}, LxK;->e(LxK;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, LJS;->b(Ljava/lang/String;)LJS;

    .line 374
    invoke-virtual {v0, v1}, LxK;->a(LJS;)V

    .line 375
    const/16 v0, 0xa

    invoke-interface {v1, v0}, LJS;->g(I)LJS;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 379
    :cond_2
    :try_start_4
    invoke-interface {v1}, LJS;->close()V

    .line 382
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    iget-object v1, p0, LxF;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LxF;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    :cond_3
    iget-object v0, p0, LxF;->d:Ljava/io/File;

    iget-object v1, p0, LxF;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LxF;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    iget-object v0, p0, LxF;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    invoke-static {v0}, LKa;->c(Ljava/io/File;)LKk;

    move-result-object v0

    invoke-static {v0}, LKa;->a(LKk;)LJS;

    move-result-object v0

    iput-object v0, p0, LxF;->j:LJS;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    monitor-exit p0

    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 558
    iget v0, p0, LxF;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, LxF;->l:I

    iget-object v1, p0, LxF;->k:Ljava/util/LinkedHashMap;

    .line 560
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, LxF;->j:LJS;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 636
    :goto_0
    iget-wide v0, p0, LxF;->i:J

    iget-wide v2, p0, LxF;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 637
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;

    .line 638
    invoke-direct {p0, v0}, LxF;->a(LxK;)Z

    goto :goto_0

    .line 640
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)LxL;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 413
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LxF;->h()V

    .line 414
    invoke-direct {p0, p1}, LxF;->e(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;

    .line 416
    if-eqz v0, :cond_0

    invoke-static {v0}, LxK;->f(LxK;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 427
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 418
    :cond_2
    :try_start_1
    invoke-virtual {v0}, LxK;->a()LxL;

    move-result-object v0

    .line 419
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 421
    :cond_3
    iget v1, p0, LxF;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LxF;->l:I

    .line 422
    iget-object v1, p0, LxF;->j:LJS;

    const-string v2, "READ"

    invoke-interface {v1, v2}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, LJS;->g(I)LJS;

    move-result-object v1

    invoke-interface {v1, p1}, LJS;->b(Ljava/lang/String;)LJS;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, LJS;->g(I)LJS;

    .line 423
    invoke-direct {p0}, LxF;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, LxF;->n:Ljava/util/concurrent/Executor;

    iget-object v2, p0, LxF;->o:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, LxF;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, LxF;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, LxF;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :try_start_0
    invoke-direct {p0}, LxF;->d()V

    .line 208
    invoke-direct {p0}, LxF;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, LxF;->e:Ljava/io/File;

    iget-object v1, p0, LxF;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LxF;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {}, LxS;->a()LxS;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LxF;->b:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", removing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, LxS;->a(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, LxF;->b()V

    .line 217
    :cond_2
    iget-object v0, p0, LxF;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 218
    invoke-direct {p0}, LxF;->f()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)LxI;
    .locals 2

    .prologue
    .line 435
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, LxF;->a(Ljava/lang/String;J)LxI;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, LxF;->close()V

    .line 649
    iget-object v0, p0, LxF;->b:Ljava/io/File;

    invoke-static {v0}, LxY;->a(Ljava/io/File;)V

    .line 650
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LxF;->h()V

    .line 572
    invoke-direct {p0, p1}, LxF;->e(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 575
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, LxF;->a(LxK;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LxF;->j:LJS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 633
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    iget-object v0, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, LxF;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [LxK;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LxK;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 626
    invoke-static {v3}, LxK;->a(LxK;)LxI;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 627
    invoke-static {v3}, LxK;->a(LxK;)LxI;

    move-result-object v3

    invoke-virtual {v3}, LxI;->b()V

    .line 625
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_2
    invoke-direct {p0}, LxF;->i()V

    .line 631
    iget-object v0, p0, LxF;->j:LJS;

    invoke-interface {v0}, LJS;->close()V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, LxF;->j:LJS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
