.class Lcom/amplitude/api/Amplitude$Lib$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;

.field final synthetic val$apiProperties:Lorg/json/JSONObject;

.field final synthetic val$checkSession:Z

.field final synthetic val$eventProperties:Lorg/json/JSONObject;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$2;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iput-object p2, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$eventProperties:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$apiProperties:Lorg/json/JSONObject;

    iput-wide p5, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$timestamp:J

    iput-boolean p7, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$checkSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$2;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$eventType:Ljava/lang/String;

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$eventProperties:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$apiProperties:Lorg/json/JSONObject;

    iget-wide v4, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$timestamp:J

    iget-boolean v6, p0, Lcom/amplitude/api/Amplitude$Lib$2;->val$checkSession:Z

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    invoke-static/range {v0 .. v6}, Lcom/amplitude/api/Amplitude$Lib;->access$1300(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    .line 207
    return-void
.end method
