.class public LAf;
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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yik/yak/data/models/Configuration;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Configuration$EndPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "endpoints"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 54
    new-instance v4, Lcom/yik/yak/data/models/Configuration$EndPoint;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, p1}, Lcom/yik/yak/data/models/Configuration$EndPoint;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 55
    const-string v5, "min_latitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    iput-wide v6, v4, Lcom/yik/yak/data/models/Configuration$EndPoint;->minLatitude:D

    .line 56
    const-string v5, "max_latitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    iput-wide v6, v4, Lcom/yik/yak/data/models/Configuration$EndPoint;->maxLatitude:D

    .line 57
    const-string v5, "min_longitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    iput-wide v6, v4, Lcom/yik/yak/data/models/Configuration$EndPoint;->minLongitude:D

    .line 58
    const-string v5, "max_longitude"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    iput-wide v6, v4, Lcom/yik/yak/data/models/Configuration$EndPoint;->maxLongitude:D

    .line 59
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/yik/yak/data/models/Configuration$EndPoint;->url:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v2
.end method

.method private b(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yik/yak/data/models/Configuration;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Configuration$ThreatCheck;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "threat_checks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 71
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 72
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    new-instance v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p1}, Lcom/yik/yak/data/models/Configuration$ThreatCheck;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 74
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    .line 75
    const-string v6, "allowContinue"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->allowContinue:Z

    .line 76
    const-string v6, "expressions"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 77
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->expressions:[Ljava/lang/String;

    move v2, v1

    .line 79
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 80
    iget-object v7, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->expressions:[Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-object v4
.end method

.method private c(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;
    .locals 3

    .prologue
    .line 91
    const-string v0, "basecamp"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 93
    const-string v2, "tutorialUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;->tutorialUrl:Ljava/lang/String;

    .line 94
    return-object v1
.end method

.method private d(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$SharingConfiguration;
    .locals 3

    .prologue
    .line 99
    const-string v0, "shareThreshold"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 101
    const-string v2, "shareThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->shareThreshold:I

    .line 102
    const-string v2, "famousThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->famousThreshold:I

    .line 103
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->title:Ljava/lang/String;

    .line 104
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->message:Ljava/lang/String;

    .line 105
    return-object v1
.end method

.method private e(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$VotingConfiguration;
    .locals 3

    .prologue
    .line 110
    const-string v0, "voting"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 112
    const-string v2, "enableVoteChanging"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;->enableVoteChanging:Z

    .line 113
    const-string v2, "yakarmaIncreaseValue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;->yakarmaIncreaseValue:I

    .line 114
    return-object v1
.end method

.method private f(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$DraftConfiguration;
    .locals 3

    .prologue
    .line 119
    const-string v0, "drafts"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$DraftConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 121
    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/yik/yak/data/models/Configuration$DraftConfiguration;->enabled:Z

    .line 122
    return-object v1
.end method

.method private g(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;
    .locals 3

    .prologue
    .line 127
    const-string v0, "yikYakRepApplicationConfiguration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 129
    const-string v2, "yakarmaThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->yakarmaThreshold:I

    .line 130
    const-string v2, "entryText"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->entryText:Ljava/lang/String;

    .line 131
    const-string v2, "applicationUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->applicationUrl:Ljava/lang/String;

    .line 132
    return-object v1
.end method

.method private h(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;
    .locals 3

    .prologue
    .line 137
    const-string v0, "googleAnalytics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 139
    const-string v2, "MainScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->mainScreen:Z

    .line 140
    const-string v2, "DetailsScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->detailsScreen:Z

    .line 141
    const-string v2, "SendScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->sendScreen:Z

    .line 142
    const-string v2, "PeekScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->peekScreen:Z

    .line 143
    const-string v2, "MyRecentScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->myRecentScreen:Z

    .line 144
    const-string v2, "MyRecentRepliesScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->myRecentRepliesScreen:Z

    .line 145
    const-string v2, "MeScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->meScreen:Z

    .line 146
    const-string v2, "PeekList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->peekList:Z

    .line 147
    const-string v2, "MoreScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->moreScreen:Z

    .line 148
    const-string v2, "MineScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->mineScreen:Z

    .line 149
    const-string v2, "AreaScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->areaScreen:Z

    .line 150
    const-string v2, "OtherScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->otherScreen:Z

    .line 151
    const-string v2, "PeekSearch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->peekSearch:Z

    .line 152
    const-string v2, "ManageMyPeeksScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->manageMyPeeksScreen:Z

    .line 154
    const-string v2, "RulesScreen "

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "RulesScreen "

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->rulesScreen:Z

    .line 160
    :goto_0
    const-string v2, "TermsOfService"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->termsOfService:Z

    .line 161
    const-string v2, "PrivacyPolicy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->privacyPolicy:Z

    .line 163
    const-string v2, "YakarmaScreen "

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    const-string v2, "YakarmaScreen "

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->yakarmaScreen:Z

    .line 169
    :goto_1
    return-object v1

    .line 157
    :cond_0
    const-string v2, "RulesScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->rulesScreen:Z

    goto :goto_0

    .line 166
    :cond_1
    const-string v2, "YakarmaScreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;->yakarmaScreen:Z

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/yik/yak/data/models/Configuration;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Configuration;-><init>()V

    .line 35
    const-string v1, "default_endpoint"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->defaultEndpoint:Ljava/lang/String;

    .line 36
    invoke-direct {p0, v0, p1}, LAf;->a(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->endpoints:Ljava/util/ArrayList;

    .line 37
    invoke-direct {p0, v0, p1}, LAf;->b(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->threatChecks:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, v0, p1}, LAf;->c(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->basecampConfiguration:Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    .line 39
    invoke-direct {p0, v0, p1}, LAf;->d(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->sharingConfiguration:Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

    .line 40
    invoke-direct {p0, v0, p1}, LAf;->e(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->votingConfiguration:Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

    .line 41
    invoke-direct {p0, v0, p1}, LAf;->f(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->draftConfiguration:Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

    .line 42
    invoke-direct {p0, v0, p1}, LAf;->g(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    .line 43
    invoke-direct {p0, v0, p1}, LAf;->h(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->googleAnalyticsConfiguration:Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;

    .line 44
    return-object v0
.end method
