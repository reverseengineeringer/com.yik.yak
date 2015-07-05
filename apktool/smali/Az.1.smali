.class public LAz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAz;


# instance fields
.field private b:Lcom/yik/yak/data/models/Environment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized a()LAz;
    .locals 2

    .prologue
    .line 18
    const-class v1, LAz;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAz;->a:LAz;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, LAz;

    invoke-direct {v0}, LAz;-><init>()V

    sput-object v0, LAz;->a:LAz;

    .line 22
    :cond_0
    sget-object v0, LAz;->a:LAz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/models/Environment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, LAz;->b:Lcom/yik/yak/data/models/Environment;

    .line 40
    invoke-static {p1}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->setCurrentEnvironment(Lcom/yik/yak/data/models/Environment;)V

    .line 41
    return-void
.end method

.method public b()Lcom/yik/yak/data/models/Environment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, LAz;->b:Lcom/yik/yak/data/models/Environment;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->getCurrentEnvironment()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    iput-object v0, p0, LAz;->b:Lcom/yik/yak/data/models/Environment;

    .line 35
    :cond_0
    iget-object v0, p0, LAz;->b:Lcom/yik/yak/data/models/Environment;

    return-object v0
.end method
