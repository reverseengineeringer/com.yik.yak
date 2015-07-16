.class public abstract LJd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/util/concurrent/ScheduledExecutorService;

.field protected final d:LJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJf",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected volatile f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LJf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "LJf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, LJd;->f:I

    .line 33
    iput-object p1, p0, LJd;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, LJd;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iput-object p3, p0, LJd;->d:LJf;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LJd;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .prologue
    .line 131
    iput p1, p0, LJd;->f:I

    .line 132
    const/4 v0, 0x0

    iget v1, p0, LJd;->f:I

    invoke-virtual {p0, v0, v1}, LJd;->a(II)V

    .line 133
    return-void
.end method

.method protected a(II)V
    .locals 8

    .prologue
    .line 107
    :try_start_0
    new-instance v1, LJv;

    iget-object v0, p0, LJd;->b:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, LJv;-><init>(Landroid/content/Context;LJr;)V

    .line 109
    iget-object v0, p0, LJd;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time based file roll over every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, LJd;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, LJd;->c:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, LJd;->b:Landroid/content/Context;

    const-string v2, "Failed to schedule time based file roll over"

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, LJd;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v0, p0, LJd;->d:LJf;

    invoke-virtual {v0, p1}, LJf;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-virtual {p0}, LJd;->f()V

    .line 150
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, LJd;->b:Landroid/content/Context;

    const-string v2, "Failed to write event."

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, LJd;->g()V

    .line 103
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, LJd;->d:LJf;

    invoke-virtual {v0}, LJf;->f()V

    .line 138
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, LJd;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, LJd;->b:Landroid/content/Context;

    const-string v1, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, LJd;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    iget-object v0, p0, LJd;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, LJd;->d:LJf;

    invoke-virtual {v0}, LJf;->d()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, LJd;->b:Landroid/content/Context;

    const-string v2, "Failed to roll file over."

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget v0, p0, LJd;->f:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 43
    :goto_0
    iget-object v3, p0, LJd;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 45
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 46
    iget v0, p0, LJd;->f:I

    iget v1, p0, LJd;->f:I

    invoke-virtual {p0, v0, v1}, LJd;->a(II)V

    .line 48
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 41
    goto :goto_0

    :cond_2
    move v1, v2

    .line 43
    goto :goto_1
.end method

.method g()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, LJd;->a()LJs;

    move-result-object v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    iget-object v0, p0, LJd;->b:Landroid/content/Context;

    const-string v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, LJd;->b:Landroid/content/Context;

    const-string v2, "Sending all files"

    invoke-static {v0, v2}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, LJd;->d:LJf;

    invoke-virtual {v0}, LJf;->e()Ljava/util/List;

    move-result-object v0

    .line 73
    :try_start_0
    iget-object v2, p0, LJd;->b:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "attempt to send batch of %d files"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move v0, v1

    .line 76
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 77
    invoke-interface {v3, v2}, LJs;->a(Ljava/util/List;)Z

    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v1, v0

    .line 81
    :try_start_2
    iget-object v0, p0, LJd;->d:LJf;

    invoke-virtual {v0, v2}, LJf;->a(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 84
    :cond_2
    if-nez v4, :cond_4

    .line 95
    :cond_3
    :goto_2
    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, LJd;->d:LJf;

    invoke-virtual {v0}, LJf;->g()V

    goto :goto_0

    .line 88
    :cond_4
    :try_start_3
    iget-object v1, p0, LJd;->d:LJf;

    invoke-virtual {v1}, LJf;->e()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :goto_3
    iget-object v2, p0, LJd;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send batch of analytics files to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 90
    :catch_1
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_3
.end method
