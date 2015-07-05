.class public LAa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static declared-synchronized a()LAa;
    .locals 2

    .prologue
    .line 33
    const-class v1, LAa;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAa;->a:LAa;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, LAa;

    invoke-direct {v0}, LAa;-><init>()V

    sput-object v0, LAa;->a:LAa;

    .line 37
    :cond_0
    sget-object v0, LAa;->a:LAa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yik/yak/data/http/request/YikYakRequest;LAe;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, LzY;->a(Z)Lxo;

    move-result-object v0

    invoke-interface {p2}, Lcom/yik/yak/data/http/request/YikYakRequest;->buildRequest()Lxt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    new-instance v2, LAb;

    invoke-direct {v2, p0, p2, v1, p3}, LAb;-><init>(LAa;Lcom/yik/yak/data/http/request/YikYakRequest;Landroid/os/Handler;LAe;)V

    invoke-virtual {v0, v2}, LwP;->a(LwT;)V

    .line 93
    return-object v1
.end method
