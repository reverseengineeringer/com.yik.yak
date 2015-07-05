.class public Lcom/yik/yak/data/db/table/FavoritedYakTable;
.super Lcom/yik/yak/data/db/table/YakTable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yik/yak/data/db/table/YakTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateColumns()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 12
    new-instance v0, LzF;

    const-string v1, "comment"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 13
    new-instance v0, LzF;

    const-string v1, "commentId"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 14
    new-instance v0, LzF;

    const-string v1, "content"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 15
    new-instance v0, LzF;

    const-string v1, "deliveryId"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 16
    new-instance v0, LzF;

    const-string v1, "hidePin"

    sget-object v2, LzH;->a:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 17
    new-instance v0, LzF;

    const-string v1, "isComment"

    sget-object v2, LzH;->a:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 18
    new-instance v0, LzF;

    const-string v1, "latitude"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 19
    new-instance v0, LzF;

    const-string v1, "liked"

    sget-object v2, LzH;->c:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 20
    new-instance v0, LzF;

    const-string v1, "linkProvider"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 21
    new-instance v0, LzF;

    const-string v1, "linkSummary"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 22
    new-instance v0, LzF;

    const-string v1, "linkTitle"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 23
    new-instance v0, LzF;

    const-string v1, "linkThumbnailUrl"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 24
    new-instance v0, LzF;

    const-string v1, "linkUrl"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 25
    new-instance v0, LzF;

    const-string v1, "longitude"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 26
    new-instance v0, LzF;

    const-string v1, "numberOfComments"

    sget-object v2, LzH;->c:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 27
    new-instance v0, LzF;

    const-string v1, "numberOfLikes"

    sget-object v2, LzH;->c:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 28
    new-instance v0, LzF;

    const-string v1, "posterId"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 29
    new-instance v0, LzF;

    const-string v1, "showHandle"

    sget-object v2, LzH;->a:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 30
    new-instance v0, LzF;

    const-string v1, "timePosted"

    sget-object v2, LzH;->b:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 31
    new-instance v0, LzF;

    const-string v1, "type"

    sget-object v2, LzH;->c:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 32
    new-instance v0, LzF;

    const-string v1, "yakId"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 33
    new-instance v0, LzF;

    const-string v1, "yakkerHandle"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 34
    new-instance v0, LzF;

    const-string v1, "yakkerId"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->addColumn(LzF;)V

    .line 35
    return-void
.end method
