.class Lcom/parse/ParseUser$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/parse/ParseUser$27;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$27;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$27;->val$authData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/parse/ParseUser$27;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$27;->val$authType:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$27;->val$authData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;LR;)LR;
    invoke-static {v0, v1, v2, p1}, Lcom/parse/ParseUser;->access$1500(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1502
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$27;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
