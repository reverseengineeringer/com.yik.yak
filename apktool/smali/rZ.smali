.class public LrZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "LrZ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lsb;

.field private final b:Landroid/content/Context;

.field private final c:LsD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    sput v0, LrZ;->d:I

    .line 568
    const/4 v0, 0x1

    sput v0, LrZ;->e:I

    .line 569
    const/4 v0, 0x2

    sput v0, LrZ;->f:I

    .line 570
    const/4 v0, 0x5

    sput v0, LrZ;->g:I

    .line 571
    const/16 v0, 0xc

    sput v0, LrZ;->h:I

    .line 572
    const/16 v0, 0xd

    sput v0, LrZ;->i:I

    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LrZ;->j:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, LrZ;->b:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p1}, LrZ;->c(Landroid/content/Context;)LsD;

    move-result-object v0

    iput-object v0, p0, LrZ;->c:LsD;

    .line 45
    new-instance v0, Lsb;

    invoke-direct {v0, p0}, Lsb;-><init>(LrZ;)V

    iput-object v0, p0, LrZ;->a:Lsb;

    .line 46
    return-void
.end method

.method static synthetic a(LrZ;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, LrZ;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)LrZ;
    .locals 4

    .prologue
    .line 56
    sget-object v1, LrZ;->j:Ljava/util/Map;

    monitor-enter v1

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 59
    sget-object v0, LrZ;->j:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, LrZ;

    invoke-direct {v0, v2}, LrZ;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v3, LrZ;->j:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_0
    monitor-exit v1

    return-object v0

    .line 64
    :cond_0
    sget-object v0, LrZ;->j:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrZ;

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 164
    sget-boolean v0, LsD;->a:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 170
    sget-boolean v0, LsD;->a:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    :cond_0
    return-void
.end method

.method static synthetic a(LrZ;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, LrZ;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(LrZ;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, LrZ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(LrZ;)LsD;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, LrZ;->c:LsD;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 37
    sget v0, LrZ;->d:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 37
    sget v0, LrZ;->e:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 37
    sget v0, LrZ;->f:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 37
    sget v0, LrZ;->h:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 37
    sget v0, LrZ;->i:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 37
    sget v0, LrZ;->g:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 88
    sget v1, LrZ;->f:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iget-object v1, p0, LrZ;->a:Lsb;

    invoke-virtual {v1, v0}, Lsb;->a(Landroid/os/Message;)V

    .line 91
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    sget v1, LrZ;->d:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, LrZ;->a:Lsb;

    invoke-virtual {v1, v0}, Lsb;->a(Landroid/os/Message;)V

    .line 84
    return-void
.end method

.method public a(Lsa;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 72
    sget v1, LrZ;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 73
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, LrZ;->a:Lsb;

    invoke-virtual {v1, v0}, Lsb;->a(Landroid/os/Message;)V

    .line 75
    return-void
.end method

.method public a(Lsn;)V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 95
    sget v1, LrZ;->h:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 96
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, LrZ;->a:Lsb;

    invoke-virtual {v1, v0}, Lsb;->a(Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method protected b(Landroid/content/Context;)LsE;
    .locals 1

    .prologue
    .line 124
    new-instance v0, LsE;

    invoke-direct {v0, p1}, LsE;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected b()Ltb;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ltb;

    invoke-direct {v0}, Ltb;-><init>()V

    return-object v0
.end method

.method protected c(Landroid/content/Context;)LsD;
    .locals 1

    .prologue
    .line 128
    invoke-static {p1}, LsD;->a(Landroid/content/Context;)LsD;

    move-result-object v0

    return-object v0
.end method
