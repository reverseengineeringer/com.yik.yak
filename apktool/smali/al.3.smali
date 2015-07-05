.class public Lal;
.super LHc;
.source "SourceFile"

# interfaces
.implements LHd;


# annotations
.annotation runtime LIh;
    a = {
        LbT;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHc",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "LHd;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "LHc",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:LaA;

.field private k:LaD;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:F

.field private u:Z

.field private final v:Lbn;

.field private w:LJa;

.field private x:Lax;

.field private y:LbT;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lal;-><init>(FLaA;Lbn;Z)V

    .line 203
    return-void
.end method

.method constructor <init>(FLaA;Lbn;Z)V
    .locals 6

    .prologue
    .line 207
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, LHE;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lal;-><init>(FLaA;Lbn;ZLjava/util/concurrent/ExecutorService;)V

    .line 209
    return-void
.end method

.method constructor <init>(FLaA;Lbn;ZLjava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, LHc;-><init>()V

    .line 99
    iput-object v0, p0, Lal;->l:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lal;->m:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lal;->n:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lal;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lal;->a:J

    .line 219
    iput p1, p0, Lal;->t:F

    .line 220
    iput-object p2, p0, Lal;->j:LaA;

    .line 221
    iput-object p3, p0, Lal;->v:Lbn;

    .line 222
    iput-boolean p4, p0, Lal;->u:Z

    .line 223
    new-instance v0, Lax;

    invoke-direct {v0, p5}, Lax;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lal;->x:Lax;

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [LHc;

    const/4 v1, 0x0

    new-instance v2, Lbw;

    invoke-direct {v2}, Lbw;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, LbM;

    invoke-direct {v2}, LbM;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lal;->h:Ljava/util/Collection;

    .line 225
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    .line 719
    new-instance v1, Lam;

    invoke-direct {v1, p0}, Lam;-><init>(Lal;)V

    .line 731
    invoke-virtual {p0}, Lal;->G()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIs;

    .line 732
    invoke-virtual {v1, v0}, LIm;->a(LIs;)V

    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lal;->D()LGS;

    move-result-object v0

    invoke-virtual {v0}, LGS;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 737
    invoke-static {}, LGS;->g()LHe;

    .line 742
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 750
    :goto_1
    return-void

    .line 744
    :catch_0
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    goto :goto_1

    .line 746
    :catch_1
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    goto :goto_1

    .line 748
    :catch_2
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    goto :goto_1
.end method

.method private static I()Z
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lal;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FI)I
    .locals 1

    .prologue
    .line 1112
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lal;FI)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lal;->a(FI)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lal;)Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lal;->i:Ljava/io/File;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 498
    invoke-static {p0, p1, p2}, Lal;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, LGS;->g()LHe;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, LHe;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lal;->v:Lbn;

    if-eqz v0, :cond_0

    new-instance v0, LaC;

    iget-object v1, p0, Lal;->v:Lbn;

    invoke-direct {v0, v1}, LaC;-><init>(Lbn;)V

    .line 310
    :goto_0
    new-instance v1, LIP;

    invoke-static {}, LGS;->g()LHe;

    move-result-object v2

    invoke-direct {v1, v2}, LIP;-><init>(LHe;)V

    iput-object v1, p0, Lal;->w:LJa;

    .line 311
    iget-object v1, p0, Lal;->w:LJa;

    invoke-interface {v1, v0}, LJa;->a(LJc;)V

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lal;->p:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lal;->B()LHI;

    move-result-object v0

    invoke-virtual {v0}, LHI;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lal;->q:Ljava/lang/String;

    .line 316
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installer package name is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lal;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lal;->p:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 321
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lal;->r:Ljava/lang/String;

    .line 322
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, "0.0"

    :goto_1
    iput-object v0, p0, Lal;->s:Ljava/lang/String;

    .line 327
    invoke-static {p1}, LHw;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lal;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_2
    invoke-virtual {p0}, Lal;->B()LHI;

    move-result-object v0

    invoke-virtual {v0}, LHI;->m()Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lal;->o:Ljava/lang/String;

    invoke-direct {p0, p1}, Lal;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lal;->b(Ljava/lang/String;Z)Lae;

    move-result-object v0

    iget-object v1, p0, Lal;->p:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_1
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    goto :goto_2
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 771
    const-class v0, Lbw;

    invoke-static {v0}, LGS;->a(Ljava/lang/Class;)LHc;

    move-result-object v0

    check-cast v0, Lbw;

    .line 772
    if-eqz v0, :cond_0

    .line 773
    new-instance v1, LHA;

    invoke-direct {v1, p0}, LHA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbw;->a(LHA;)V

    .line 776
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 568
    invoke-static {}, Lal;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 572
    :cond_0
    if-nez p0, :cond_2

    .line 573
    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    invoke-virtual {v0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    invoke-virtual {v0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LHw;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    invoke-static {}, LGS;->g()LHe;

    goto :goto_0

    .line 582
    :cond_2
    invoke-static {p0}, Lal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    iget-object v0, v0, Lal;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    iget-object v0, v0, Lal;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 586
    :cond_3
    if-nez p1, :cond_4

    .line 587
    const-string v0, ""

    .line 591
    :goto_1
    invoke-static {}, Lal;->f()Lal;

    move-result-object v2

    iget-object v2, v2, Lal;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 589
    :cond_4
    invoke-static {p1}, Lal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 593
    :cond_5
    invoke-static {}, LGS;->g()LHe;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 604
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lal;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method static synthetic a(Lal;Landroid/app/Activity;LJw;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lal;->a(Landroid/app/Activity;LJw;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/app/Activity;LJw;)Z
    .locals 6

    .prologue
    .line 986
    new-instance v4, LaX;

    invoke-direct {v4, p1, p2}, LaX;-><init>(Landroid/content/Context;LJw;)V

    .line 990
    new-instance v3, Law;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Law;-><init>(Lal;Lam;)V

    .line 994
    new-instance v0, Las;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Las;-><init>(Lal;Landroid/app/Activity;Law;LaX;LJw;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    invoke-static {}, LGS;->g()LHe;

    .line 1060
    invoke-virtual {v3}, Law;->b()V

    .line 1061
    invoke-virtual {v3}, Law;->a()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Lal;)Z
    .locals 2

    .prologue
    .line 1086
    if-eqz p1, :cond_0

    iget-object v0, p1, Lal;->k:LaD;

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    const/4 v0, 0x0

    .line 1092
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 1097
    if-eqz p0, :cond_0

    .line 1098
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1099
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1103
    :cond_0
    return-object p0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 473
    invoke-static {}, Lal;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    .line 478
    const-string v1, "prior to logging messages."

    invoke-static {v1, v0}, Lal;->a(Ljava/lang/String;Lal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lal;->a:J

    sub-long/2addr v2, v4

    .line 480
    iget-object v0, v0, Lal;->k:LaD;

    invoke-static {p0, p1, p2}, Lal;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, LaD;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1073
    const-string v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LHw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LHw;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lal;
    .locals 1

    .prologue
    .line 419
    :try_start_0
    const-class v0, Lal;

    invoke-static {v0}, LGS;->a(Ljava/lang/Class;)LHc;

    move-result-object v0

    check-cast v0, Lal;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {}, LGS;->g()LHe;

    .line 425
    throw v0
.end method


# virtual methods
.method a(LJE;)LaV;
    .locals 4

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    new-instance v0, LaW;

    invoke-virtual {p0}, Lal;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, LJE;->a:LJm;

    iget-object v2, v2, LJm;->d:Ljava/lang/String;

    iget-object v3, p0, Lal;->w:LJa;

    invoke-direct {v0, p0, v1, v2, v3}, LaW;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;)V

    .line 981
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 950
    new-instance v0, LJh;

    invoke-direct {v0, p0}, LJh;-><init>(LHc;)V

    .line 951
    invoke-interface {v0}, LJg;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LJg;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 952
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, LHc;->C()Landroid/content/Context;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lal;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 241
    iget-boolean v0, p0, Lal;->u:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 304
    :goto_0
    return v0

    .line 246
    :cond_0
    new-instance v0, LHu;

    invoke-direct {v0}, LHu;-><init>()V

    invoke-virtual {v0, p1}, LHu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-nez v0, :cond_1

    move v0, v7

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, LGS;->g()LHe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing Crashlytics "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lal;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lal;->u()Ljava/io/File;

    move-result-object v2

    const-string v3, "initialization_marker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lal;->i:Ljava/io/File;

    .line 258
    :try_start_0
    invoke-direct {p0, p1, v0}, Lal;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch LaB; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    :try_start_1
    new-instance v5, Lbs;

    invoke-virtual {p0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lal;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lal;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lbs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, LGS;->g()LHe;

    .line 264
    new-instance v0, LaD;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lal;->j:LaA;

    iget-object v3, p0, Lal;->x:Lax;

    invoke-virtual {p0}, Lal;->B()LHI;

    move-result-object v4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, LaD;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;LaA;Lax;LHI;Lbs;Lal;)V

    iput-object v0, p0, Lal;->k:LaD;

    .line 275
    invoke-virtual {p0}, Lal;->s()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch LaB; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 280
    :try_start_2
    iget-object v1, p0, Lal;->k:LaD;

    invoke-virtual {v1}, LaD;->b()V

    .line 282
    iget-object v1, p0, Lal;->k:LaD;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 283
    invoke-static {}, LGS;->g()LHe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch LaB; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {p1}, LHw;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0}, Lal;->H()V

    move v0, v7

    .line 294
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    move v0, v7

    :goto_2
    invoke-static {}, LGS;->g()LHe;
    :try_end_3
    .catch LaB; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 297
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, LIt;

    invoke-direct {v1, v0}, LIt;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    move v0, v7

    .line 304
    goto/16 :goto_0

    .line 285
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method b(Ljava/lang/String;Z)Lae;
    .locals 1

    .prologue
    .line 788
    new-instance v0, Lae;

    invoke-direct {v0, p1, p2}, Lae;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected b()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-virtual {p0}, Lal;->q()V

    .line 346
    iget-object v0, p0, Lal;->k:LaD;

    invoke-virtual {v0}, LaD;->g()V

    .line 349
    const/4 v0, 0x1

    .line 352
    :try_start_0
    invoke-static {}, LJy;->a()LJy;

    move-result-object v1

    invoke-virtual {v1}, LJy;->b()LJE;

    move-result-object v1

    .line 354
    if-nez v1, :cond_0

    .line 355
    invoke-static {}, LGS;->g()LHe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p0}, Lal;->r()V

    .line 392
    :goto_0
    return-object v3

    .line 359
    :cond_0
    :try_start_1
    iget-object v2, v1, LJE;->d:LJu;

    iget-boolean v2, v2, LJu;->c:Z

    if-eqz v2, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 361
    iget-object v2, p0, Lal;->k:LaD;

    invoke-virtual {v2}, LaD;->d()Z

    .line 363
    invoke-virtual {p0, v1}, Lal;->a(LJE;)LaV;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_3

    .line 365
    new-instance v2, Lbp;

    invoke-direct {v2, v1}, Lbp;-><init>(LaV;)V

    iget v1, p0, Lal;->t:F

    invoke-virtual {v2, v1}, Lbp;->a(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 375
    :try_start_2
    invoke-static {}, LGS;->g()LHe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Lal;->r()V

    goto :goto_0

    .line 367
    :cond_3
    :try_start_3
    invoke-static {}, LGS;->g()LHe;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, LGS;->g()LHe;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 378
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, LGS;->g()LHe;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    invoke-virtual {p0}, Lal;->r()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lal;->r()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    const-string v0, "2.2.2.37"

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "LHc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lal;->h:Ljava/util/Collection;

    return-object v0
.end method

.method g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lal;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lal;->p:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lal;->q:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lal;->s:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lal;->r:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    invoke-static {}, Lal;->f()Lal;

    move-result-object v0

    invoke-virtual {v0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, LHw;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()LaD;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lal;->k:LaD;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lal;->B()LHI;

    move-result-object v0

    invoke-virtual {v0}, LHI;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lal;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lal;->B()LHI;

    move-result-object v0

    invoke-virtual {v0}, LHI;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lal;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    invoke-virtual {p0}, Lal;->B()LHI;

    move-result-object v0

    invoke-virtual {v0}, LHI;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lal;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lal;->x:Lax;

    new-instance v1, Lan;

    invoke-direct {v1, p0}, Lan;-><init>(Lal;)V

    invoke-virtual {v0, v1}, Lax;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 856
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lal;->x:Lax;

    new-instance v1, Lao;

    invoke-direct {v1, p0}, Lao;-><init>(Lal;)V

    invoke-virtual {v0, v1}, Lax;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 877
    return-void
.end method

.method s()Z
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lal;->x:Lax;

    new-instance v1, Lap;

    invoke-direct {v1, p0}, Lap;-><init>(Lal;)V

    invoke-virtual {v0, v1}, Lax;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method t()LbW;
    .locals 2

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Lal;->y:LbT;

    if-eqz v1, :cond_0

    .line 903
    iget-object v0, p0, Lal;->y:LbT;

    invoke-interface {v0}, LbT;->a()LbW;

    move-result-object v0

    .line 905
    :cond_0
    return-object v0
.end method

.method u()Ljava/io/File;
    .locals 1

    .prologue
    .line 927
    new-instance v0, LJf;

    invoke-direct {v0, p0}, LJf;-><init>(LHc;)V

    invoke-virtual {v0}, LJf;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method v()Z
    .locals 3

    .prologue
    .line 931
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    new-instance v1, Laq;

    invoke-direct {v1, p0}, Laq;-><init>(Lal;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJy;->a(LJB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method w()Z
    .locals 3

    .prologue
    .line 944
    new-instance v0, LJh;

    invoke-direct {v0, p0}, LJh;-><init>(LHc;)V

    .line 945
    invoke-interface {v0}, LJg;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method x()Z
    .locals 3

    .prologue
    .line 955
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    new-instance v1, Lar;

    invoke-direct {v1, p0}, Lar;-><init>(Lal;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJy;->a(LJB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method y()LJx;
    .locals 1

    .prologue
    .line 1068
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    invoke-virtual {v0}, LJy;->b()LJE;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, LJE;->b:LJx;

    goto :goto_0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lal;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
