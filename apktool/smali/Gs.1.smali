.class public LGs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LGs;


# instance fields
.field private b:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, LGs;

    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, LAw;->a()LAw;

    move-result-object v2

    invoke-virtual {v2}, LAw;->e()Z

    move-result v2

    invoke-direct {v0, v1, v2}, LGs;-><init>(Landroid/content/Context;Z)V

    sput-object v0, LGs;->a:LGs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "mixPanel"

    const-string v2, "trackViaAdjust"

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LGs;->c:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, LGs;->f:Z

    .line 52
    iput-boolean v3, p0, LGs;->g:Z

    .line 59
    iput-object p1, p0, LGs;->d:Landroid/content/Context;

    .line 60
    iput-boolean p2, p0, LGs;->f:Z

    .line 61
    invoke-direct {p0}, LGs;->t()V

    .line 62
    invoke-direct {p0}, LGs;->u()V

    .line 63
    invoke-virtual {p0}, LGs;->b()LeS;

    .line 64
    invoke-static {}, LzQ;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, LGs;->b(Z)V

    .line 65
    invoke-static {}, LzQ;->w()Z

    move-result v0

    invoke-virtual {p0, v0}, LGs;->c(Z)V

    .line 67
    new-instance v0, LGt;

    invoke-direct {v0, p0}, LGt;-><init>(LGs;)V

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->setOnFinishedListener(Lcom/adjust/sdk/OnFinishedListener;)V

    .line 98
    return-void
.end method

