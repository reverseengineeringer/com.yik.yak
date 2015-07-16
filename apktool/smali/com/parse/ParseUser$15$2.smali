.class Lcom/parse/ParseUser$15$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Void;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$15;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$15;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->stripAnonymity()V
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1200(Lcom/parse/ParseUser;)V

    .line 1307
    iget-object v0, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$700(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v2, v2, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v3, v3, Lcom/parse/ParseUser$15;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1308
    iget-object v0, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v2, v2, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lcom/parse/ParseUser$15$2;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->resolveLazinessAsync(LN;)LN;
    invoke-static {v0, p1}, Lcom/parse/ParseUser;->access$1300(Lcom/parse/ParseUser;LN;)LN;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$15$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
