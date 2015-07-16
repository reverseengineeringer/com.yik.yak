.class LuK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LsK;


# direct methods
.method public constructor <init>(LsK;)V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, LuK;->a:LsK;

    .line 1018
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1021
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1025
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1028
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1029
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1030
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1032
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1033
    const-string v5, "$experiment_id"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1034
    const-string v5, "$variant_id"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1035
    iget-object v5, p0, LuK;->a:LsK;

    const-string v6, "$experiment_started"

    invoke-virtual {v5, v6, v4}, LsK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1037
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    const-string v1, "MixpanelAPI.ViewCrawler"

    const-string v3, "Could not build JSON for reporting experiment start"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    :cond_1
    iget-object v0, p0, LuK;->a:LsK;

    invoke-virtual {v0}, LsK;->c()LsP;

    move-result-object v0

    const-string v1, "$experiments"

    invoke-interface {v0, v1, v2}, LsP;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1044
    iget-object v0, p0, LuK;->a:LsK;

    new-instance v1, LuL;

    invoke-direct {v1, p0, v2}, LuL;-><init>(LuK;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, LsK;->a(Lti;)V

    goto :goto_0
.end method
