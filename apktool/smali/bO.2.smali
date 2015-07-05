.class LbO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LbM;

.field private final c:LHI;

.field private final d:LJn;

.field private final e:LbN;

.field private final f:LJg;

.field private final g:LHB;

.field private final h:LJa;


# direct methods
.method public constructor <init>(Landroid/content/Context;LbM;LHI;LJn;LbN;LJg;LHB;LJa;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LbO;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, LbO;->b:LbM;

    .line 39
    iput-object p3, p0, LbO;->c:LHI;

    .line 40
    iput-object p4, p0, LbO;->d:LJn;

    .line 41
    iput-object p5, p0, LbO;->e:LbN;

    .line 42
    iput-object p6, p0, LbO;->f:LJg;

    .line 43
    iput-object p7, p0, LbO;->g:LHB;

    .line 44
    iput-object p8, p0, LbO;->h:LJa;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    .line 51
    iget-object v0, p0, LbO;->g:LHB;

    invoke-interface {v0}, LHB;->a()J

    move-result-wide v6

    .line 52
    iget-object v0, p0, LbO;->d:LJn;

    iget v0, v0, LJn;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 54
    invoke-static {}, LGS;->g()LHe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check for updates delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    iget-object v2, p0, LbO;->f:LJg;

    invoke-interface {v2}, LJg;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_update_check"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 59
    invoke-static {}, LGS;->g()LHe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check for updates last check time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    add-long/2addr v0, v2

    .line 63
    invoke-static {}, LGS;->g()LHe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check for updates current time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", next check time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    cmp-long v0, v6, v0

    if-ltz v0, :cond_0

    .line 68
    :try_start_0
    invoke-static {}, LGS;->g()LHe;

    .line 70
    new-instance v0, LHu;

    invoke-direct {v0}, LHu;-><init>()V

    iget-object v1, p0, LbO;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, LHu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 71
    iget-object v0, p0, LbO;->c:LHI;

    iget-object v1, p0, LbO;->e:LbN;

    iget-object v1, v1, LbN;->d:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, LHI;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    new-instance v0, LbP;

    iget-object v1, p0, LbO;->b:LbM;

    iget-object v2, p0, LbO;->b:LbM;

    invoke-virtual {v2}, LbM;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LbO;->d:LJn;

    iget-object v3, v3, LJn;->a:Ljava/lang/String;

    iget-object v4, p0, LbO;->h:LJa;

    new-instance v5, LbR;

    invoke-direct {v5}, LbR;-><init>()V

    invoke-direct/range {v0 .. v5}, LbP;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;LbR;)V

    .line 85
    iget-object v1, p0, LbO;->e:LbN;

    invoke-virtual {v0, v8, v9, v1}, LbP;->a(Ljava/lang/String;Ljava/lang/String;LbN;)LbQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, LbO;->f:LJg;

    invoke-interface {v0}, LJg;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_check"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, LbO;->f:LJg;

    invoke-interface {v1}, LJg;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_update_check"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v0

    .line 92
    :cond_0
    invoke-static {}, LGS;->g()LHe;

    goto :goto_0
.end method
