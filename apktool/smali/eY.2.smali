.class public LeY;
.super LfD;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static o:LeY;


# instance fields
.field private b:Landroid/content/Context;

.field private c:LeI;

.field private volatile d:LeK;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:LeJ;

.field private l:Landroid/os/Handler;

.field private m:LeX;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LeY;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, LfD;-><init>()V

    .line 45
    const/16 v0, 0x708

    iput v0, p0, LeY;->e:I

    .line 46
    iput-boolean v1, p0, LeY;->f:Z

    .line 51
    iput-boolean v1, p0, LeY;->i:Z

    .line 55
    iput-boolean v1, p0, LeY;->j:Z

    .line 57
    new-instance v0, LeZ;

    invoke-direct {v0, p0}, LeZ;-><init>(LeY;)V

    iput-object v0, p0, LeY;->k:LeJ;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, LeY;->n:Z

    .line 83
    return-void
.end method

.method public static a()LeY;
    .locals 1

    .prologue
    .line 76
    sget-object v0, LeY;->o:LeY;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, LeY;

    invoke-direct {v0}, LeY;-><init>()V

    sput-object v0, LeY;->o:LeY;

    .line 79
    :cond_0
    sget-object v0, LeY;->o:LeY;

    return-object v0
.end method

.method static synthetic a(LeY;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, LeY;->i:Z

    return v0
.end method

.method static synthetic b(LeY;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, LeY;->e:I

    return v0
.end method

.method static synthetic c(LeY;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, LeY;->n:Z

    return v0
.end method

.method static synthetic d(LeY;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, LeY;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, LeX;

    invoke-direct {v0, p0}, LeX;-><init>(LfD;)V

    iput-object v0, p0, LeY;->m:LeX;

    .line 101
    iget-object v0, p0, LeY;->m:LeX;

    iget-object v1, p0, LeY;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, LeX;->a(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LeY;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lfa;

    invoke-direct {v2, p0}, Lfa;-><init>(LeY;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LeY;->l:Landroid/os/Handler;

    .line 123
    iget v0, p0, LeY;->e:I

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    iget-object v1, p0, LeY;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, LeY;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 221
    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lft;->c(Ljava/lang/String;)V

    .line 223
    iput p1, p0, LeY;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_1
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->T:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 229
    iget-boolean v0, p0, LeY;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, LeY;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, LeY;->e:I

    if-lez v0, :cond_2

    .line 230
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 232
    :cond_2
    iput p1, p0, LeY;->e:I

    .line 233
    if-lez p1, :cond_0

    iget-boolean v0, p0, LeY;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LeY;->i:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    iget-object v1, p0, LeY;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;LeK;)V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LeY;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LeY;->b:Landroid/content/Context;

    .line 144
    iget-object v0, p0, LeY;->d:LeK;

    if-nez v0, :cond_0

    .line 145
    iput-object p2, p0, LeY;->d:LeK;

    .line 146
    iget-boolean v0, p0, LeY;->f:Z

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, LeY;->c()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, LeY;->f:Z

    .line 150
    :cond_2
    iget-boolean v0, p0, LeY;->g:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, LeY;->d()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, LeY;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LeY;->n:Z

    invoke-virtual {p0, v0, p1}, LeY;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LeY;->n:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, LeY;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, LeY;->e:I

    if-lez v0, :cond_2

    .line 258
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 260
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, LeY;->e:I

    if-lez v0, :cond_3

    .line 261
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    iget-object v1, p0, LeY;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, LeY;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->c(Ljava/lang/String;)V

    .line 266
    iput-boolean p1, p0, LeY;->n:Z

    .line 267
    iput-boolean p2, p0, LeY;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized b()LeI;
    .locals 3

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LeY;->c:LeI;

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, LeY;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Lfz;

    iget-object v1, p0, LeY;->k:LeJ;

    iget-object v2, p0, LeY;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lfz;-><init>(LeJ;Landroid/content/Context;)V

    iput-object v0, p0, LeY;->c:LeI;

    .line 174
    iget-object v0, p0, LeY;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, LeY;->c:LeI;

    invoke-interface {v0}, LeI;->b()LeR;

    move-result-object v0

    iget-object v1, p0, LeY;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, LeR;->a(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, LeY;->h:Ljava/lang/String;

    .line 179
    :cond_1
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 181
    invoke-direct {p0}, LeY;->h()V

    .line 183
    :cond_2
    iget-object v0, p0, LeY;->m:LeX;

    if-nez v0, :cond_3

    iget-boolean v0, p0, LeY;->j:Z

    if-eqz v0, :cond_3

    .line 184
    invoke-direct {p0}, LeY;->g()V

    .line 186
    :cond_3
    iget-object v0, p0, LeY;->c:LeI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LeY;->d:LeK;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lft;->c(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, LeY;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->S:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 214
    iget-object v0, p0, LeY;->d:LeK;

    invoke-interface {v0}, LeK;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, LeY;->d:LeK;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lft;->c(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, LeY;->g:Z

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->af:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 249
    iget-object v0, p0, LeY;->d:LeK;

    invoke-interface {v0}, LeK;->b()V

    goto :goto_0
.end method

.method declared-synchronized e()V
    .locals 4

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LeY;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LeY;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, LeY;->e:I

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, LeY;->l:Landroid/os/Handler;

    iget-object v1, p0, LeY;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, LeY;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
