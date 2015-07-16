.class public LHa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LHa;


# instance fields
.field private b:LsK;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, LHa;

    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v2

    invoke-virtual {v2}, LAJ;->e()Z

    move-result v2

    invoke-direct {v0, v1, v2}, LHa;-><init>(Landroid/content/Context;Z)V

    sput-object v0, LHa;->a:LHa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, LHa;->c:Z

    .line 52
    iput-boolean v1, p0, LHa;->f:Z

    .line 53
    iput-boolean v0, p0, LHa;->g:Z

    .line 55
    iput-boolean v0, p0, LHa;->h:Z

    .line 56
    iput-boolean v0, p0, LHa;->i:Z

    .line 57
    iput-boolean v0, p0, LHa;->j:Z

    .line 58
    iput-boolean v0, p0, LHa;->k:Z

    .line 59
    iput-boolean v0, p0, LHa;->l:Z

    .line 60
    iput-boolean v0, p0, LHa;->m:Z

    .line 68
    iput-object p1, p0, LHa;->d:Landroid/content/Context;

    .line 69
    iput-boolean p2, p0, LHa;->f:Z

    .line 70
    invoke-virtual {p0}, LHa;->b()V

    .line 72
    invoke-static {}, LAa;->C()Z

    move-result v0

    invoke-virtual {p0, v0}, LHa;->b(Z)V

    .line 74
    new-instance v0, LHb;

    invoke-direct {v0, p0}, LHb;-><init>(LHa;)V

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->setOnFinishedListener(Lcom/adjust/sdk/OnFinishedListener;)V

    .line 105
    return-void
.end method

