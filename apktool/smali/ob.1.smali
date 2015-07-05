.class public Lob;
.super Ljava/lang/Object;


# static fields
.field private static g:Lob;


# instance fields
.field private final a:Log;

.field private final b:Landroid/content/Context;

.field private final c:LnT;

.field private final d:LoQ;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lpc;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lpf;


# direct methods
.method constructor <init>(Landroid/content/Context;Log;LnT;LoQ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lob;->b:Landroid/content/Context;

    iput-object p4, p0, Lob;->d:LoQ;

    iput-object p2, p0, Lob;->a:Log;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lob;->e:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lob;->c:LnT;

    iget-object v0, p0, Lob;->c:LnT;

    new-instance v1, Loc;

    invoke-direct {v1, p0}, Loc;-><init>(Lob;)V

    invoke-virtual {v0, v1}, LnT;->a(LnX;)V

    iget-object v0, p0, Lob;->c:LnT;

    new-instance v1, LoW;

    iget-object v2, p0, Lob;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, LoW;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LnT;->a(LnX;)V

    new-instance v0, Lpf;

    invoke-direct {v0}, Lpf;-><init>()V

    iput-object v0, p0, Lob;->f:Lpf;

    invoke-direct {p0}, Lob;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lob;
    .locals 5

    const-class v1, Lob;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lob;->g:Lob;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lop;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lod;

    invoke-direct {v0}, Lod;-><init>()V

    new-instance v2, Lph;

    invoke-direct {v2, p0}, Lph;-><init>(Landroid/content/Context;)V

    new-instance v3, Lob;

    new-instance v4, LnT;

    invoke-direct {v4, v2}, LnT;-><init>(LnY;)V

    invoke-static {}, LoR;->b()LoR;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lob;-><init>(Landroid/content/Context;Log;LnT;LoQ;)V

    sput-object v3, Lob;->g:Lob;

    :cond_1
    sget-object v0, Lob;->g:Lob;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lob;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc;

    invoke-virtual {v0, p1}, Lpc;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lob;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lob;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lob;->b:Landroid/content/Context;

    new-instance v1, Loe;

    invoke-direct {v1, p0}, Loe;-><init>(Lob;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lob;->d:LoQ;

    invoke-virtual {v0}, LoQ;->a()V

    return-void
.end method

.method public declared-synchronized a(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, LoA;->a()LoA;

    move-result-object v1

    invoke-virtual {v1, p1}, LoA;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, LoA;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lof;->a:[I

    invoke-virtual {v1}, LoA;->b()LoB;

    move-result-object v3

    invoke-virtual {v3}, LoB;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lob;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc;

    invoke-virtual {v0}, Lpc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lpc;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpc;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lob;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc;

    invoke-virtual {v0}, Lpc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LoA;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lpc;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpc;->a()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lpc;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lpc;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpc;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method a(Lpc;)Z
    .locals 1

    iget-object v0, p0, Lob;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
