.class public LAq;
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

    .line 47
    const-string v0, "threatChecks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 50
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 51
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    new-instance v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p1}, Lcom/yik/yak/data/models/Configuration$ThreatCheck;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 53
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    .line 54
    const-string v6, "allowContinue"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->allowContinue:Z

    .line 55
    const-string v6, "expressions"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->expressions:[Ljava/lang/String;

    move v2, v1

    .line 58
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 59
    iget-object v7, v5, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->expressions:[Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    return-object v4
.end method

.method private b(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;
    .locals 3

    .prologue
    .line 69
    const-string v0, "basecamp"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 71
    const-string v2, "tutorialUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;->tutorialUrl:Ljava/lang/String;

    .line 72
    return-object v1
.end method

.method private c(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$SharingConfiguration;
    .locals 3

    .prologue
    .line 76
    const-string v0, "shareThreshold"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 78
    const-string v2, "shareThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->shareThreshold:I

    .line 79
    const-string v2, "famousThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->famousThreshold:I

    .line 80
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->title:Ljava/lang/String;

    .line 81
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Configuration$SharingConfiguration;->message:Ljava/lang/String;

    .line 82
    return-object v1
.end method

.method private d(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$VotingConfiguration;
    .locals 3

    .prologue
    .line 86
    const-string v0, "voting"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 88
    const-string v2, "enableVoteChanging"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;->enableVoteChanging:Z

    .line 89
    const-string v2, "yakarmaIncreaseValue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/yik/yak/data/models/Configuration$VotingConfiguration;->yakarmaIncreaseValue:I

    .line 90
    return-object v1
.end method

.method private e(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$DraftConfiguration;
    .locals 3

    .prologue
    .line 94
    const-string v0, "drafts"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$DraftConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 96
    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/yik/yak/data/models/Configuration$DraftConfiguration;->enabled:Z

    .line 97
    return-object v1
.end method

.method private f(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;
    .locals 3

    .prologue
    .line 101
    const-string v0, "yikYakRepApplicationConfiguration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;-><init>(Lcom/yik/yak/data/models/Configuration;)V

    .line 103
    const-string v2, "yakarmaThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->yakarmaThreshold:I

    .line 104
    const-string v2, "entryText"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->entryText:Ljava/lang/String;

    .line 105
    const-string v2, "applicationUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->applicationUrl:Ljava/lang/String;

    .line 106
    return-object v1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/yik/yak/data/models/Configuration;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Configuration;-><init>()V

    .line 35
    const-string v1, "endpointUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->endpointUrl:Ljava/lang/String;

    .line 36
    const-string v1, "handleEnabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yik/yak/data/models/Configuration;->handleEnabled:Z

    .line 37
    invoke-direct {p0, v0, p1}, LAq;->a(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->threatChecks:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, v0, p1}, LAq;->b(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->basecampConfiguration:Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

    .line 39
    invoke-direct {p0, v0, p1}, LAq;->c(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->sharingConfiguration:Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

    .line 40
    invoke-direct {p0, v0, p1}, LAq;->d(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->votingConfiguration:Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

    .line 41
    invoke-direct {p0, v0, p1}, LAq;->e(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->draftConfiguration:Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

    .line 42
    invoke-direct {p0, v0, p1}, LAq;->f(Lcom/yik/yak/data/models/Configuration;Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Configuration;->yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    .line 43
    return-object v0
.end method
