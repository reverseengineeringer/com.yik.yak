.class public Loe;
.super Ljava/lang/Object;


# static fields
.field private static g:Loe;


# instance fields
.field private final a:Loj;

.field private final b:Landroid/content/Context;

.field private final c:LnW;

.field private final d:LoT;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lpf;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lpi;


# direct methods
.method constructor <init>(Landroid/content/Context;Loj;LnW;LoT;)V
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

    iput-object v0, p0, Loe;->b:Landroid/content/Context;

    iput-object p4, p0, Loe;->d:LoT;

    iput-object p2, p0, Loe;->a:Loj;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Loe;->e:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Loe;->c:LnW;

    iget-object v0, p0, Loe;->c:LnW;

    new-instance v1, Lof;

    invoke-direct {v1, p0}, Lof;-><init>(Loe;)V

    invoke-virtual {v0, v1}, LnW;->a(Loa;)V

    iget-object v0, p0, Loe;->c:LnW;

    new-instance v1, LoZ;

    iget-object v2, p0, Loe;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, LoZ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LnW;->a(Loa;)V

    new-instance v0, Lpi;

    invoke-direct {v0}, Lpi;-><init>()V

    iput-object v0, p0, Loe;->f:Lpi;

    invoke-direct {p0}, Loe;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Loe;
    .locals 5

    const-class v1, Loe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Loe;->g:Loe;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

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
    new-instance v0, Log;

    invoke-direct {v0}, Log;-><init>()V

    new-instance v2, Lpk;

    invoke-direct {v2, p0}, Lpk;-><init>(Landroid/content/Context;)V

    new-instance v3, Loe;

    new-instance v4, LnW;

    invoke-direct {v4, v2}, LnW;-><init>(Lob;)V

    invoke-static {}, LoU;->b()LoU;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Loe;-><init>(Landroid/content/Context;Loj;LnW;LoT;)V

    sput-object v3, Loe;->g:Loe;

    :cond_1
    sget-object v0, Loe;->g:Loe;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Loe;->e:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast v0, Lpf;

    invoke-virtual {v0, p1}, Lpf;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Loe;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Loe;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Loe;->b:Landroid/content/Context;

    new-instance v1, Loh;

    invoke-direct {v1, p0}, Loh;-><init>(Loe;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Loe;->d:LoT;

    invoke-virtual {v0}, LoT;->a()V

    return-void
.end method

.method public declared-synchronized a(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, LoD;->a()LoD;

    move-result-object v1

    invoke-virtual {v1, p1}, LoD;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, LoD;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Loi;->a:[I

    invoke-virtual {v1}, LoD;->b()LoE;

    move-result-object v3

    invoke-virtual {v3}, LoE;->ordinal()I

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
    iget-object v0, p0, Loe;->e:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast v0, Lpf;

    invoke-virtual {v0}, Lpf;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lpf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpf;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Loe;->e:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast v0, Lpf;

    invoke-virtual {v0}, Lpf;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LoD;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lpf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpf;->a()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lpf;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lpf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpf;->a()V
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

.method a(Lpf;)Z
    .locals 1

    iget-object v0, p0, Loe;->e:Ljava/util/concurrent/ConcurrentMap;

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
