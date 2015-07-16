.class Lcom/parse/ParseObject$12$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$12;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$12;)V
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/parse/ParseObject$12$1;->this$1:Lcom/parse/ParseObject$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1372
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$12$1;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/parse/ParseObject$12$1;->this$1:Lcom/parse/ParseObject$12;

    iget-object v0, v0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    const/4 v1, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v1}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ACL has an unresolved ParseUser. Save or sign up before attempting to serialize the ACL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
