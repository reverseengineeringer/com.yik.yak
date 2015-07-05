.class LaD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/Map;
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


# instance fields
.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final j:Ljava/io/File;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Lax;

.field private final o:LHI;

.field private p:Z

.field private final q:Lal;

.field private final r:LaZ;

.field private final s:Lbs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, LaE;

    invoke-direct {v0}, LaE;-><init>()V

    sput-object v0, LaD;->a:Ljava/io/FilenameFilter;

    .line 130
    new-instance v0, LaK;

    invoke-direct {v0}, LaK;-><init>()V

    sput-object v0, LaD;->b:Ljava/util/Comparator;

    .line 137
    new-instance v0, LaL;

    invoke-direct {v0}, LaL;-><init>()V

    sput-object v0, LaD;->c:Ljava/util/Comparator;

    .line 147
    new-instance v0, LaM;

    invoke-direct {v0}, LaM;-><init>()V

    sput-object v0, LaD;->d:Ljava/io/FilenameFilter;

    .line 154
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LaD;->e:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LaD;->f:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;LaA;Lax;LHI;Lbs;Lal;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LaD;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LaD;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, LaD;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 218
    iput-object p3, p0, LaD;->n:Lax;

    .line 219
    iput-object p4, p0, LaD;->o:LHI;

    .line 220
    iput-object p6, p0, LaD;->q:Lal;

    .line 221
    iput-object p5, p0, LaD;->s:Lbs;

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {p6}, Lal;->u()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, LaD;->j:Ljava/io/File;

    .line 224
    new-instance v0, LaZ;

    invoke-virtual {p6}, Lal;->C()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LaD;->j:Ljava/io/File;

    invoke-direct {v0, v1, v2}, LaZ;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, LaD;->r:LaZ;

    .line 226
    invoke-direct {p0, p2}, LaD;->a(LaA;)V

    .line 228
    new-instance v0, LaN;

    invoke-direct {v0, p0}, LaN;-><init>(LaD;)V

    iput-object v0, p0, LaD;->m:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance v1, LaO;

    invoke-direct {v1, p0}, LaO;-><init>(LaD;)V

    iput-object v1, p0, LaD;->l:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p6}, Lal;->C()Landroid/content/Context;

    move-result-object v2

    .line 248
    iget-object v3, p0, LaD;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, LaD;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, LaD;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LaD;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 683
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 685
    invoke-virtual {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v3

    .line 686
    sget-object v1, LaD;->b:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 687
    array-length v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 689
    :goto_0
    if-ge v1, v4, :cond_0

    .line 690
    aget-object v5, v3, v1

    invoke-direct {p0, v5}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 691
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_0
    new-instance v1, LaR;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, LaR;-><init>(LaE;)V

    invoke-direct {p0, v1}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 696
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 697
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 698
    sget-object v6, LaD;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 700
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 701
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 703
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 704
    invoke-static {}, LGS;->g()LHe;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming open session file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 696
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_2
    return-void
.end method

.method private a(LaA;)V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, LGS;->g()LHe;

    .line 319
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LaD;->q:Lal;

    invoke-virtual {v1}, Lal;->u()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 325
    :cond_0
    return-void
.end method

.method static synthetic a(LaD;LbW;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, LaD;->a(LbW;)V

    return-void
.end method

.method static synthetic a(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, LaD;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lah;)V
    .locals 1

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 603
    :try_start_0
    invoke-virtual {p1}, Lah;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    goto :goto_0
.end method

.method private a(Laj;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 1140
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1143
    long-to-int v0, v0

    new-array v3, v0, [B

    .line 1145
    const/4 v2, 0x0

    .line 1148
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    const/4 v0, 0x0

    .line 1151
    :goto_0
    :try_start_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ltz v2, :cond_0

    .line 1155
    add-int/2addr v0, v2

    goto :goto_0

    .line 1158
    :cond_0
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p1, v3}, Laj;->a([B)V

    .line 1166
    :goto_1
    return-void

    .line 1158
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_1
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 1158
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Laj;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1117
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SessionUser"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "SessionApp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "SessionOS"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "SessionDevice"

    aput-object v3, v2, v0

    .line 1121
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1122
    new-instance v5, LaS;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LaS;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1125
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1126
    invoke-static {}, LGS;->g()LHe;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data for session ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1121
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    invoke-static {}, LGS;->g()LHe;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collecting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " data for session ID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1131
    aget-object v4, v5, v1

    invoke-direct {p0, p1, v4}, LaD;->a(Laj;Ljava/io/File;)V

    goto :goto_1

    .line 1134
    :cond_1
    return-void
.end method

.method private a(Laj;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 23

    .prologue
    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->q:Lal;

    invoke-virtual {v2}, Lal;->C()Landroid/content/Context;

    move-result-object v7

    .line 908
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 909
    invoke-static {v7}, LHw;->c(Landroid/content/Context;)F

    move-result v10

    .line 910
    move-object/from16 v0, p0

    iget-boolean v2, v0, LaD;->p:Z

    invoke-static {v7, v2}, LHw;->a(Landroid/content/Context;Z)I

    move-result v11

    .line 911
    invoke-static {v7}, LHw;->d(Landroid/content/Context;)Z

    move-result v12

    .line 912
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v13, v2, Landroid/content/res/Configuration;->orientation:I

    .line 913
    invoke-static {}, LHw;->b()J

    move-result-wide v2

    invoke-static {v7}, LHw;->b(Landroid/content/Context;)J

    move-result-wide v8

    sub-long v14, v2, v8

    .line 915
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LHw;->b(Ljava/lang/String;)J

    move-result-wide v16

    .line 918
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, LHw;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v18

    .line 920
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 921
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    .line 924
    if-eqz p6, :cond_0

    .line 925
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    .line 926
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    .line 927
    const/4 v2, 0x0

    .line 928
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 929
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    aput-object v3, v9, v6

    .line 930
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    .line 932
    goto :goto_0

    .line 936
    :cond_0
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Thread;

    .line 940
    :cond_1
    const-string v2, "com.crashlytics.CollectCustomKeys"

    const/4 v3, 0x1

    invoke-static {v7, v2, v3}, LHw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 941
    new-instance v22, Ljava/util/TreeMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeMap;-><init>()V

    .line 952
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->s:Lbs;

    move-object/from16 v0, p0

    iget-object v3, v0, LaD;->r:LaZ;

    invoke-virtual {v3}, LaZ;->a()LHM;

    move-result-object v21

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v22}, Lbs;->a(Laj;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List;[Ljava/lang/StackTraceElement;LHM;Ljava/util/Map;)V

    .line 956
    return-void

    .line 943
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->q:Lal;

    invoke-virtual {v2}, Lal;->g()Ljava/util/Map;

    move-result-object v2

    .line 944
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_3

    .line 948
    new-instance v22, Ljava/util/TreeMap;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object/from16 v22, v2

    goto :goto_1
.end method

.method private a(Laj;[Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1102
    sget-object v1, LHw;->a:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1104
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 1106
    :try_start_0
    invoke-static {}, LGS;->g()LHe;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Found Non Fatal for session ID %s in %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1109
    invoke-direct {p0, p1, v2}, LaD;->a(Laj;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v2

    invoke-static {}, LGS;->g()LHe;

    goto :goto_1

    .line 1114
    :cond_0
    return-void
.end method

.method private a(LbW;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 420
    .line 423
    :try_start_0
    invoke-direct {p0}, LaD;->j()Ljava/lang/String;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_0

    .line 426
    new-instance v1, Lah;

    iget-object v3, p0, LaD;->j:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionCrash"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :try_start_1
    invoke-static {v1}, Laj;->a(Ljava/io/OutputStream;)Laj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 429
    :try_start_2
    invoke-static {p1, v0}, Lbb;->a(LbW;Laj;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 439
    :goto_0
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v0, v2}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 440
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 442
    :goto_1
    return-void

    .line 431
    :cond_0
    :try_start_3
    invoke-static {}, LGS;->g()LHe;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 435
    :goto_2
    :try_start_4
    invoke-static {}, LGS;->g()LHe;

    .line 437
    invoke-static {v0, v2}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 439
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 440
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 440
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 439
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 434
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1019
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting session parts for ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    new-instance v0, LaS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "SessionCrash"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, LaS;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 1023
    if-eqz v6, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 1024
    :goto_0
    invoke-static {}, LGS;->g()LHe;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Session %s has fatal exception: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p2, v7, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1027
    new-instance v3, LaS;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "SessionEvent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, LaS;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1029
    if-eqz v5, :cond_4

    array-length v3, v5

    if-lez v3, :cond_4

    move v3, v1

    .line 1030
    :goto_1
    invoke-static {}, LGS;->g()LHe;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Session %s has non-fatal exceptions: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1033
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    .line 1039
    :cond_0
    :try_start_0
    new-instance v2, Lah;

    iget-object v1, p0, LaD;->j:Ljava/io/File;

    invoke-direct {v2, v1, p2}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :try_start_1
    invoke-static {v2}, Laj;->a(Ljava/io/OutputStream;)Laj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1042
    :try_start_2
    invoke-static {}, LGS;->g()LHe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collecting SessionStart data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1044
    invoke-direct {p0, v1, p1}, LaD;->a(Laj;Ljava/io/File;)V

    .line 1046
    const/4 v4, 0x4

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v1, v4, v8, v9}, Laj;->a(IJ)V

    .line 1047
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v0}, Laj;->a(IZ)V

    .line 1049
    invoke-direct {p0, v1, p2}, LaD;->a(Laj;Ljava/lang/String;)V

    .line 1051
    if-eqz v3, :cond_1

    .line 1052
    array-length v3, v5

    if-le v3, p3, :cond_6

    .line 1053
    invoke-static {}, LGS;->g()LHe;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Trimming down to %d logged exceptions."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1056
    invoke-direct {p0, p2, p3}, LaD;->a(Ljava/lang/String;I)V

    .line 1057
    new-instance v3, LaS;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, LaS;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1061
    :goto_2
    invoke-direct {p0, v1, v3, p2}, LaD;->a(Laj;[Ljava/io/File;Ljava/lang/String;)V

    .line 1064
    :cond_1
    if-eqz v0, :cond_2

    .line 1065
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {p0, v1, v0}, LaD;->a(Laj;Ljava/io/File;)V

    .line 1068
    :cond_2
    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Laj;->b(II)V

    .line 1070
    const/16 v0, 0xc

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Laj;->c(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1080
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1089
    const-string v0, "Failed to close CLS file"

    invoke-static {v2, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1096
    :goto_3
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing session part files for ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    invoke-direct {p0, p2}, LaD;->a(Ljava/lang/String;)V

    .line 1098
    return-void

    :cond_3
    move v0, v2

    .line 1023
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 1029
    goto/16 :goto_1

    .line 1071
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1072
    :goto_4
    :try_start_3
    invoke-static {}, LGS;->g()LHe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write session file for session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1074
    invoke-static {v0, v4}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1080
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0, v4}, LaD;->a(Lah;)V

    goto :goto_3

    .line 1080
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_5
    const-string v3, "Error flushing session file stream"

    invoke-static {v1, v3}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1089
    const-string v1, "Failed to close CLS file"

    invoke-static {v2, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_5
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No events present for session ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 1080
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v4

    goto :goto_5

    .line 1071
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object v3, v5

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 615
    invoke-direct {p0, p1}, LaD;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 616
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, LaD;->j:Ljava/io/File;

    new-instance v1, LaS;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LaS;-><init>(Ljava/lang/String;)V

    sget-object v2, LaD;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lbu;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 662
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 776
    .line 779
    :try_start_0
    new-instance v6, Lah;

    iget-object v0, p0, LaD;->j:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BeginSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 780
    :try_start_1
    invoke-static {v6}, Laj;->a(Ljava/io/OutputStream;)Laj;

    move-result-object v1

    .line 782
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Crashlytics Android SDK/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, LaD;->q:Lal;

    invoke-virtual {v5}, Lal;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 786
    iget-object v0, p0, LaD;->s:Lbs;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lbs;->a(Laj;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 791
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 792
    const-string v0, "Failed to close begin session file."

    invoke-static {v6, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 794
    return-void

    .line 787
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 788
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 789
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    :catchall_0
    move-exception v0

    move-object v6, v2

    :goto_1
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 792
    const-string v1, "Failed to close begin session file."

    invoke-static {v6, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 791
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 787
    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_0
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, LaD;->b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 299
    invoke-direct {p0}, LaD;->l()V

    .line 300
    invoke-direct {p0}, LaD;->k()V

    .line 302
    invoke-virtual {p0}, LaD;->f()V

    .line 304
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, LaD;->o()V

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic a(LaD;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, LaD;->p:Z

    return p1
.end method

.method static synthetic a(LaD;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, LaD;->j:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, LaD;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(LaD;)LaZ;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LaD;->r:LaZ;

    return-object v0
.end method

.method private b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 378
    .line 383
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, LaD;->j:Ljava/io/File;

    const-string v3, "crash_marker"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 385
    invoke-direct {p0}, LaD;->j()Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 390
    invoke-static {v0}, Lal;->a(Ljava/lang/String;)V

    .line 392
    new-instance v7, Lah;

    iget-object v2, p0, LaD;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    invoke-static {v7}, Laj;->a(Ljava/io/OutputStream;)Laj;

    move-result-object v1

    .line 394
    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, LaD;->a(Laj;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v7

    .line 404
    :goto_0
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 407
    :goto_1
    return-void

    .line 396
    :cond_0
    :try_start_2
    invoke-static {}, LGS;->g()LHe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    move-object v7, v1

    .line 400
    :goto_2
    :try_start_3
    invoke-static {}, LGS;->g()LHe;

    .line 402
    invoke-static {v0, v7}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v7, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 404
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 399
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 624
    new-instance v0, LaT;

    invoke-direct {v0, p1}, LaT;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 647
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method static synthetic c(LaD;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, LaD;->k()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 797
    .line 800
    :try_start_0
    new-instance v7, Lah;

    iget-object v0, p0, LaD;->j:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 801
    :try_start_1
    invoke-static {v7}, Laj;->a(Ljava/io/OutputStream;)Laj;

    move-result-object v1

    .line 803
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->h()Ljava/lang/String;

    move-result-object v2

    .line 804
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->k()Ljava/lang/String;

    move-result-object v3

    .line 805
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->j()Ljava/lang/String;

    move-result-object v4

    .line 806
    iget-object v0, p0, LaD;->o:LHI;

    invoke-virtual {v0}, LHI;->b()Ljava/lang/String;

    move-result-object v5

    .line 807
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHC;->a(Ljava/lang/String;)LHC;

    move-result-object v0

    invoke-virtual {v0}, LHC;->a()I

    move-result v6

    .line 810
    iget-object v0, p0, LaD;->s:Lbs;

    invoke-virtual/range {v0 .. v6}, Lbs;->a(Laj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 817
    const-string v0, "Failed to flush to session app file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v0, "Failed to close session app file."

    invoke-static {v7, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 820
    return-void

    .line 813
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 814
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 815
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 817
    :catchall_0
    move-exception v0

    move-object v7, v2

    :goto_1
    const-string v2, "Failed to flush to session app file."

    invoke-static {v1, v2}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v1, "Failed to close session app file."

    invoke-static {v7, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 817
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 813
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_0
.end method

.method static synthetic d(LaD;)Lal;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LaD;->q:Lal;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 823
    .line 827
    :try_start_0
    new-instance v2, Lah;

    iget-object v0, p0, LaD;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionOS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 829
    :try_start_1
    invoke-static {v2}, Laj;->a(Ljava/io/OutputStream;)Laj;

    move-result-object v1

    .line 831
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LHw;->g(Landroid/content/Context;)Z

    move-result v0

    .line 833
    iget-object v3, p0, LaD;->s:Lbs;

    invoke-virtual {v3, v1, v0}, Lbs;->a(Laj;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    const-string v0, "Failed to flush to session OS file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 839
    const-string v0, "Failed to close session OS file."

    invoke-static {v2, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 841
    return-void

    .line 834
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 835
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 836
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 838
    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v1, v3}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 839
    const-string v1, "Failed to close session OS file."

    invoke-static {v2, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 838
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 834
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(LaD;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, LaD;->l()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 18

    .prologue
    .line 845
    const/4 v4, 0x0

    .line 846
    const/4 v3, 0x0

    .line 848
    :try_start_0
    new-instance v17, Lah;

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->j:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 849
    :try_start_1
    invoke-static/range {v17 .. v17}, Laj;->a(Ljava/io/OutputStream;)Laj;

    move-result-object v3

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->q:Lal;

    invoke-virtual {v2}, Lal;->C()Landroid/content/Context;

    move-result-object v2

    .line 852
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, LaD;->o:LHI;

    invoke-virtual {v4}, LHI;->f()Ljava/lang/String;

    move-result-object v4

    .line 855
    invoke-static {}, LHw;->a()I

    move-result v5

    .line 856
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 857
    invoke-static {}, LHw;->b()J

    move-result-wide v8

    .line 858
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    .line 859
    invoke-static {v2}, LHw;->f(Landroid/content/Context;)Z

    move-result v12

    .line 861
    move-object/from16 v0, p0

    iget-object v6, v0, LaD;->o:LHI;

    invoke-virtual {v6}, LHI;->g()Ljava/util/Map;

    move-result-object v13

    .line 863
    invoke-static {v2}, LHw;->h(Landroid/content/Context;)I

    move-result v14

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->s:Lbs;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v2 .. v16}, Lbs;->a(Laj;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 873
    const-string v2, "Failed to flush session device info."

    invoke-static {v3, v2}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 874
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 876
    return-void

    .line 869
    :catch_0
    move-exception v2

    .line 870
    :goto_0
    :try_start_2
    invoke-static {v2, v4}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 871
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 873
    :catchall_0
    move-exception v2

    move-object/from16 v17, v4

    :goto_1
    const-string v4, "Failed to flush session device info."

    invoke-static {v3, v4}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 874
    const-string v3, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v3}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 873
    :catchall_1
    move-exception v2

    move-object/from16 v17, v4

    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_1

    .line 869
    :catch_1
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 879
    .line 882
    :try_start_0
    new-instance v2, Lah;

    iget-object v0, p0, LaD;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lah;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 883
    :try_start_1
    invoke-static {v2}, Laj;->a(Ljava/io/OutputStream;)Laj;

    move-result-object v1

    .line 885
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->n()Ljava/lang/String;

    move-result-object v0

    .line 886
    iget-object v3, p0, LaD;->q:Lal;

    invoke-virtual {v3}, Lal;->p()Ljava/lang/String;

    move-result-object v3

    .line 887
    iget-object v4, p0, LaD;->q:Lal;

    invoke-virtual {v4}, Lal;->o()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 890
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 899
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 900
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 902
    :goto_0
    return-void

    .line 894
    :cond_0
    :try_start_2
    iget-object v5, p0, LaD;->s:Lbs;

    invoke-virtual {v5, v1, v0, v3, v4}, Lbs;->a(Laj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 900
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 896
    :goto_1
    :try_start_3
    invoke-static {v0, v2}, LaY;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 897
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 899
    :catchall_0
    move-exception v0

    :goto_2
    const-string v3, "Failed to flush session user file."

    invoke-static {v1, v3}, LHw;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 900
    const-string v1, "Failed to close session user file."

    invoke-static {v2, v1}, LHw;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 899
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 895
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic h()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, LaD;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    sget-object v0, LaD;->f:Ljava/util/Map;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    new-instance v0, LaS;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, LaS;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 475
    sget-object v1, LaD;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 476
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 538
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 539
    new-instance v1, Lag;

    iget-object v2, p0, LaD;->o:LHI;

    invoke-direct {v1, v2}, Lag;-><init>(LHI;)V

    invoke-virtual {v1}, Lag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {}, LGS;->g()LHe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening an new session with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    invoke-direct {p0, v1, v0}, LaD;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 545
    invoke-direct {p0, v1}, LaD;->c(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, v1}, LaD;->d(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, v1}, LaD;->e(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    .line 554
    const/16 v0, 0x8

    invoke-direct {p0, v0}, LaD;->a(I)V

    .line 556
    invoke-direct {p0}, LaD;->j()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_2

    .line 561
    invoke-direct {p0, v0}, LaD;->f(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->y()LJx;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    .line 566
    iget v1, v0, LJx;->c:I

    .line 568
    invoke-static {}, LGS;->g()LHe;

    .line 569
    invoke-virtual {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 572
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 573
    invoke-direct {p0, v4}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-static {}, LGS;->g()LHe;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    invoke-direct {p0, v4, v5, v1}, LaD;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {}, LGS;->g()LHe;

    .line 588
    :cond_1
    :goto_1
    return-void

    .line 586
    :cond_2
    invoke-static {}, LGS;->g()LHe;

    goto :goto_1
.end method

.method private m()[Ljava/io/File;
    .locals 1

    .prologue
    .line 628
    sget-object v0, LaD;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 760
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->u()Ljava/io/File;

    move-result-object v0

    const-string v2, "invalidClsFiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 762
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 767
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 773
    :cond_1
    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    .line 1177
    invoke-direct {p0}, LaD;->m()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1181
    iget-object v4, p0, LaD;->n:Lax;

    new-instance v5, LaJ;

    invoke-direct {v5, p0, v3}, LaJ;-><init>(LaD;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lax;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    return-void
.end method


# virtual methods
.method a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, LaD;->n:Lax;

    new-instance v1, LaQ;

    invoke-direct {v1, p0, p1, p2, p3}, LaQ;-><init>(LaD;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lax;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 354
    return-void
.end method

.method a([Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 729
    invoke-direct {p0}, LaD;->n()V

    .line 734
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 735
    invoke-static {}, LGS;->g()LHe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid session part file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    invoke-direct {p0, v0}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v4, LaI;

    invoke-direct {v4, p0, v0}, LaI;-><init>(LaD;Ljava/lang/String;)V

    .line 745
    invoke-static {}, LGS;->g()LHe;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting all part files for invalid session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    invoke-direct {p0, v4}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 748
    invoke-static {}, LGS;->g()LHe;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting session file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 734
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 752
    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, LaD;->n:Lax;

    new-instance v1, LaF;

    invoke-direct {v1, p0}, LaF;-><init>(LaD;)V

    invoke-virtual {v0, v1}, Lax;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 461
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, LaD;->n:Lax;

    new-instance v1, LaG;

    invoke-direct {v1, p0}, LaG;-><init>(LaD;)V

    invoke-virtual {v0, v1}, Lax;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method e()[Ljava/io/File;
    .locals 2

    .prologue
    .line 632
    new-instance v0, LaS;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, LaS;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 4

    .prologue
    .line 675
    iget-object v0, p0, LaD;->j:Ljava/io/File;

    sget-object v1, LaD;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, LaD;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lbu;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 677
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, LaD;->n:Lax;

    new-instance v1, LaH;

    invoke-direct {v1, p0}, LaH;-><init>(LaD;)V

    invoke-virtual {v0, v1}, Lax;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 721
    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" from thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    iget-object v0, p0, LaD;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, LGS;->g()LHe;

    .line 266
    iget-object v0, p0, LaD;->q:Lal;

    invoke-virtual {v0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    .line 267
    iget-object v1, p0, LaD;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v1, p0, LaD;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 274
    iget-object v1, p0, LaD;->n:Lax;

    new-instance v2, LaP;

    invoke-direct {v2, p0, v0, p1, p2}, LaP;-><init>(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lax;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :try_start_2
    invoke-static {}, LGS;->g()LHe;

    .line 288
    iget-object v0, p0, LaD;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, LGS;->g()LHe;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :try_start_4
    invoke-static {}, LGS;->g()LHe;

    .line 288
    iget-object v0, p0, LaD;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, LGS;->g()LHe;

    .line 288
    iget-object v1, p0, LaD;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v1, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
