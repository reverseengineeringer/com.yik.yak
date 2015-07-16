.class LbK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LbI;

.field private final c:LIq;

.field private final d:LJV;

.field private final e:LbJ;

.field private final f:LJO;

.field private final g:LIj;

.field private final h:LJI;


# direct methods
.method public constructor <init>(Landroid/content/Context;LbI;LIq;LJV;LbJ;LJO;LIj;LJI;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LbK;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, LbK;->b:LbI;

    .line 39
    iput-object p3, p0, LbK;->c:LIq;

    .line 40
    iput-object p4, p0, LbK;->d:LJV;

    .line 41
    iput-object p5, p0, LbK;->e:LbJ;

    .line 42
    iput-object p6, p0, LbK;->f:LJO;

    .line 43
    iput-object p7, p0, LbK;->g:LIj;

    .line 44
    iput-object p8, p0, LbK;->h:LJI;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    .line 51
    iget-object v0, p0, LbK;->g:LIj;

    invoke-interface {v0}, LIj;->a()J

    move-result-wide v6

    .line 52
    iget-object v0, p0, LbK;->d:LJV;

    iget v0, v0, LJV;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 54
    invoke-static {}, LHA;->g()LHM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check for updates delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    iget-object v2, p0, LbK;->f:LJO;

    invoke-interface {v2}, LJO;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_update_check"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 59
    invoke-static {}, LHA;->g()LHM;

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
    invoke-static {}, LHA;->g()LHM;

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
    invoke-static {}, LHA;->g()LHM;

    .line 70
    new-instance v0, LIc;

    invoke-direct {v0}, LIc;-><init>()V

    iget-object v1, p0, LbK;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, LIc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 71
    iget-object v0, p0, LbK;->c:LIq;

    iget-object v1, p0, LbK;->e:LbJ;

    iget-object v1, v1, LbJ;->d:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, LIq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    new-instance v0, LbL;

    iget-object v1, p0, LbK;->b:LbI;

    iget-object v2, p0, LbK;->b:LbI;

    invoke-virtual {v2}, LbI;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LbK;->d:LJV;

    iget-object v3, v3, LJV;->a:Ljava/lang/String;

    iget-object v4, p0, LbK;->h:LJI;

    new-instance v5, LbN;

    invoke-direct {v5}, LbN;-><init>()V

    invoke-direct/range {v0 .. v5}, LbL;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;LbN;)V

    .line 85
    iget-object v1, p0, LbK;->e:LbJ;

    invoke-virtual {v0, v8, v9, v1}, LbL;->a(Ljava/lang/String;Ljava/lang/String;LbJ;)LbM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, LbK;->f:LJO;

    invoke-interface {v0}, LJO;->b()Landroid/content/SharedPreferences$Editor;

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

    iget-object v1, p0, LbK;->f:LJO;

    invoke-interface {v1}, LJO;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_update_check"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v0

    .line 92
    :cond_0
    invoke-static {}, LHA;->g()LHM;

    goto :goto_0
.end method
