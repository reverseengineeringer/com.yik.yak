.class public LBZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAp;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, LBZ;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 970
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 971
    return-void
.end method

.method public a(LxJ;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 963
    check-cast p2, [Lcom/yik/yak/data/models/Website;

    check-cast p2, [Lcom/yik/yak/data/models/Website;

    .line 964
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->deleteTable(Ljava/lang/String;)V

    .line 965
    invoke-static {p2}, Lcom/yik/yak/data/db/helper/WhiteListedWebsiteTableHelper;->insertWebsites([Lcom/yik/yak/data/models/Website;)V

    .line 966
    return-void
.end method
