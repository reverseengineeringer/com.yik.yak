.class Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;
.super Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field verifiedObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    const-string v1, "fields"

    const-string v2, "og_object.fields(id)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v1, Lcom/facebook/Request;

    # getter for: Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$2700(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/Session;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v1}, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->setRequest(Lcom/facebook/Request;)V

    .line 1116
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1122
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "og_object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1129
    :goto_0
    return-void

    .line 1125
    :cond_0
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting the FB id for object \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected processSuccess(Lcom/facebook/Response;)V
    .locals 2

    .prologue
    .line 1133
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_0

    .line 1136
    const-string v1, "og_object"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_0

    .line 1138
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    .line 1141
    :cond_0
    return-void
.end method