.method public static a()LGs;
    .locals 2

    .prologue
    .line 101
    sget-object v0, LGs;->a:LGs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LGs;->a(Z)V

    .line 102
    sget-object v0, LGs;->a:LGs;

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
    .line 965
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 967
    if-eqz p1, :cond_0

    .line 969
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 970
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 973
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 974
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 983
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 806
    const/4 v5, 0x0

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "googleEnabled"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "mixPanelEnabled"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "yikYakEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "amplitudeEnabled"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 811
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 814
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "googleEnabled"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "mixPanelEnabled"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "yikYakEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "analytics"

    const-string v2, "amplitudeEnabled"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 819
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V
    .locals 1

    .prologue
    .line 824
    if-eqz p8, :cond_0

    .line 825
    invoke-direct {p0, p5}, LGs;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 826
    invoke-direct {p0, p2, v0}, LGs;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 828
    :cond_0
    iget-boolean v0, p0, LGs;->g:Z

    if-eqz v0, :cond_3

    .line 829
    if-eqz p6, :cond_1

    .line 830
    invoke-direct {p0, p1, p2, p3, p4}, LGs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 833
    :cond_1
    if-eqz p7, :cond_2

    .line 834
    invoke-direct {p0, p2, p5}, LGs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 835
    iget-boolean v0, p0, LGs;->c:Z

    if-eqz v0, :cond_2

    .line 836
    invoke-direct {p0, p2, p5}, LGs;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 840
    :cond_2
    if-eqz p9, :cond_3

    .line 841
    invoke-direct {p0, p2, p5}, LGs;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 842
    iget-boolean v0, p0, LGs;->c:Z

    if-eqz v0, :cond_3

    .line 843
    invoke-direct {p0, p2, p5}, LGs;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 847
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
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

    .line 902
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

    invoke-static {v0, v1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 905
    invoke-static {}, LAq;->a()LAq;

    move-result-object v2

    .line 908
    if-nez p2, :cond_0

    .line 962
    :goto_0
    return-void

    .line 911
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 912
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 915
    :cond_1
    const-string v0, "userID"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "lat"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "long"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 917
    :cond_2
    const-string v0, "userID"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_3
    const-string v0, "lat"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 920
    const-string v0, "lat"

    invoke-virtual {v2}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_4
    const-string v0, "long"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 922
    const-string v0, "long"

    invoke-virtual {v2}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_5
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "logEvent"

    invoke-virtual {v2}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, LzY;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v2

    .line 931
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v3

    const-string v0, "RequestBody:body"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 934
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 939
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 940
    new-instance v1, LGv;

    invoke-direct {v1, p0}, LGv;-><init>(LGs;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const v5, 0x7f08001b

    .line 858
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

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->timeEvent(Ljava/lang/String;)V

    .line 867
    :goto_1
    return-void

    .line 858
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_1
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 865
    :cond_2
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 851
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "googleAnalytics"

    invoke-virtual {v0, v1, p2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
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

    invoke-static {v0, v1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    invoke-static {v0}, LeS;->a(Landroid/content/Context;)LeS;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lfw;

    move-result-object v1

    invoke-virtual {v1}, Lfw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, LeS;->send(Ljava/util/Map;)V

    .line 855
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 871
    const-string v1, "ApplicationDidBecomeActive"

    const-string v2, "96cxsw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string v1, "DidAttemptToRate"

    const-string v2, "z6ampr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v1, "SavePeekLocation"

    const-string v2, "5p4hhb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string v1, "SendingYak"

    const-string v2, "hx6loo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v1, "ShareYak"

    const-string v2, "t92r4w"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v1, "ViewPeekLocation"

    const-string v2, "4lq52y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v1, "Yak Upvote"

    const-string v2, "4dba81"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 880
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
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

    if-nez p2, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    invoke-direct {p0, p2}, LGs;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 886
    :cond_0
    return-void

    .line 881
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 889
    invoke-static {p1}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
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

    if-nez p2, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

    .line 894
    :cond_0
    invoke-static {p1}, Lcom/amplitude/api/Amplitude;->logEvent(Ljava/lang/String;)V

    .line 899
    :cond_1
    :goto_1
    return-void

    .line 890
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 896
    :cond_3
    invoke-static {p1, p2}, Lcom/amplitude/api/Amplitude;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private s()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V

    .line 139
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    .line 144
    const-string v1, "a61c8508f81a3770682472e2274b47f1"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {p0, v0}, LGs;->a(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-boolean v0, p0, LGs;->f:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    :goto_0
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude;->setSessionTimeoutMillis(J)V

    .line 159
    :goto_1
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude;->initialize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 164
    const-string v0, "Yakarma"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LGs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public a(LAk;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 355
    :try_start_0
    const-string v0, "Name"

    invoke-virtual {p1}, LAk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v0, "Latitude"

    invoke-virtual {p1}, LAk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v0, "Longitude"

    invoke-virtual {p1}, LAk;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v0, "PeekID"

    invoke-virtual {p1}, LAk;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 363
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 364
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(LGx;Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 653
    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_1

    const-string v0, "Reply"

    .line 654
    :goto_0
    sget-object v1, LGx;->a:LGx;

    if-ne p1, v1, :cond_2

    const-string v1, "Upvote"

    move-object v8, v1

    .line 655
    :goto_1
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 656
    iget-object v2, p0, LGs;->d:Landroid/content/Context;

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 657
    iget-object v3, p2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 658
    const/4 v4, 0x0

    .line 659
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 661
    :try_start_0
    const-string v9, "ContentID"

    iget-object v10, p2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v9, "Direction"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    const-string v8, "PostType"

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v0, "Source"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string v0, "YakType"

    iget v8, p2, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v8}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    const-string v0, "Basecamp"

    iget-boolean v8, p2, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 667
    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    if-eqz v0, :cond_3

    .line 668
    :cond_0
    const-string v0, "Feed"

    const-string v8, "MainFeed"

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, p0

    move v8, v6

    move v9, v7

    .line 675
    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 676
    return-void

    .line 653
    :cond_1
    const-string v0, "Yak"

    goto :goto_0

    .line 654
    :cond_2
    const-string v1, "Downvote"

    move-object v8, v1

    goto :goto_1

    .line 670
    :cond_3
    :try_start_1
    const-string v0, "Feed"

    const-string v8, "FeaturedPeek"

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 672
    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 189
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    :try_start_0
    const-string v0, "Latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 192
    const-string v0, "Longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    .line 197
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, LGs;->b:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 131
    return-void
.end method

.method public a(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 7

    .prologue
    .line 564
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080050

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    .line 567
    const/4 v4, 0x0

    .line 568
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 570
    :try_start_0
    iget-boolean v0, p1, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "PeekID"

    const-string v6, "0"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v0, "Name"

    iget-object v6, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    .line 582
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 583
    return-void

    .line 575
    :cond_0
    :try_start_1
    const-string v0, "PeekID"

    iget-object v6, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v0, "Name"

    iget-object v6, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/yik/yak/data/models/Yak;)V
    .locals 7

    .prologue
    .line 458
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 459
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    const/4 v4, 0x0

    .line 463
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 465
    :try_start_0
    const-string v0, "ContentID"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v0, "YakType"

    iget v6, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v6}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v0, "Basecamp"

    iget-boolean v6, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    .line 471
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 472
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 586
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 587
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080052

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 588
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 589
    const/4 v4, 0x0

    .line 590
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 592
    :try_start_0
    const-string v0, "YakType"

    iget v6, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v6}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    const-string v0, "ContentID"

    iget-object v6, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    const-string v0, "NumberOfComments"

    iget v6, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 595
    const-string v0, "Source"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    const-string v0, "Basecamp"

    iget-boolean v6, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    .line 600
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 601
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    iget-boolean v0, p0, LGs;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "googleAnalytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    invoke-static {v0}, LeS;->a(Landroid/content/Context;)LeS;

    move-result-object v0

    const-string v1, "&cd"

    invoke-virtual {v0, v1, p1}, LeS;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    invoke-static {v0}, LeS;->a(Landroid/content/Context;)LeS;

    move-result-object v0

    invoke-static {}, Lfw;->b()Lfw;

    move-result-object v1

    invoke-virtual {v1}, Lfw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, LeS;->send(Ljava/util/Map;)V

    .line 216
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;IZ)V
    .locals 6

    .prologue
    .line 492
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080044

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    const/4 v4, 0x0

    .line 496
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 498
    :try_start_0
    const-string v0, "YakType"

    invoke-static {p3}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v0, "NumberOfVotes"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v0, "Channel"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v0, "IsFamous"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 502
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v3, p1

    .line 506
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 507
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 510
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080044

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    const/4 v4, 0x0

    .line 514
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 516
    :try_start_0
    const-string v0, "YakType"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v0, "NumberOfVotes"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v0, "Channel"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v0, "FamousAvatar"

    invoke-virtual {v5, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v0, "IsFamous"

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 521
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v3, p1

    .line 525
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 526
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    .line 185
    invoke-static {v0}, Lcom/amplitude/api/Amplitude;->setUserProperties(Lorg/json/JSONObject;)V

    .line 186
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080042

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 328
    :try_start_0
    const-string v0, "YakType"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v0, "Source"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 335
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 336
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 604
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080051

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 607
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 609
    :try_start_0
    const-string v0, "Source"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 614
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 615
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, LGs;->g:Z

    .line 111
    return-void
.end method

.method public b()LeS;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    invoke-static {v0}, LeS;->a(Landroid/content/Context;)LeS;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-direct {p0, v0, v1, v2, v2}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    return-void
.end method

.method public b(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 7

    .prologue
    .line 632
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08003c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 634
    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    .line 635
    const/4 v4, 0x0

    .line 636
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 638
    :try_start_0
    iget-boolean v0, p1, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "PeekID"

    const-string v6, "0"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string v0, "Name"

    iget-object v6, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    .line 649
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 650
    return-void

    .line 643
    :cond_0
    :try_start_1
    const-string v0, "PeekID"

    iget-object v6, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v0, "Name"

    iget-object v6, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/yik/yak/data/models/Yak;)V
    .locals 7

    .prologue
    .line 475
    iget-object v3, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 476
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08003a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    const/4 v4, 0x0

    .line 480
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 482
    :try_start_0
    const-string v0, "YakType"

    iget v6, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v6}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v0, "ContentID"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string v0, "Basecamp"

    iget-boolean v6, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    .line 488
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 489
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 221
    const-string v0, "Backgrounded"

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, LzQ;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 222
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

    .line 243
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LGs;->e:J

    .line 231
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 237
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v0, "Source"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 725
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080049

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 729
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 731
    :try_start_0
    const-string v0, "URL"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 736
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 737
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 168
    const-string v0, "pushNotificationsEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LGs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, LGs;->b:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, LGs;->t()V

    .line 126
    :cond_0
    iget-object v0, p0, LGs;->b:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 270
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, "setAmplitudeID"

    .line 274
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 276
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v0, "eventKey"

    const-string v4, "amplitudeID"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v0, "eventValue"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 284
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 740
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 741
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080055

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 744
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 746
    :try_start_0
    const-string v0, "Segment"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 751
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 752
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "SelectedBasecamp"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LGs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, LGs;->s()V

    .line 135
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 302
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080020

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, LAq;->a()LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->b()Ljava/lang/String;

    move-result-object p1

    .line 309
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 311
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v0, "eventKey"

    const-string v4, "url"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
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

    .line 317
    :goto_0
    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 318
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 287
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    if-eqz p1, :cond_0

    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080022

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 294
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_1
    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 299
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080021

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public e()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 374
    :try_start_0
    const-string v0, "Type"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 379
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 380
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080038

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 436
    :try_start_0
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 440
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 441
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080034

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 390
    :try_start_0
    const-string v0, "Tab"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 395
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 396
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 711
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 712
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080046

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 717
    :try_start_0
    const-string v0, "Basecamp"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 721
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 722
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public g()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 247
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 248
    iget-wide v4, p0, LGs;->e:J

    sub-long v4, v0, v4

    .line 249
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    .line 251
    const-string v2, "Backgrounded"

    invoke-static {v2, v0, v1}, LzQ;->b(Ljava/lang/String;J)V

    .line 255
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 261
    :try_start_0
    const-string v0, "eventType"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "Duration"

    invoke-virtual {v5, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    move v8, v7

    move v9, v6

    .line 266
    invoke-direct/range {v0 .. v9}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;ZZZZ)V

    .line 267
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 406
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 407
    return-void
.end method

.method public h()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08002b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, p0

    move-object v4, v3

    .line 344
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 345
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 444
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    const/4 v4, 0x0

    .line 448
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 450
    :try_start_0
    const-string v0, "Category"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v3, p1

    .line 454
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 455
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 401
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 402
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080045

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 532
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 534
    :try_start_0
    const-string v0, "Provider"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v4, v3

    .line 538
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 539
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public j()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 410
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 412
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 413
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 550
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080048

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    const/4 v4, 0x0

    .line 554
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 556
    :try_start_0
    const-string v0, "Tab"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v3, p1

    .line 560
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 561
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public k()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 418
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 419
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 618
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080040

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 621
    const/4 v4, 0x0

    .line 622
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 624
    :try_start_0
    const-string v0, "Query"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v3, p1

    .line 628
    invoke-direct/range {v0 .. v5}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 629
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-direct {p0, v0, v1, v3, v3}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    return-void
.end method

.method public m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-direct {p0, v0, v1, v3, v3}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 684
    return-void
.end method

.method public n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-direct {p0, v0, v1, v3, v3}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    return-void
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 695
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-direct {p0, v0, v1, v3, v3}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    return-void
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 703
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-direct {p0, v0, v1, v3, v3}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 708
    return-void
.end method

.method public q()V
    .locals 4

    .prologue
    .line 755
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 756
    invoke-static {}, LAq;->a()LAq;

    move-result-object v1

    .line 759
    :try_start_0
    const-string v2, "eventType"

    const-string v3, "CheckPinning"

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v2, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v2, "lat"

    invoke-virtual {v1}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v2, "long"

    invoke-virtual {v1}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-static {}, LAw;->a()LAw;

    move-result-object v2

    invoke-virtual {v2}, LAw;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logEvent"

    invoke-virtual {v1}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, LzY;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    .line 770
    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {v2}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v2

    const-string v3, "RequestBody:body"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 773
    new-instance v2, Lxv;

    invoke-direct {v2}, Lxv;-><init>()V

    invoke-virtual {v2, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 778
    invoke-static {}, LzY;->a()Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 779
    new-instance v1, LGu;

    invoke-direct {v1, p0}, LGu;-><init>(LGs;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public r()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 987
    const-string v0, "Analytics"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Link Mixpanel and Amplitude Ids"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-static {v1}, Lcom/amplitude/api/Amplitude;->setUserId(Ljava/lang/String;)V

    .line 991
    const-string v0, "mxID"

    invoke-static {v0, v3}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 995
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 998
    :try_start_0
    invoke-virtual {p0}, LGs;->c()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v3

    .line 999
    const-string v4, "api_key"

    iget-boolean v0, p0, LGs;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v5, 0x7f080018

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :try_start_1
    const-string v4, "device_id"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1014
    :try_start_2
    const-string v1, "identification"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    invoke-static {v2}, LzY;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v1

    invoke-static {v1, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 1024
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    iget-object v1, p0, LGs;->d:Landroid/content/Context;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 1029
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 1030
    new-instance v1, LGw;

    invoke-direct {v1, p0}, LGw;-><init>(LGs;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 999
    :cond_1
    iget-object v0, p0, LGs;->d:Landroid/content/Context;

    const v5, 0x7f08001a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1009
    :catch_1
    move-exception v0

    .line 1010
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
