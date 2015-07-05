.class public LBV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAe;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, LBV;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public a(Lxz;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 912
    check-cast p2, [Lcom/yik/yak/data/models/Website;

    check-cast p2, [Lcom/yik/yak/data/models/Website;

    .line 913
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->deleteTable(Ljava/lang/String;)V

    .line 914
    invoke-static {p2}, Lcom/yik/yak/data/db/helper/WhiteListedWebsiteTableHelper;->insertWebsites([Lcom/yik/yak/data/models/Website;)V

    .line 915
    return-void
.end method
