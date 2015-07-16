.class public Lcom/google/android/gms/analytics/Tracker;
.super Ljava/lang/Object;


# instance fields
.field private final Ce:LfW;

.field private final Cf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Cg:Lgg;

.field private final Ch:LgG;

.field private final Ci:Lgh;

.field private final Cj:Lgx;

.field private Ck:Z

.field private Cl:LfV;

.field private Cm:Lgk;

.field private Cn:LfM;

.field private mContext:Landroid/content/Context;

.field private final rd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;LfW;Landroid/content/Context;)V
    .locals 8

    invoke-static {}, LgG;->a()LgG;

    move-result-object v3

    invoke-static {}, Lgh;->a()Lgh;

    move-result-object v4

    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v5

    new-instance v6, Lgb;

    const-string v0, "tracking"

    invoke-direct {v6, v0}, Lgb;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;LfW;LgG;Lgh;Lgx;Lgg;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;LfW;LgG;Lgh;Lgx;Lgg;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->Ce:LfW;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->Ch:LgG;

    iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker;->Ci:Lgh;

    iput-object p5, p0, Lcom/google/android/gms/analytics/Tracker;->Cj:Lgx;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&a"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/analytics/Tracker;->Cg:Lgg;

    new-instance v0, LfV;

    invoke-direct {v0, p0}, LfV;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/analytics/Tracker;)LfV;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/gms/analytics/Tracker;)Lgk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    return-object v0
.end method


# virtual methods
.method a(Lgk;)V
    .locals 4

    const-string v0, "Loading Tracker config values."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&tid"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Tracker] trackingId loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&sf"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Tracker] sample frequency loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tracker] session timeout loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->fn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tracker] auto activity tracking loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->fo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "&aip"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Tracker] anonymize ip loaded: true"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_4
    const-string v0, "[Tracker] anonymize ip loaded: false"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cm:Lgk;

    invoke-virtual {v0}, Lgk;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    return-void
.end method

.method public enableAdvertisingIdCollection(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public enableAutoActivityTracking(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    invoke-virtual {v0, p1}, LfV;->a(Z)V

    return-void
.end method

.method public enableExceptionReporting(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->Ck:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->Ck:Z

    if-eqz p1, :cond_1

    new-instance v0, LfM;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, LfM;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cn:LfM;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cn:LfM;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Uncaught exceptions will be reported to Google Analytics."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cn:LfM;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cn:LfM;

    invoke-virtual {v0}, LfM;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_1
    const-string v0, "Uncaught exceptions will not be reported to Google Analytics."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_1
.end method

.method fn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    invoke-virtual {v0}, LfV;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method fo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    invoke-virtual {v0}, LfV;->b()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v1

    sget-object v2, Lhk;->j:Lhk;

    invoke-virtual {v1, v2}, Lhj;->a(Lhk;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "&ul"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lgl;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Ch:LgG;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Ch:LgG;

    invoke-virtual {v1, p1}, LgG;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Ch:LgG;

    invoke-virtual {v0, p1}, LgG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Ci:Lgh;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Ci:Lgh;

    invoke-virtual {v1, p1}, Lgh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Ci:Lgh;

    invoke-virtual {v0, p1}, Lgh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Cj:Lgx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Cj:Lgx;

    invoke-virtual {v1, p1}, Lgx;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cj:Lgx;

    invoke-virtual {v0, p1}, Lgx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public send(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    sget-object v2, Lhk;->l:Lhk;

    invoke-virtual {v0, v2}, Lhj;->a(Lhk;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "&tid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&tid"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "&t"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "Missing hit type (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&t"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    const-string v0, ""

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    invoke-virtual {v3}, LfV;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "&sc"

    const-string v4, "start"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v0, "screenview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pageview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "appview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v4, "&a"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v4, 0x7fffffff

    if-lt v0, v4, :cond_7

    move v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    const-string v4, "&a"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "transaction"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cg:Lgg;

    invoke-interface {v0}, Lgg;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Ce:LfW;

    invoke-virtual {v0, v2}, LfW;->a(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, LiB;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    sget-object v1, Lhk;->k:Lhk;

    invoke-virtual {v0, v1}, Lhj;->a(Lhk;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->rd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 2

    const-string v0, "&aip"

    invoke-static {p1}, Lgl;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aiid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&an"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&av"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCampaignParamsOnNextHit(Landroid/net/Uri;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://hostname/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&ci"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&cn"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "utm_content"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&cc"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&cm"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&cs"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&ck"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "dclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v3, "&dclid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->Cf:Ljava/util/Map;

    const-string v2, "&gclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&de"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dh"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&ul"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dl"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dr"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(D)V
    .locals 3

    const-string v0, "&sf"

    invoke-static {p1, p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&sd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenResolution(II)V
    .locals 3

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const-string v0, "Invalid width or height. The values should be non-negative."

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "&sr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSessionTimeout(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Cl:LfV;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, LfV;->a(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dt"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSecure(Z)V
    .locals 2

    const-string v0, "useSecure"

    invoke-static {p1}, Lgl;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&vp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
