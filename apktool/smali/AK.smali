.class LAK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAp;


# instance fields
.field final synthetic a:LAJ;


# direct methods
.method constructor <init>(LAJ;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, LAK;->a:LAJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, LAK;->a:LAJ;

    invoke-static {v0}, LAJ;->b(LAJ;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-static {v0}, LAJ;->c(LAJ;)Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, LAJ;->a(Lorg/json/JSONObject;Z)V

    .line 167
    :cond_0
    iget-object v0, p0, LAK;->a:LAJ;

    invoke-static {v0, v2}, LAJ;->a(LAJ;Z)Z

    .line 169
    iget-object v0, p0, LAK;->a:LAJ;

    invoke-static {v0}, LAJ;->a(LAJ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAL;

    .line 170
    invoke-interface {v0}, LAL;->b()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, LAK;->a:LAJ;

    invoke-static {v0}, LAJ;->a(LAJ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    return-void
.end method

.method public a(LxJ;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 135
    check-cast p2, Lorg/json/JSONObject;

    .line 137
    const-string v0, "configuration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "client-configuration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LAJ;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    iget-object v0, p0, LAK;->a:LAJ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAJ;->a(LAJ;Z)Z

    .line 150
    iget-object v0, p0, LAK;->a:LAJ;

    invoke-static {v0}, LAJ;->a(LAJ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAL;

    .line 151
    invoke-interface {v0}, LAL;->a()V

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v0, p0, LAK;->a:LAJ;

    invoke-static {v0}, LAJ;->a(LAJ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