.method public static a()LHa;
    .locals 1

    .prologue
    .line 108
    sget-object v0, LHa;->a:LHa;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1126
    if-eqz p1, :cond_0

    .line 1128
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1129
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1132
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1142
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 928
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->h:Z

    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "googleAnalytics"

    invoke-virtual {v0, v1, p2, v4}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const-string v0, "Analytics"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " via Google"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-static {v0}, LeO;->a(Landroid/content/Context;)LeO;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lft;

    move-result-object v1

    invoke-virtual {v1}, Lft;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, LeO;->send(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V
    .locals 1

    .prologue
    .line 905
    if-eqz p7, :cond_0

    .line 906
    invoke-direct {p0, p5}, LHa;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 907
    invoke-direct {p0, p2, v0}, LHa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 909
    :cond_0
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_3

    .line 910
    if-eqz p6, :cond_1

    iget-boolean v0, p0, LHa;->h:Z

    if-eqz v0, :cond_1

    .line 911
    invoke-direct {p0, p1, p2, p3, p4}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    :cond_1
    if-eqz p8, :cond_2

    iget-boolean v0, p0, LHa;->j:Z

    if-eqz v0, :cond_2

    .line 915
    invoke-direct {p0, p2, p5}, LHa;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 916
    iget-boolean v0, p0, LHa;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LHa;->m:Z

    if-eqz v0, :cond_2

    .line 917
    invoke-direct {p0, p2, p5}, LHa;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 921
    :cond_2
    if-eqz p9, :cond_3

    iget-boolean v0, p0, LHa;->i:Z

    if-eqz v0, :cond_3

    .line 922
    invoke-direct {p0, p2, p5}, LHa;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 925
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 993
    iget-boolean v0, p0, LHa;->k:Z

    if-nez v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    const-string v0, "Analytics"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " via YikYak with properties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1000
    invoke-static {}, LAD;->a()LAD;

    move-result-object v2

    .line 1001
    invoke-virtual {v2}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    .line 1003
    if-eqz p2, :cond_0

    .line 1006
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1007
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1010
    :cond_2
    :try_start_1
    const-string v0, "userID"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lat"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "long"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1012
    :cond_3
    const-string v0, "userID"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1013
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :cond_4
    const-string v0, "lat"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1015
    const-string v0, "lat"

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :cond_5
    const-string v0, "long"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1017
    const-string v0, "long"

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    :cond_6
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "logEvent"

    invoke-virtual {v2}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, LAj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v3

    const-string v0, "RequestBody:body"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 1029
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v2}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 1034
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 1035
    new-instance v1, LHc;

    invoke-direct {v1, p0}, LHc;-><init>(LHa;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 939
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->m:Z

    if-nez v0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 943
    const-string v1, "ApplicationDidBecomeActive"

    const-string v2, "96cxsw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v1, "DidAttemptToRate"

    const-string v2, "z6ampr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string v1, "SavePeekLocation"

    const-string v2, "5p4hhb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v1, "SendingYak"

    const-string v2, "hx6loo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v1, "ShareYak"

    const-string v2, "t92r4w"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string v1, "ViewPeekLocation"

    const-string v2, "4lq52y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v1, "Yak Upvote"

    const-string v2, "4dba81"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 952
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    const-string v2, "Analytics"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " via Adjust with properties "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    invoke-direct {p0, p2}, LHa;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 961
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->j:Z

    if-nez v0, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-static {p1}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    const-string v1, "Analytics"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " via Amplitude with properties "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_4

    .line 969
    :cond_2
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 971
    :cond_4
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const v5, 0x7f08001b

    .line 977
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->i:Z

    if-nez v0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    const-string v1, "Analytics"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " via Mixpanel with properties "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 983
    invoke-virtual {p0}, LHa;->e()LsK;

    move-result-object v0

    invoke-virtual {v0, p1}, LsK;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 984
    :cond_3
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    invoke-virtual {p0}, LHa;->e()LsK;

    move-result-object v0

    iget-object v1, p0, LHa;->d:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LsK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 987
    :cond_4
    invoke-virtual {p0}, LHa;->e()LsK;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LsK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const-string v1, "a61c8508f81a3770682472e2274b47f1"

    invoke-static {v0, v1}, LsK;->a(Landroid/content/Context;Ljava/lang/String;)LsK;

    move-result-object v0

    iput-object v0, p0, LHa;->b:LsK;

    .line 157
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->i:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 159
    const-string v1, "$ignore"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object v1, p0, LHa;->b:LsK;

    invoke-virtual {v1, v0}, LsK;->a(Lorg/json/JSONObject;)V

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 164
    const-string v1, "$ignore"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object v1, p0, LHa;->b:LsK;

    invoke-virtual {v1, v0}, LsK;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->i:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, LHa;->e()LsK;

    move-result-object v0

    invoke-virtual {v0}, LsK;->a()V

    .line 187
    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    iget-boolean v0, p0, LHa;->f:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    iget-object v1, p0, LHa;->d:Landroid/content/Context;

    iget-object v2, p0, LHa;->d:Landroid/content/Context;

    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :goto_0
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LHa;->j:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    iget-object v1, p0, LHa;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->setMinTimeBetweenSessionsMillis(I)V

    .line 203
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->setOptOut(Z)V

    .line 209
    :goto_1
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    iget-object v1, p0, LHa;->d:Landroid/content/Context;

    iget-object v2, p0, LHa;->d:Landroid/content/Context;

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->setOptOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 260
    const-string v0, "Yakarma"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LHa;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public a(LAw;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 451
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080048

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 456
    :try_start_0
    const-string v0, "Name"

    invoke-virtual {p1}, LAw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v0, "Latitude"

    invoke-virtual {p1}, LAw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v0, "Longitude"

    invoke-virtual {p1}, LAw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v0, "PeekID"

    invoke-virtual {p1}, LAw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v0, "Source"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 465
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 466
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(LHe;Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 723
    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_1

    const-string v0, "Reply"

    .line 724
    :goto_0
    sget-object v1, LHe;->a:LHe;

    if-ne p1, v1, :cond_2

    const-string v1, "Upvote"

    move-object v3, v1

    .line 725
    :goto_1
    iget-object v1, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    iget-object v2, p0, LHa;->d:Landroid/content/Context;

    const v4, 0x7f080062

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 727
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 729
    :try_start_0
    const-string v4, "ContentID"

    iget-object v7, p2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v4, "Direction"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v3, "PostType"

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v0, "Source"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/yik/yak/data/models/Yak;->parentYak:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_3

    .line 734
    const-string v0, "YakType"

    iget-object v3, p2, Lcom/yik/yak/data/models/Yak;->parentYak:Lcom/yik/yak/data/models/Yak;

    iget v3, v3, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v3}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    :goto_2
    const-string v0, "Basecamp"

    iget-boolean v3, p2, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 739
    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    if-eqz v0, :cond_4

    .line 740
    :cond_0
    const-string v0, "Feed"

    const-string v3, "MainFeed"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_3
    iget-object v3, p2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 748
    return-void

    .line 723
    :cond_1
    const-string v0, "Yak"

    goto :goto_0

    .line 724
    :cond_2
    const-string v1, "Downvote"

    move-object v3, v1

    goto :goto_1

    .line 736
    :cond_3
    :try_start_1
    const-string v0, "YakType"

    iget v3, p2, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v3}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 744
    :catch_0
    move-exception v0

    .line 745
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 742
    :cond_4
    :try_start_2
    const-string v0, "Feed"

    const-string v3, "FeaturedPeek"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public a(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 643
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08005e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 645
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 647
    :try_start_0
    iget-boolean v0, p1, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "PeekID"

    const-string v3, "0"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string v0, "Name"

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 660
    return-void

    .line 652
    :cond_0
    :try_start_1
    const-string v0, "PeekID"

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string v0, "Name"

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/yik/yak/data/models/Yak;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 550
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 551
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 555
    :try_start_0
    const-string v0, "ContentID"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v0, "YakType"

    iget v4, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v4}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v0, "Basecamp"

    iget-boolean v4, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 562
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 663
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080060

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 665
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 667
    :try_start_0
    const-string v0, "YakType"

    iget v3, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v3}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v0, "ContentID"

    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v0, "NumberOfComments"

    iget v3, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 670
    const-string v0, "Source"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v0, "Basecamp"

    iget-boolean v3, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 676
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 859
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 860
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08003f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 861
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 862
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 864
    :try_start_0
    const-string v4, "PostType"

    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_0

    const-string v0, "Reply"

    :goto_0
    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    const-string v0, "Category"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string v0, "Blocked"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 867
    const-string v0, "Basecamp"

    iget-boolean v4, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_1
    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 872
    return-void

    .line 864
    :cond_0
    :try_start_1
    const-string v0, "Yak"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 291
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "googleAnalytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-static {v0}, LeO;->a(Landroid/content/Context;)LeO;

    move-result-object v0

    const-string v1, "&cd"

    invoke-virtual {v0, v1, p1}, LeO;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-static {v0}, LeO;->a(Landroid/content/Context;)LeO;

    move-result-object v0

    invoke-static {}, Lft;->b()Lft;

    move-result-object v1

    invoke-virtual {v1}, Lft;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, LeO;->send(Ljava/util/Map;)V

    .line 295
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;IZ)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 580
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080049

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 582
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 584
    :try_start_0
    const-string v0, "YakType"

    invoke-static {p3}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v0, "NumberOfVotes"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v0, "Channel"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string v0, "IsFamous"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 588
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 593
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 596
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080049

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 600
    :try_start_0
    const-string v0, "YakType"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string v0, "NumberOfVotes"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v0, "Channel"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string v0, "FamousAvatar"

    invoke-virtual {v5, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string v0, "IsFamous"

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 605
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 610
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 228
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    iget-boolean v1, p0, LHa;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LHa;->i:Z

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, LHa;->e()LsK;

    move-result-object v1

    invoke-virtual {v1, v0}, LsK;->a(Lorg/json/JSONObject;)V

    .line 237
    :cond_0
    iget-boolean v1, p0, LHa;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, LHa;->j:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;)V

    .line 240
    :cond_1
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 390
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080047

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 394
    :try_start_0
    const-string v0, "YakType"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v0, "Source"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 401
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 402
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 679
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 680
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08005f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 681
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 683
    :try_start_0
    const-string v0, "Source"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 688
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 689
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZLjava/lang/Boolean;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 884
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 885
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 886
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 888
    :try_start_0
    const-string v0, "PostType"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string v0, "BypassedWarning"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 894
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 895
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 265
    const-string v0, "pushNotificationsEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LHa;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    if-eqz p1, :cond_0

    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080038

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 271
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v3

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 276
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-static {}, LAa;->v()Z

    move-result v0

    iput-boolean v0, p0, LHa;->g:Z

    .line 114
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "amplitude"

    const-string v2, "trackViaAdjust"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->c:Z

    .line 116
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "googleEnabled"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->h:Z

    .line 117
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "amplitudeEnabled"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->j:Z

    .line 118
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "mixPanelEnabled"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->i:Z

    .line 119
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "adjustEnabled"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->m:Z

    .line 120
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "facebookEnabled"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->l:Z

    .line 121
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "yikyakEnabled"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LHa;->k:Z

    .line 123
    invoke-virtual {p0}, LHa;->c()V

    .line 124
    invoke-virtual {p0}, LHa;->d()V

    .line 125
    invoke-direct {p0}, LHa;->v()V

    .line 126
    invoke-direct {p0}, LHa;->x()V

    .line 128
    return-void
