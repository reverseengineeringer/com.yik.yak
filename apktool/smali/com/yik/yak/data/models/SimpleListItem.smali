.class public Lcom/yik/yak/data/models/SimpleListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public index:Ljava/lang/String;

.field public item:Ljava/lang/String;

.field public section:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yik/yak/data/models/SimpleListItem;->section:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/yik/yak/data/models/SimpleListItem;->index:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private addCustomItem(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/SimpleListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/yik/yak/data/models/SimpleListItem;

    const-string v1, "Developer"

    const-string v2, "Developer Console"

    const-string v3, "15"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yik/yak/data/models/SimpleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method

.method private createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getItemList(Landroid/content/Context;LAB;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LAB;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/SimpleListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    sget-object v1, LAB;->a:LAB;

    if-ne p2, v1, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 106
    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 108
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v1, v2, [B

    .line 109
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 110
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 116
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/yik/yak/data/models/SimpleListItem;->parseJsonData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 118
    sget-object v1, LAB;->a:LAB;

    .line 119
    return-object v0

    .line 102
    :cond_1
    sget-object v1, LAB;->b:LAB;

    if-ne p2, v1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public isApplyToBeAYikYakRepButton()Z
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/yik/yak/data/models/Configuration;->get()Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration;->yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->entryText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSectionHeader()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    iget-object v1, p0, Lcom/yik/yak/data/models/SimpleListItem;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseJsonData(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/SimpleListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :try_start_0
    invoke-static {p1}, LHi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 65
    invoke-direct {p0, p1}, Lcom/yik/yak/data/models/SimpleListItem;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    const-string v3, "ListItems"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    .line 67
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 68
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    const-string v4, "section"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string v5, "MyDrafts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v5

    const-string v6, "drafts"

    const-string v7, "enabled"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    new-instance v5, Lcom/yik/yak/data/models/SimpleListItem;

    const-string v6, "item"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "index"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v5, v4, v6, v7, v1}, Lcom/yik/yak/data/models/SimpleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 76
    :cond_2
    new-instance v5, Lcom/yik/yak/data/models/SimpleListItem;

    const-string v6, "item"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "index"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-direct {v5, v4, v6, v7, v1}, Lcom/yik/yak/data/models/SimpleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 84
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v1, Lcom/yik/yak/data/models/SimpleListItem;

    const-string v2, "My Yaks"

    const-string v3, "My Yaks"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yik/yak/data/models/SimpleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_3
    :goto_4
    return-object v0

    .line 76
    :cond_4
    :try_start_1
    const-string v1, ""

    goto :goto_3

    .line 80
    :cond_5
    new-instance v1, Lcom/yik/yak/data/models/SimpleListItem;

    const-string v2, "My Yaks"

    const-string v3, "My Yaks"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yik/yak/data/models/SimpleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
