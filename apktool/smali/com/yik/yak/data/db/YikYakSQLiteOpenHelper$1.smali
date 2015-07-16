.class Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper$1;->this$0:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 135
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->insertDefaultEnvironments()V

    .line 136
    return-void
.end method