.end method

.method public b(I)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 625
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 627
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 628
    return-void
.end method

.method public b(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 704
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080041

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 706
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 708
    :try_start_0
    iget-boolean v0, p1, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    if-eqz v0, :cond_0

    .line 709
    const-string v0, "PeekID"

    const-string v3, "0"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    const-string v0, "Name"

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 720
    return-void

    .line 713
    :cond_0
    :try_start_1
    const-string v0, "PeekID"

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string v0, "Name"

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/yik/yak/data/models/Yak;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 565
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 566
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08003e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 570
    :try_start_0
    const-string v0, "YakType"

    iget v4, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v4}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v0, "ContentID"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v0, "Basecamp"

    iget-boolean v4, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 577
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 300
    const-string v0, "Backgrounded"

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, LAa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 301
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LHa;->e:J

    .line 310
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 314
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v0, "Source"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    move-object v4, v3

    move v8, v7

    move v9, v6

    .line 319
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 787
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 788
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08004e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 789
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 791
    :try_start_0
    const-string v0, "URL"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 796
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 797
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    const-string v0, "SelectedBasecamp"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LHa;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 132
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->l:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const-string v1, "1488368971408413"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const-string v1, "1488368971408413"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 345
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    const-string v2, "setAmplitudeID"

    .line 347
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 349
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v0, "eventKey"

    const-string v4, "amplitudeID"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v0, "eventValue"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v3

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 357
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 800
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 801
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080064

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 802
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 804
    :try_start_0
    const-string v0, "Segment"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 809
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 810
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 360
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    if-eqz p1, :cond_0

    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080022

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 365
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_1
    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v3

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 370
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080021

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->h:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-static {v0}, Lfn;->a(Landroid/content/Context;)Lfn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfn;->b(Z)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    invoke-static {v0}, Lfn;->a(Landroid/content/Context;)Lfn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfn;->b(Z)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 373
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080020

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {p1}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->b()Ljava/lang/String;

    move-result-object p1

    .line 378
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 380
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v0, "eventKey"

    const-string v4, "url"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v0, "eventValue"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xff

    if-lt v4, v7, :cond_1

    const/4 v4, 0x0

    const/16 v7, 0xfe

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v3

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 387
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 526
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 527
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08003c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 530
    :try_start_0
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 534
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 535
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public e()LsK;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, LHa;->b:LsK;

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, LHa;->v()V

    .line 176
    :cond_0
    iget-object v0, p0, LHa;->b:LsK;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 405
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08003b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 409
    :try_start_0
    const-string v0, "Source"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 414
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 415
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 775
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08004b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 777
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 779
    :try_start_0
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 783
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 784
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, LHa;->w()V

    .line 181
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 432
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08004f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 436
    :try_start_0
    const-string v0, "Source"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 441
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 442
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->j:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->startSession()V

    .line 217
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 469
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 474
    :try_start_0
    const-string v0, "Type"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 479
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 480
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->j:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->endSession()V

    .line 223
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 483
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080036

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 488
    :try_start_0
    const-string v0, "Tab"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 493
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 494
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public i()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 324
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 325
    iget-wide v4, p0, LHa;->e:J

    sub-long v4, v0, v4

    .line 326
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    .line 328
    const-string v2, "Backgrounded"

    invoke-static {v2, v0, v1}, LAa;->b(Ljava/lang/String;J)V

    .line 332
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 336
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v0, "Duration"

    invoke-virtual {v5, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v3

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 342
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 503
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 504
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 505
    return-void
.end method

.method public j()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 418
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 421
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 422
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 538
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 539
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 540
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 542
    :try_start_0
    const-string v0, "Category"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 547
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public k()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 425
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080027

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 428
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 429
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 613
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08004a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 615
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 617
    :try_start_0
    const-string v0, "Provider"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v8

    .line 621
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 622
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public l()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 445
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 447
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 448
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 631
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 632
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08004d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 635
    :try_start_0
    const-string v0, "Tab"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 640
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public m()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 497
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08002f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 499
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 500
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 692
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080045

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 696
    :try_start_0
    const-string v0, "Query"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v7, v6

    move v9, v8

    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 701
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public n()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 510
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 511
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 875
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 876
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080059

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080053

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, LHa;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 880
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 881
    return-void
.end method

.method public o()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 514
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080030

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 516
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 517
    return-void
.end method

.method public p()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 520
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080061

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 522
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 523
    return-void
.end method

.method public q()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 751
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 752
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080026

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 753
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 754
    return-void
.end method

.method public r()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 757
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 758
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08005d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 759
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 760
    return-void
.end method

.method public s()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 763
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 764
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08005b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 765
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 766
    return-void
.end method

.method public t()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 769
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 770
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f08005c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    move v9, v8

    .line 771
    invoke-direct/range {v0 .. v9}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 772
    return-void
.end method

.method public u()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1055
    const-string v0, "Analytics"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Link Mixpanel and Amplitude Ids"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, LHm;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-virtual {p0}, LHa;->e()LsK;

    move-result-object v0

    invoke-virtual {v0}, LsK;->b()Ljava/lang/String;

    move-result-object v2

    .line 1059
    iget-boolean v0, p0, LHa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LHa;->j:Z

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->setUserId(Ljava/lang/String;)V

    .line 1063
    :cond_0
    const-string v0, "mxID"

    invoke-static {v0, v3}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    :goto_0
    return-void

    .line 1067
    :cond_1
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1070
    :try_start_0
    const-string v4, "api_key"

    iget-boolean v0, p0, LHa;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v5, 0x7f080018

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :try_start_1
    const-string v4, "device_id"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1079
    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1084
    :try_start_2
    const-string v1, "identification"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-static {v3}, LAj;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v1

    invoke-static {v1, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 1091
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    iget-object v1, p0, LHa;->d:Landroid/content/Context;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 1096
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 1097
    new-instance v1, LHd;

    invoke-direct {v1, p0}, LHd;-><init>(LHa;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1070
    :cond_2
    :try_start_3
    iget-object v0, p0, LHa;->d:Landroid/content/Context;

    const v5, 0x7f08001a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1080
    :catch_1
    move-exception v0

    .line 1081
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
