.class Lcom/parse/ParseUser$4;
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
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
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
    .line 682
    iget-object v0, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 684
    iget-object v0, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LN;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)LN;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 685
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
    .line 679
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$4;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
