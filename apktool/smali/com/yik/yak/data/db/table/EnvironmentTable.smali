.class public Lcom/yik/yak/data/db/table/EnvironmentTable;
.super LzS;
.source "SourceFile"


# static fields
.field public static final COLUMN_BASECAMP_URL:Ljava/lang/String; = "basecampUrl"

.field public static final COLUMN_CONFIGURATION_ENDPOINT:Ljava/lang/String; = "configurationEndpoint"

.field public static final COLUMN_IMAGE_UPLOAD_ENDPOINT:Ljava/lang/String; = "imageUploadUrl"

.field public static final COLUMN_IS_CURRENT_ENVIRONMENT:Ljava/lang/String; = "isCurrentEnvironment"

.field public static final COLUMN_LINK_ENDPOINT:Ljava/lang/String; = "linkEndpoint"

.field public static final COLUMN_MAIN_API_ENDPOINT:Ljava/lang/String; = "mainApiEndpoint"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NOTIFICATION_API_ENDPOINT:Ljava/lang/String; = "notificationApiEndpoint"

.field public static final COLUMN_SHORT_NAME:Ljava/lang/String; = "shortName"


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

    .line 27
    new-instance v0, LzP;

    const-string v1, "name"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 28
    new-instance v0, LzP;

    const-string v1, "isCurrentEnvironment"

    sget-object v2, LzR;->a:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 29
    new-instance v0, LzP;

    const-string v1, "shortName"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 30
    new-instance v0, LzP;

    const-string v1, "mainApiEndpoint"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 31
    new-instance v0, LzP;

    const-string v1, "notificationApiEndpoint"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 32
    new-instance v0, LzP;

    const-string v1, "imageUploadUrl"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 33
    new-instance v0, LzP;

    const-string v1, "basecampUrl"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 34
    new-instance v0, LzP;

    const-string v1, "configurationEndpoint"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 35
    new-instance v0, LzP;

    const-string v1, "linkEndpoint"

    sget-object v2, LzR;->e:LzR;

    new-array v3, v4, [LzQ;

    invoke-direct {v0, v1, v2, v3}, LzP;-><init>(Ljava/lang/String;LzR;[LzQ;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->addColumn(LzP;)V

    .line 36
    return-void
.end method
