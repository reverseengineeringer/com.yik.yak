.class public Lah;
.super LHK;
.source "SourceFile"

# interfaces
.implements LHL;


# annotations
.annotation runtime LIP;
    a = {
        LbP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHK",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "LHL;"
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
            "LHK",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:Law;

.field private k:Laz;

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

.field private final v:Lbj;

.field private w:LJI;

.field private x:Lat;

.field private y:LbP;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lah;-><init>(FLaw;Lbj;Z)V

    .line 203
    return-void
.end method

.method constructor <init>(FLaw;Lbj;Z)V
    .locals 6

    .prologue
    .line 207
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, LIm;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lah;-><init>(FLaw;Lbj;ZLjava/util/concurrent/ExecutorService;)V

    .line 209
    return-void
.end method

.method constructor <init>(FLaw;Lbj;ZLjava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, LHK;-><init>()V

    .line 99
    iput-object v0, p0, Lah;->l:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lah;->m:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lah;->n:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lah;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lah;->a:J

    .line 219
    iput p1, p0, Lah;->t:F

    .line 220
    iput-object p2, p0, Lah;->j:Law;

    .line 221
    iput-object p3, p0, Lah;->v:Lbj;

    .line 222
    iput-boolean p4, p0, Lah;->u:Z

    .line 223
    new-instance v0, Lat;

    invoke-direct {v0, p5}, Lat;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lah;->x:Lat;

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [LHK;

    const/4 v1, 0x0

    new-instance v2, Lbs;

    invoke-direct {v2}, Lbs;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, LbI;

    invoke-direct {v2}, LbI;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lah;->h:Ljava/util/Collection;

    .line 225
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    .line 719
    new-instance v1, Lai;

    invoke-direct {v1, p0}, Lai;-><init>(Lah;)V

    .line 731
    invoke-virtual {p0}, Lah;->G()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJa;

    .line 732
    invoke-virtual {v1, v0}, LIU;->a(LJa;)V

    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lah;->D()LHA;

    move-result-object v0

    invoke-virtual {v0}, LHA;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 737
    invoke-static {}, LHA;->g()LHM;

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

    invoke-static {}, LHA;->g()LHM;

    goto :goto_1

    .line 746
    :catch_1
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    goto :goto_1

    .line 748
    :catch_2
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    goto :goto_1
.end method

.method private static I()Z
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lah;->u:Z

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

.method static synthetic a(Lah;FI)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lah;->a(FI)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lah;)Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lah;->i:Ljava/io/File;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 498
    invoke-static {p0, p1, p2}, Lah;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, LHA;->g()LHM;

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

    invoke-interface {v0, p0, v1, v2, v3}, LHM;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lah;->v:Lbj;

    if-eqz v0, :cond_0

    new-instance v0, Lay;

    iget-object v1, p0, Lah;->v:Lbj;

    invoke-direct {v0, v1}, Lay;-><init>(Lbj;)V

    .line 310
    :goto_0
    new-instance v1, LJx;

    invoke-static {}, LHA;->g()LHM;

    move-result-object v2

    invoke-direct {v1, v2}, LJx;-><init>(LHM;)V

    iput-object v1, p0, Lah;->w:LJI;

    .line 311
    iget-object v1, p0, Lah;->w:LJI;

    invoke-interface {v1, v0}, LJI;->a(LJK;)V

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->p:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lah;->B()LIq;

    move-result-object v0

    invoke-virtual {v0}, LIq;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->q:Ljava/lang/String;

    .line 316
    invoke-static {}, LHA;->g()LHM;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installer package name is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lah;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lah;->p:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 321
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lah;->r:Ljava/lang/String;

    .line 322
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, "0.0"

    :goto_1
    iput-object v0, p0, Lah;->s:Ljava/lang/String;

    .line 327
    invoke-static {p1}, LIe;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_2
    invoke-virtual {p0}, Lah;->B()LIq;

    move-result-object v0

    invoke-virtual {v0}, LIq;->m()Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lah;->o:Ljava/lang/String;

    invoke-direct {p0, p1}, Lah;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lah;->b(Ljava/lang/String;Z)Laa;

    move-result-object v0

    iget-object v1, p0, Lah;->p:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Laa;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {}, LHA;->g()LHM;

    goto :goto_2
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 771
    const-class v0, Lbs;

    invoke-static {v0}, LHA;->a(Ljava/lang/Class;)LHK;

    move-result-object v0

    check-cast v0, Lbs;

    .line 772
    if-eqz v0, :cond_0

    .line 773
    new-instance v1, LIi;

    invoke-direct {v1, p0}, LIi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbs;->a(LIi;)V

    .line 776
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 568
    invoke-static {}, Lah;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 572
    :cond_0
    if-nez p0, :cond_2

    .line 573
    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->C()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LIe;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 582
    :cond_2
    invoke-static {p0}, Lah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    iget-object v0, v0, Lah;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    iget-object v0, v0, Lah;->g:Ljava/util/concurrent/ConcurrentHashMap;

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
    invoke-static {}, Lah;->f()Lah;

    move-result-object v2

    iget-object v2, v2, Lah;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 589
    :cond_4
    invoke-static {p1}, Lah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 593
    :cond_5
    invoke-static {}, LHA;->g()LHM;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 604
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lah;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method static synthetic a(Lah;Landroid/app/Activity;LKe;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lah;->a(Landroid/app/Activity;LKe;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/app/Activity;LKe;)Z
    .locals 6

    .prologue
    .line 986
    new-instance v4, LaT;

    invoke-direct {v4, p1, p2}, LaT;-><init>(Landroid/content/Context;LKe;)V

    .line 990
    new-instance v3, Las;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Las;-><init>(Lah;Lai;)V

    .line 994
    new-instance v0, Lao;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lao;-><init>(Lah;Landroid/app/Activity;Las;LaT;LKe;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    invoke-static {}, LHA;->g()LHM;

    .line 1060
    invoke-virtual {v3}, Las;->b()V

    .line 1061
    invoke-virtual {v3}, Las;->a()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Lah;)Z
    .locals 2

    .prologue
    .line 1086
    if-eqz p1, :cond_0

    iget-object v0, p1, Lah;->k:Laz;

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    invoke-static {}, LHA;->g()LHM;

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
    invoke-static {}, Lah;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    .line 478
    const-string v1, "prior to logging messages."

    invoke-static {v1, v0}, Lah;->a(Ljava/lang/String;Lah;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lah;->a:J

    sub-long/2addr v2, v4

    .line 480
    iget-object v0, v0, Lah;->k:Laz;

    invoke-static {p0, p1, p2}, Lah;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Laz;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1073
    const-string v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LIe;->a(I)Ljava/lang/String;

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

.method public static f()Lah;
    .locals 1

    .prologue
    .line 419
    :try_start_0
    const-class v0, Lah;

    invoke-static {v0}, LHA;->a(Ljava/lang/Class;)LHK;

    move-result-object v0

    check-cast v0, Lah;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {}, LHA;->g()LHM;

    .line 425
    throw v0
.end method


# virtual methods
.method a(LKm;)LaR;
    .locals 4

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    new-instance v0, LaS;

    invoke-virtual {p0}, Lah;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, LKm;->a:LJU;

    iget-object v2, v2, LJU;->d:Ljava/lang/String;

    iget-object v3, p0, Lah;->w:LJI;

    invoke-direct {v0, p0, v1, v2, v3}, LaS;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;)V

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
    new-instance v0, LJP;

    invoke-direct {v0, p0}, LJP;-><init>(LHK;)V

    .line 951
    invoke-interface {v0}, LJO;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LJO;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 952
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, LHK;->C()Landroid/content/Context;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lah;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 241
    iget-boolean v0, p0, Lah;->u:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 304
    :goto_0
    return v0

    .line 246
    :cond_0
    new-instance v0, LIc;

    invoke-direct {v0}, LIc;-><init>()V

    invoke-virtual {v0, p1}, LIc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-nez v0, :cond_1

    move v0, v7

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, LHA;->g()LHM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing Crashlytics "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lah;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lah;->u()Ljava/io/File;

    move-result-object v2

    const-string v3, "initialization_marker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lah;->i:Ljava/io/File;

    .line 258
    :try_start_0
    invoke-direct {p0, p1, v0}, Lah;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lax; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    :try_start_1
    new-instance v5, Lbo;

    invoke-virtual {p0}, Lah;->C()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lah;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lah;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lbo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, LHA;->g()LHM;

    .line 264
    new-instance v0, Laz;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lah;->j:Law;

    iget-object v3, p0, Lah;->x:Lat;

    invoke-virtual {p0}, Lah;->B()LIq;

    move-result-object v4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Laz;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Law;Lat;LIq;Lbo;Lah;)V

    iput-object v0, p0, Lah;->k:Laz;

    .line 275
    invoke-virtual {p0}, Lah;->s()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lax; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 280
    :try_start_2
    iget-object v1, p0, Lah;->k:Laz;

    invoke-virtual {v1}, Laz;->b()V

    .line 282
    iget-object v1, p0, Lah;->k:Laz;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 283
    invoke-static {}, LHA;->g()LHM;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lax; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {p1}, LIe;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0}, Lah;->H()V

    move v0, v7

    .line 294
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    move v0, v7

    :goto_2
    invoke-static {}, LHA;->g()LHM;
    :try_end_3
    .catch Lax; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 297
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, LJb;

    invoke-direct {v1, v0}, LJb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    move v0, v7

    .line 304
    goto/16 :goto_0

    .line 285
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method b(Ljava/lang/String;Z)Laa;
    .locals 1

    .prologue
    .line 788
    new-instance v0, Laa;

    invoke-direct {v0, p1, p2}, Laa;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected b()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-virtual {p0}, Lah;->q()V

    .line 346
    iget-object v0, p0, Lah;->k:Laz;

    invoke-virtual {v0}, Laz;->g()V

    .line 349
    const/4 v0, 0x1

    .line 352
    :try_start_0
    invoke-static {}, LKg;->a()LKg;

    move-result-object v1

    invoke-virtual {v1}, LKg;->b()LKm;

    move-result-object v1

    .line 354
    if-nez v1, :cond_0

    .line 355
    invoke-static {}, LHA;->g()LHM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p0}, Lah;->r()V

    .line 392
    :goto_0
    return-object v3

    .line 359
    :cond_0
    :try_start_1
    iget-object v2, v1, LKm;->d:LKc;

    iget-boolean v2, v2, LKc;->c:Z

    if-eqz v2, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 361
    iget-object v2, p0, Lah;->k:Laz;

    invoke-virtual {v2}, Laz;->d()Z

    .line 363
    invoke-virtual {p0, v1}, Lah;->a(LKm;)LaR;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_3

    .line 365
    new-instance v2, Lbl;

    invoke-direct {v2, v1}, Lbl;-><init>(LaR;)V

    iget v1, p0, Lah;->t:F

    invoke-virtual {v2, v1}, Lbl;->a(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 375
    :try_start_2
    invoke-static {}, LHA;->g()LHM;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Lah;->r()V

    goto :goto_0

    .line 367
    :cond_3
    :try_start_3
    invoke-static {}, LHA;->g()LHM;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, LHA;->g()LHM;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 378
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, LHA;->g()LHM;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    invoke-virtual {p0}, Lah;->r()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lah;->r()V

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
            "LHK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lah;->h:Ljava/util/Collection;

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
    iget-object v0, p0, Lah;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lah;->p:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lah;->q:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lah;->s:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lah;->r:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    invoke-static {}, Lah;->f()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, LIe;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()Laz;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lah;->k:Laz;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lah;->B()LIq;

    move-result-object v0

    invoke-virtual {v0}, LIq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah;->l:Ljava/lang/String;

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
    invoke-virtual {p0}, Lah;->B()LIq;

    move-result-object v0

    invoke-virtual {v0}, LIq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah;->m:Ljava/lang/String;

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
    invoke-virtual {p0}, Lah;->B()LIq;

    move-result-object v0

    invoke-virtual {v0}, LIq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah;->n:Ljava/lang/String;

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
    iget-object v0, p0, Lah;->x:Lat;

    new-instance v1, Laj;

    invoke-direct {v1, p0}, Laj;-><init>(Lah;)V

    invoke-virtual {v0, v1}, Lat;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 856
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lah;->x:Lat;

    new-instance v1, Lak;

    invoke-direct {v1, p0}, Lak;-><init>(Lah;)V

    invoke-virtual {v0, v1}, Lat;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 877
    return-void
.end method

.method s()Z
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lah;->x:Lat;

    new-instance v1, Lal;

    invoke-direct {v1, p0}, Lal;-><init>(Lah;)V

    invoke-virtual {v0, v1}, Lat;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method t()LbS;
    .locals 2

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Lah;->y:LbP;

    if-eqz v1, :cond_0

    .line 903
    iget-object v0, p0, Lah;->y:LbP;

    invoke-interface {v0}, LbP;->a()LbS;

    move-result-object v0

    .line 905
    :cond_0
    return-object v0
.end method

.method u()Ljava/io/File;
    .locals 1

    .prologue
    .line 927
    new-instance v0, LJN;

    invoke-direct {v0, p0}, LJN;-><init>(LHK;)V

    invoke-virtual {v0}, LJN;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method v()Z
    .locals 3

    .prologue
    .line 931
    invoke-static {}, LKg;->a()LKg;

    move-result-object v0

    new-instance v1, Lam;

    invoke-direct {v1, p0}, Lam;-><init>(Lah;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LKg;->a(LKj;Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, LJP;

    invoke-direct {v0, p0}, LJP;-><init>(LHK;)V

    .line 945
    invoke-interface {v0}, LJO;->a()Landroid/content/SharedPreferences;

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
    invoke-static {}, LKg;->a()LKg;

    move-result-object v0

    new-instance v1, Lan;

    invoke-direct {v1, p0}, Lan;-><init>(Lah;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LKg;->a(LKj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method y()LKf;
    .locals 1

    .prologue
    .line 1068
    invoke-static {}, LKg;->a()LKg;

    move-result-object v0

    invoke-virtual {v0}, LKg;->b()LKm;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, LKm;->b:LKf;

    goto :goto_0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lah;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
