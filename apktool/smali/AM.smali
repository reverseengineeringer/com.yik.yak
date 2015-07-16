.class public LAM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAM;


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

.method public static declared-synchronized a()LAM;
    .locals 2

    .prologue
    .line 18
    const-class v1, LAM;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAM;->a:LAM;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, LAM;

    invoke-direct {v0}, LAM;-><init>()V

    sput-object v0, LAM;->a:LAM;

    .line 22
    :cond_0
    sget-object v0, LAM;->a:LAM;
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
    iput-object p1, p0, LAM;->b:Lcom/yik/yak/data/models/Environment;

    .line 40
    invoke-static {p1}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->setCurrentEnvironment(Lcom/yik/yak/data/models/Environment;)V

    .line 41
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->insertDefaultEnvironments()V

    .line 28
    return-void
.end method

.method public c()Lcom/yik/yak/data/models/Environment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, LAM;->b:Lcom/yik/yak/data/models/Environment;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->getCurrentEnvironment()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    iput-object v0, p0, LAM;->b:Lcom/yik/yak/data/models/Environment;

    .line 35
    :cond_0
    iget-object v0, p0, LAM;->b:Lcom/yik/yak/data/models/Environment;

    return-object v0
.end method
