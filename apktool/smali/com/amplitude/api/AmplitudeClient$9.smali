.class Lcom/amplitude/api/AmplitudeClient$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$events:Lorg/json/JSONArray;

.field final synthetic val$maxId:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Lorg/json/JSONArray;J)V
    .locals 1

    .prologue
    .line 619
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$9;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$events:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$maxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 622
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->this$0:Lcom/amplitude/api/AmplitudeClient;

    new-instance v1, Lxy;

    invoke-direct {v1}, Lxy;-><init>()V

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$events:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$maxId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amplitude/api/AmplitudeClient;->makeEventUploadPostRequest(Lxy;Ljava/lang/String;J)V

    .line 623
    return-void
.end method
