.class Lcom/parse/ParseUser$19$1;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$19;

.field final synthetic val$commandResult:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$19;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/parse/ParseUser$19$1;->this$1:Lcom/parse/ParseUser$19;

    iput-object p2, p0, Lcom/parse/ParseUser$19$1;->val$commandResult:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1396
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$19$1;->then(LR;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/parse/ParseUser$19$1;->val$commandResult:Lorg/json/JSONObject;

    return-object v0
.end method
