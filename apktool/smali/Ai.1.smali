.class public LAi;
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
.method public a(Lcom/yik/yak/data/models/Website;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    :cond_0
    const-string v1, "display"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->shouldDisplay()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    const-string v1, "category"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Website;
    .locals 3

    .prologue
    .line 38
    new-instance v0, LzS;

    invoke-direct {v0, p1}, LzS;-><init>(Landroid/database/Cursor;)V

    .line 39
    new-instance v1, Lcom/yik/yak/data/models/Website;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Website;-><init>()V

    .line 40
    const-string v2, "_id"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Website;->setId(Ljava/lang/Integer;)V

    .line 41
    const-string v2, "display"

    invoke-virtual {v0, v2}, LzS;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Website;->setShouldDisplay(Z)V

    .line 42
    const-string v2, "category"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Website;->setCategory(Ljava/lang/String;)V

    .line 43
    const-string v2, "name"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Website;->setName(Ljava/lang/String;)V

    .line 44
    const-string v2, "url"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Website;->setUrl(Ljava/lang/String;)V

    .line 45
    return-object v1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Website;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/yik/yak/data/models/Website;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Website;-><init>()V

    .line 51
    const-string v1, "display"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Website;->setShouldDisplay(Z)V

    .line 52
    const-string v1, "category"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Website;->setCategory(Ljava/lang/String;)V

    .line 53
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Website;->setName(Ljava/lang/String;)V

    .line 54
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Website;->setUrl(Ljava/lang/String;)V

    .line 55
    return-object v0
.end method
