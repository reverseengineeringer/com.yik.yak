.class Lup;
.super Lrt;
.source "SourceFile"


# instance fields
.field final synthetic c:Lum;


# direct methods
.method public constructor <init>(Lum;Ljava/net/URI;ILjava/net/Socket;)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lup;->c:Lum;

    .line 69
    new-instance v0, LrB;

    invoke-direct {v0}, LrB;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p3}, Lrt;-><init>(Ljava/net/URI;Lrw;Ljava/util/Map;I)V

    .line 70
    invoke-virtual {p0, p4}, Lup;->a(Ljava/net/Socket;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket closed. Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nURI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lup;->c:Lum;

    invoke-static {v1}, Lum;->b(Lum;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    :cond_0
    iget-object v0, p0, Lup;->c:Lum;

    invoke-static {v0}, Lum;->a(Lum;)Luo;

    move-result-object v0

    invoke-interface {v0}, Luo;->b()V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Websocket Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 82
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message from editor:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "device_info_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    iget-object v0, p0, Lup;->c:Lum;

    invoke-static {v0}, Lum;->a(Lum;)Luo;

    move-result-object v0

    invoke-interface {v0}, Luo;->a()V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    const-string v2, "snapshot_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    iget-object v1, p0, Lup;->c:Lum;

    invoke-static {v1}, Lum;->a(Lum;)Luo;

    move-result-object v1

    invoke-interface {v1, v0}, Luo;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad JSON received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_3
    :try_start_1
    const-string v2, "change_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    iget-object v1, p0, Lup;->c:Lum;

    invoke-static {v1}, Lum;->a(Lum;)Luo;

    move-result-object v1

    invoke-interface {v1, v0}, Luo;->b(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 94
    :cond_4
    const-string v2, "event_binding_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    iget-object v1, p0, Lup;->c:Lum;

    invoke-static {v1}, Lum;->a(Lum;)Luo;

    move-result-object v1

    invoke-interface {v1, v0}, Luo;->d(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 96
    :cond_5
    const-string v2, "clear_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    iget-object v1, p0, Lup;->c:Lum;

    invoke-static {v1}, Lum;->a(Lum;)Luo;

    move-result-object v1

    invoke-interface {v1, v0}, Luo;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 98
    :cond_6
    const-string v2, "tweak_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lup;->c:Lum;

    invoke-static {v1}, Lum;->a(Lum;)Luo;

    move-result-object v1

    invoke-interface {v1, v0}, Luo;->e(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(LrY;)V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, LsG;->a:Z

    .line 76
    return-void
.end method
