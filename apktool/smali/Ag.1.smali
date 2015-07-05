.class public LAg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/models/Environment;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    :cond_0
    const-string v1, "isCurrentEnvironment"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->isCurrentEnvironment()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "shortName"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "mainApiEndpoint"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getMainApiEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "imageUploadUrl"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getImageUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "notificationApiEndpoint"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getNotificationEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "basecampUrl"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;
    .locals 3

    .prologue
    .line 41
    new-instance v0, LzS;

    invoke-direct {v0, p1}, LzS;-><init>(Landroid/database/Cursor;)V

    .line 42
    new-instance v1, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 43
    const-string v2, "_id"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setId(Ljava/lang/Integer;)V

    .line 44
    const-string v2, "isCurrentEnvironment"

    invoke-virtual {v0, v2}, LzS;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setIsCurrentEnvironment(Z)V

    .line 45
    const-string v2, "name"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 46
    const-string v2, "shortName"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 47
    const-string v2, "mainApiEndpoint"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 48
    const-string v2, "imageUploadUrl"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 49
    const-string v2, "notificationApiEndpoint"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 50
    const-string v2, "basecampUrl"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 51
    return-object v1
.end method
