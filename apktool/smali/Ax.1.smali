.class LAx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAe;


# instance fields
.field final synthetic a:LAw;


# direct methods
.method constructor <init>(LAw;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, LAx;->a:LAw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, LAx;->a:LAw;

    invoke-static {v0}, LAw;->b(LAw;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-static {v0}, LAw;->c(LAw;)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, LAw;->a(Lorg/json/JSONObject;Z)V

    .line 174
    :cond_0
    iget-object v0, p0, LAx;->a:LAw;

    invoke-static {v0, v2}, LAw;->a(LAw;Z)Z

    .line 176
    iget-object v0, p0, LAx;->a:LAw;

    invoke-static {v0}, LAw;->a(LAw;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAy;

    .line 177
    invoke-interface {v0}, LAy;->b()V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, LAx;->a:LAw;

    invoke-static {v0}, LAw;->a(LAw;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    return-void
.end method

.method public a(Lxz;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 142
    check-cast p2, Lorg/json/JSONObject;

    .line 144
    const-string v0, "configuration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LAw;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_1
    iget-object v0, p0, LAx;->a:LAw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAw;->a(LAw;Z)Z

    .line 157
    iget-object v0, p0, LAx;->a:LAw;

    invoke-static {v0}, LAw;->a(LAw;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAy;

    .line 158
    invoke-interface {v0}, LAy;->a()V

    goto :goto_2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, LAx;->a:LAw;

    invoke-static {v0}, LAw;->a(LAw;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
