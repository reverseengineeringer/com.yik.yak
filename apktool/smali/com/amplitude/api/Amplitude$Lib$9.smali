.class Lcom/amplitude/api/Amplitude$Lib$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;

.field final synthetic val$events:Lorg/json/JSONArray;

.field final synthetic val$maxId:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;Lorg/json/JSONArray;J)V
    .locals 1

    .prologue
    .line 588
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$9;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iput-object p2, p0, Lcom/amplitude/api/Amplitude$Lib$9;->val$events:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/amplitude/api/Amplitude$Lib$9;->val$maxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 591
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$9;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    const-string v1, "https://api.amplitude.com/"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib$9;->val$events:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/amplitude/api/Amplitude$Lib$9;->val$maxId:J

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->makeEventUploadPostRequest(Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/amplitude/api/Amplitude$Lib;->access$2700(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Ljava/lang/String;J)V

    .line 593
    return-void
.end method
