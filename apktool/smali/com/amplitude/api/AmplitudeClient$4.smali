.class Lcom/amplitude/api/AmplitudeClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;J)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-wide p2, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 465
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 467
    :try_start_0
    const-string v0, "special"

    const-string v1, "session_end"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->sessionOpen:Z
    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$1600(Lcom/amplitude/api/AmplitudeClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const-string v1, "session_end"

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$timestamp:J

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    move-result-wide v0

    .line 474
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, v2, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v3}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 476
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.amplitude.api.previousEndSessionId"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.previousEndSessionTime"

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$timestamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # invokes: Lcom/amplitude/api/AmplitudeClient;->closeSession()V
    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$1700(Lcom/amplitude/api/AmplitudeClient;)V

    .line 482
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
