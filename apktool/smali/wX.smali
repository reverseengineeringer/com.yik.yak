.class public final LwX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput v0, p0, LwX;->c:I

    .line 240
    iput v0, p0, LwX;->d:I

    .line 241
    iput v0, p0, LwX;->e:I

    return-void
.end method


# virtual methods
.method public a()LwX;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, LwX;->a:Z

    .line 248
    return-object p0
.end method

.method public a(ILjava/util/concurrent/TimeUnit;)LwX;
    .locals 4

    .prologue
    .line 284
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 286
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, LwX;->d:I

    .line 289
    return-object p0

    .line 286
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public b()LwX;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, LwX;->f:Z

    .line 317
    return-object p0
.end method

.method public c()LwV;
    .locals 2

    .prologue
    .line 327
    new-instance v0, LwV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LwV;-><init>(LwX;LwW;)V

    return-object v0
.end method
