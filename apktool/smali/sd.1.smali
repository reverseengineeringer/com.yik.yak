.class Lsd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lsd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lsf;

.field private final b:Landroid/content/Context;

.field private final c:LsG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsd;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lsd;->b:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, p1}, Lsd;->c(Landroid/content/Context;)LsG;

    move-result-object v0

    iput-object v0, p0, Lsd;->c:LsG;

    .line 48
    new-instance v0, Lsf;

    invoke-direct {v0, p0}, Lsf;-><init>(Lsd;)V

    iput-object v0, p0, Lsd;->a:Lsf;

    .line 49
    return-void
.end method

.method static synthetic a(Lsd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lsd;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lsd;
    .locals 4

    .prologue
    .line 59
    sget-object v1, Lsd;->d:Ljava/util/Map;

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 62
    sget-object v0, Lsd;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lsd;

    invoke-direct {v0, v2}, Lsd;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v3, Lsd;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    monitor-exit v1

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lsd;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsd;

    goto :goto_0

    .line 70
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
    .line 167
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 168
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

    .line 170
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 173
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 174
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

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic a(Lsd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lsd;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lsd;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lsd;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lsd;)LsG;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lsd;->c:LsG;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 91
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 93
    iget-object v1, p0, Lsd;->a:Lsf;

    invoke-virtual {v1, v0}, Lsf;->a(Landroid/os/Message;)V

    .line 94
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lsd;->a:Lsf;

    invoke-virtual {v1, v0}, Lsf;->a(Landroid/os/Message;)V

    .line 87
    return-void
.end method

.method public a(Lse;)V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 75
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 76
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lsd;->a:Lsf;

    invoke-virtual {v1, v0}, Lsf;->a(Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public a(Lsr;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 98
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lsd;->a:Lsf;

    invoke-virtual {v1, v0}, Lsf;->a(Landroid/os/Message;)V

    .line 102
    return-void
.end method

.method protected b(Landroid/content/Context;)LsH;
    .locals 1

    .prologue
    .line 127
    new-instance v0, LsH;

    invoke-direct {v0, p1}, LsH;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected b()LtU;
    .locals 1

    .prologue
    .line 135
    new-instance v0, LtS;

    invoke-direct {v0}, LtS;-><init>()V

    return-object v0
.end method

.method protected c(Landroid/content/Context;)LsG;
    .locals 1

    .prologue
    .line 131
    invoke-static {p1}, LsG;->a(Landroid/content/Context;)LsG;

    move-result-object v0

    return-object v0
.end method
