.class Lcom/amplitude/api/Amplitude$Lib$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;J)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$6;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iput-wide p2, p0, Lcom/amplitude/api/Amplitude$Lib$6;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 464
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 466
    :try_start_0
    const-string v0, "special"

    const-string v1, "session_end"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$6;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->sessionOpen:Z
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$2300(Lcom/amplitude/api/Amplitude$Lib;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$6;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    const-string v1, "session_end"

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/amplitude/api/Amplitude$Lib$6;->val$timestamp:J

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    invoke-static/range {v0 .. v6}, Lcom/amplitude/api/Amplitude$Lib;->access$1300(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    move-result-wide v0

    .line 473
    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib$6;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/amplitude/api/Amplitude$Lib;->access$1900(Lcom/amplitude/api/Amplitude$Lib;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amplitude/api/Amplitude$Lib$6;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;
    invoke-static {v3}, Lcom/amplitude/api/Amplitude$Lib;->access$2400(Lcom/amplitude/api/Amplitude$Lib;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 475
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_ID:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_TIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib$6;->val$timestamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$6;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->closeSession()V
    invoke-static {v0}, Lcom/amplitude/api/Amplitude$Lib;->access$2500(Lcom/amplitude/api/Amplitude$Lib;)V

    .line 481
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
