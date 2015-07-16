.class Lyy;
.super Lyt;
.source "SourceFile"


# instance fields
.field final synthetic c:Lyr;

.field private d:Z


# direct methods
.method private constructor <init>(Lyr;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lyy;->c:Lyr;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyt;-><init>(Lyr;Lys;)V

    return-void
.end method

.method synthetic constructor <init>(Lyr;Lys;)V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lyy;-><init>(Lyr;)V

    return-void
.end method


# virtual methods
.method public a(LKx;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 502
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-boolean v2, p0, Lyy;->a:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_1
    iget-boolean v2, p0, Lyy;->d:Z

    if-eqz v2, :cond_2

    .line 512
    :goto_0
    return-wide v0

    .line 506
    :cond_2
    iget-object v2, p0, Lyy;->c:Lyr;

    invoke-static {v2}, Lyr;->b(Lyr;)LKB;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, LKB;->a(LKx;J)J

    move-result-wide v2

    .line 507
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 508
    const/4 v2, 0x1

    iput-boolean v2, p0, Lyy;->d:Z

    .line 509
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lyy;->a(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 512
    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lyy;->a:Z

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-boolean v0, p0, Lyy;->d:Z

    if-nez v0, :cond_1

    .line 518
    invoke-virtual {p0}, Lyy;->a()V

    .line 520
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyy;->a:Z

    goto :goto_0
.end method
