.class final LAG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, LAG;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {}, LAF;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, LAG;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "refresh_asset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, LAF;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, LAF;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
