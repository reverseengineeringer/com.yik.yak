.class public Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;
.super LzS;
.source "SourceFile"


# static fields
.field public static final COLUMN_CATEGORY:Ljava/lang/String; = "category"

.field public static final COLUMN_DISPLAY:Ljava/lang/String; = "display"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, LzS;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateColumns()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    new-instance v0, LzP;

    const-string v1, "display"

    sget-object v2, LzR;->a:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;->addColumn(LzP;)V

    .line 23
    new-instance v0, LzP;

    const-string v1, "category"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;->addColumn(LzP;)V

    .line 24
    new-instance v0, LzP;

    const-string v1, "name"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;->addColumn(LzP;)V

    .line 25
    new-instance v0, LzP;

    const-string v1, "url"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;->addColumn(LzP;)V

    .line 26
    return-void
.end method
