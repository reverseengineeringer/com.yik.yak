.class public Lcom/yik/yak/data/db/table/EnvironmentTable;
.super LzI;
.source "SourceFile"


# static fields
.field public static final COLUMN_BASECAMP_URL:Ljava/lang/String; = "basecampUrl"

.field public static final COLUMN_IMAGE_UPLOAD_ENDPOINT:Ljava/lang/String; = "imageUploadUrl"

.field public static final COLUMN_IS_CURRENT_ENVIRONMENT:Ljava/lang/String; = "isCurrentEnvironment"

.field public static final COLUMN_MAIN_API_ENDPOINT:Ljava/lang/String; = "mainApiEndpoint"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NOTIFICATION_API_ENDPOINT:Ljava/lang/String; = "notificationApiEndpoint"

.field public static final COLUMN_SHORT_NAME:Ljava/lang/String; = "shortName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, LzI;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateColumns()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    new-instance v0, LzF;

    const-string v1, "name"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 26
    new-instance v0, LzF;

    const-string v1, "isCurrentEnvironment"

    sget-object v2, LzH;->a:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 27
    new-instance v0, LzF;

    const-string v1, "shortName"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 28
    new-instance v0, LzF;

    const-string v1, "mainApiEndpoint"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 29
    new-instance v0, LzF;

    const-string v1, "notificationApiEndpoint"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 30
    new-instance v0, LzF;

    const-string v1, "imageUploadUrl"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 31
    new-instance v0, LzF;

    const-string v1, "basecampUrl"

    sget-object v2, LzH;->e:LzH;

    new-array v3, v4, [LzG;

    invoke-direct {v0, v1, v2, v3}, LzF;-><init>(Ljava/lang/String;LzH;[LzG;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzF;)V

    .line 32
    return-void
.end method
